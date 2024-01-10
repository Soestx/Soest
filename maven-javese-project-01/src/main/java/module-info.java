module com.soest.top.mavenjaveseproject01 {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.soest.top.mavenjaveseproject01 to javafx.fxml;
    exports com.soest.top.mavenjaveseproject01;
}