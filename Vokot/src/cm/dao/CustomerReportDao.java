package cm.dao;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.general.DefaultPieDataset;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Header;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.DefaultFontMapper;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfTemplate;
import com.itextpdf.text.pdf.PdfWriter;

import cm.util.Database;
import cm.util.DbConnection;

public class CustomerReportDao {

	public boolean GenerateReport(String file_name) {

		try {

			Document doc = new Document();
			PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream(file_name));
			doc.open();

			Database db = new Database();
			db.loadDriver(db.dbDriver);
			String sql = "select * from customers ";

			PreparedStatement ps;
			ResultSet rs;

			writer.setPageEvent(new MyFooter());

			PdfPTable table2 = new PdfPTable(2);
			table2.setWidths(new int[] { 2, 5 });
			Font ffont2 = new Font(Font.FontFamily.UNDEFINED, 12, Font.BOLD);
			PdfPCell c2 = new PdfPCell(new Phrase("Title  :", ffont2));
			table2.addCell(c2);
			c2 = new PdfPCell(new Phrase("Customer contact details "));
			table2.addCell(c2);

			Connection con = DbConnection.getConnection();
			Statement st = con.createStatement();
			String query = "SELECT COUNT(*) AS total FROM  customers";
			ResultSet resultSet = st.executeQuery(query);
			table2.setHeaderRows(1);
			while (resultSet.next()) {
				int num = resultSet.getInt("total");
				PdfPCell c3 = new PdfPCell(new Phrase("No of Customers :", ffont2));
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
			table.setWidths(new int[] { 2, 2, 3, 2, 1 });
			Font ffont = new Font(Font.FontFamily.UNDEFINED, 12, Font.BOLD);

			PdfPCell c1 = new PdfPCell(new Phrase("USER NAME", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("PHONE NO", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("EMAIL", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("CITY", ffont));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("AGE", ffont));
			table.addCell(c1);

			table.setHeaderRows(1);

			while (rs.next()) {

				table.addCell(rs.getString("Username"));
				table.addCell(rs.getString("Phone"));
				table.addCell(rs.getString("Email"));
				table.addCell(rs.getString("city"));
				table.addCell(rs.getString("Age"));

			}

			doc.add(table);

			doc.newPage();

			DefaultPieDataset<String> pieDataset = new DefaultPieDataset<String>();

			Connection con2 = DbConnection.getConnection();
			Statement st2 = con2.createStatement();

			Connection con3 = DbConnection.getConnection();
			Statement st3 = con3.createStatement();

			Connection con4 = DbConnection.getConnection();
			Statement st4 = con4.createStatement();
			
			PdfPTable table3 = new PdfPTable(2);
			table3.setWidths(new int[] { 5, 2 });
			PdfPCell c4 = new PdfPCell(new Phrase("Customers from colombo :", ffont2));
			table3.addCell(c4);
			

			String query2 ="SELECT COUNT(*) AS total FROM  customers where city LIKE 'Colombo' ";
			String query3 ="SELECT COUNT(*) AS total FROM  customers where city LIKE 'Jaffna' ";
			String query4 ="SELECT COUNT(*) AS total FROM  customers where city LIKE 'Batticalo' ";
			ResultSet resultSet2 = st2.executeQuery(query2);
			ResultSet resultSet3 = st3.executeQuery(query3);
			ResultSet resultSet4 = st4.executeQuery(query4);
			while (resultSet2.next() && resultSet3.next() && resultSet4.next()) {

				int num3 = resultSet2.getInt("total");
				pieDataset.setValue("Colombo", num3);
				table3.addCell(Integer.toString(num3));
				
				int num4 = resultSet3.getInt("total");
				pieDataset.setValue("Jaffna", num4);
				
				PdfPCell c5 = new PdfPCell(new Phrase("Customers from Jaffna :", ffont2));
				table3.addCell(c5);
				table3.addCell(Integer.toString(num4));
				
				int num5 = resultSet4.getInt("total");
				pieDataset.setValue("Batticalo", num5);
				
				PdfPCell c6 = new PdfPCell(new Phrase("Customers from Batticalo :", ffont2));
				table3.addCell(c6);
				table3.addCell(Integer.toString(num5));
				
			}
			doc.add(new Paragraph("  "));
			doc.add(new Paragraph("  "));
			doc.add(new Paragraph("  "));
			doc.add(table3);

			@SuppressWarnings("deprecation")
			JFreeChart chart = ChartFactory.createPieChart3D("Piechart", pieDataset, true, false, false);

			@SuppressWarnings("deprecation")
			final PiePlot3D plot = (PiePlot3D) chart.getPlot();
			plot.setNoDataMessage("No data to display");
			chart.setTitle(new TextTitle("Pie chart of customer cities"));

			PdfContentByte pdfContentByte = writer.getDirectContent();
			PdfTemplate pdfTemplateChartHolder = pdfContentByte.createTemplate(225, 225);
			Graphics2D graphicsChart = pdfTemplateChartHolder.createGraphics(225, 225, new DefaultFontMapper());
			Rectangle2D chartRegion = new Rectangle2D.Double(0, 0, 225, 225);
			chart.draw(graphicsChart, chartRegion);
			graphicsChart.dispose();
			Image chartImage = Image.getInstance(pdfTemplateChartHolder);
			chartImage.scaleToFit(PageSize.A4.getWidth() / 2, PageSize.A4.getHeight() / 2);
			float x = (PageSize.A4.getWidth() - chartImage.getScaledWidth()) / 2;
			float y = (PageSize.A4.getHeight() - chartImage.getScaledHeight()) / 2;
			chartImage.setAbsolutePosition(x, y);
			doc.add(chartImage);

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
		Font ffont = new Font(Font.FontFamily.UNDEFINED, 25, Font.ITALIC);
		Font ffont2 = new Font(Font.FontFamily.UNDEFINED, 10, Font.ITALIC);

		public void onEndPage(PdfWriter writer, Document document) {
			PdfContentByte cb = writer.getDirectContent();
			Phrase header = new Phrase(" Customer Data Sheet\n", ffont);

			Phrase footer = new Phrase("Vokot Garments (Pvt) Ltd", ffont2);
			ColumnText.showTextAligned(cb, Element.ALIGN_CENTER, header,
					(document.right() - document.left()) / 2 + document.leftMargin(), document.top() + 10, 0);
			ColumnText.showTextAligned(cb, Element.ALIGN_CENTER, footer,
					(document.right() - document.left()) / 2 + document.leftMargin(), document.bottom() - 10, 0);
		}
	}

}
