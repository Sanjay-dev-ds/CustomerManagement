package cm.dao;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.general.DefaultPieDataset;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.DefaultFontMapper;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfTemplate;
import com.itextpdf.text.pdf.PdfWriter;

import cm.dao.CustomerReportDao.MyFooter;
import cm.util.Database;
import cm.util.DbConnection;

public class FeedbackReportDao {

	public boolean GenerateReport(String file_name) {
		
		
		
		try {

			Document doc = new Document();
			PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream(file_name));
			doc.open();

			Database db = new Database();
			db.loadDriver(db.dbDriver);
			String sql = "select * from feedback ";

			PreparedStatement ps;
			ResultSet rs;

			writer.setPageEvent(new MyFooter());

			PdfPTable table2 = new PdfPTable(2);
			table2.setWidths(new int[] { 2, 5 });
			Font ffont2 = new Font(Font.FontFamily.UNDEFINED, 12, Font.BOLD);
			PdfPCell c2 = new PdfPCell(new Phrase("Title  :", ffont2));
			table2.addCell(c2);
			c2 = new PdfPCell(new Phrase("Customer feedback details "));
			table2.addCell(c2);

			Connection con = DbConnection.getConnection();
			Statement st = con.createStatement();
			String query = "SELECT COUNT(*) AS total FROM  feedback";
			ResultSet resultSet = st.executeQuery(query);
			table2.setHeaderRows(1);
			while (resultSet.next()) {
				int num = resultSet.getInt("total");
				PdfPCell c3 = new PdfPCell(new Phrase("No of feedbacks :", ffont2));
				table2.addCell(c3);
				table2.addCell(Integer.toString(num));

			}
			PdfPCell c3 = new PdfPCell(new Phrase("Report issued at :", ffont2));
			table2.addCell(c3);

			long millis = System.currentTimeMillis();
			java.util.Date date = new java.util.Date(millis);
			String Date = date.toLocaleString();
			table2.addCell(Date);

			con.close();
			doc.add(table2);

			doc.add(new Paragraph("  "));
			doc.add(new Paragraph("  "));
			doc.add(new Paragraph("  "));
			doc.add(new Paragraph("  "));
			doc.add(new Paragraph("  "));

			ps = db.getConnection().prepareStatement(sql);
			rs = ps.executeQuery();

			// creating table
			PdfPTable table = new PdfPTable(5);
			table.setWidths(new int[] { 2, 2, 4, 2, 2 });
			Font ffont = new Font(Font.FontFamily.UNDEFINED, 12, Font.BOLD);

			PdfPCell c1 = new PdfPCell(new Phrase("Username", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Category", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Description", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Rating", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Product", ffont));
			table.addCell(c1);

			table.setHeaderRows(1);

			while (rs.next()) {

				table.addCell(rs.getString("Username"));
				table.addCell(rs.getString("Category"));
				table.addCell(rs.getString("Description"));
				table.addCell(rs.getString("Rating"));
				table.addCell(rs.getString("Product"));

			}

			doc.add(table);
           doc.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return true;
		
		
	
		
		
		
	}
	class MyFooter extends PdfPageEventHelper {
		Font ffont = new Font(Font.FontFamily.UNDEFINED, 20, Font.ITALIC);
		Font ffont2 = new Font(Font.FontFamily.UNDEFINED, 10, Font.ITALIC);

		public void onEndPage(PdfWriter writer, Document document) {
			PdfContentByte cb = writer.getDirectContent();
			Phrase header = new Phrase(" Customer Feedback Data Sheet\n", ffont);

			Phrase footer = new Phrase("Vokot Garments (Pvt) Ltd", ffont2);
			ColumnText.showTextAligned(cb, Element.ALIGN_CENTER, header,
					(document.right() - document.left()) / 2 + document.leftMargin(), document.top() + 10, 0);
			ColumnText.showTextAligned(cb, Element.ALIGN_CENTER, footer,
					(document.right() - document.left()) / 2 + document.leftMargin(), document.bottom() - 10, 0);
		}
	}
}
