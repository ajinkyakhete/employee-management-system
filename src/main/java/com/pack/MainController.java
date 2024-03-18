/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author 91777
 */
@Controller
public class MainController {

    @RequestMapping("/welcomemain")
    public String welcomemain() {
        return "welcomemain";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("/signup")
    public String signup(Map<String, Object> ob1) {
        User userForm = new User();
        ob1.put("userForm", userForm);
        return "signup";
    }

    @RequestMapping("/login")
    public String login(Map<String, Object> ob1) {
        User userForm = new User();
        ob1.put("userForm", userForm);
        return "login";
    }

    @RequestMapping("/processformlogin")
    public String processloginform(@ModelAttribute("userForm") User user,
            Map<String, Object> model) {
        int flag = 0;
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            String username = user.getUsername();
            String password = user.getPassword();
            PreparedStatement stmt = con.prepareStatement("select * from users");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString(2) + " " + rs.getString(3));
                System.out.println(username + " " + password);
                if (username.equals(rs.getString(2)) && password.equals(rs.getString(3))) {
                    flag = 1;
                    break;
                }
            }
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        if (flag == 1) {
            return "welcome";
        } else {
            return "loginfailed";
        }
    }

    @RequestMapping(value = "/processformsignup")
    public String processsignupform(@ModelAttribute("userForm") User user,
            Map<String, Object> model) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int user_id = user.getUser_id();
            String username = user.getUsername();
            String password = user.getPassword();
            String email_id = user.getEmail_id();
            String usertype = user.getUsertype();
            System.out.println(user_id + " " + username + " " + password + " " + email_id + " " + usertype);
            PreparedStatement stmt = con.prepareStatement("insert into users values(?,?,?,?,?)");
            stmt.setInt(1, user_id);
            stmt.setString(2, username);
            stmt.setString(3, password);
            stmt.setString(4, email_id);
            stmt.setString(5, usertype);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "login";
    }

    @RequestMapping("/employeedetails")
    public String employeedetails(Map<String, Object> ob1) {
        Employee employeeForm = new Employee();
        ob1.put("employeeForm", employeeForm);

        List<String> employeeTitleList = new ArrayList<>();
        employeeTitleList.add("- Select Title -");
        employeeTitleList.add("Full Stack Developer");
        employeeTitleList.add("Designer");
        employeeTitleList.add("IT Manager");
        employeeTitleList.add("System Administrator");
        employeeTitleList.add("Project Manager");
        employeeTitleList.add("Software Engineer");
        employeeTitleList.add("Frontend Developer");
        employeeTitleList.add("Backend Developer");
        ob1.put("list1", employeeTitleList);

        List<String> employeeStateList = new ArrayList<>();
        employeeStateList.add("- Select State -");
        employeeStateList.add("Andhra Pradesh");
        employeeStateList.add("Arunachal Pradesh");
        employeeStateList.add("Assam");
        employeeStateList.add("Bihar");
        employeeStateList.add("Chhatisgarh");
        employeeStateList.add("Goa");
        employeeStateList.add("Gujrat");
        employeeStateList.add("Haryana");
        employeeStateList.add("Himachal Pradesh");
        employeeStateList.add("Jharkhand");
        employeeStateList.add("Karnataka");
        employeeStateList.add("Kerala");
        employeeStateList.add("Madhya Pradesh");
        employeeStateList.add("Maharashtra");
        employeeStateList.add("Manipur");
        employeeStateList.add("Meghalaya");
        employeeStateList.add("Mizoram");
        employeeStateList.add("Nagaland");
        employeeStateList.add("Odisha");
        employeeStateList.add("Punjab");
        employeeStateList.add("Rajasthan");
        employeeStateList.add("Sikkim");
        employeeStateList.add("Tamil Nadu");
        employeeStateList.add("Telangana");
        employeeStateList.add("Tripura");
        employeeStateList.add("Uttarakhand");
        employeeStateList.add("Uttar Pradesh");
        employeeStateList.add("West Bengal");
        ob1.put("list2", employeeStateList);

        return "employeedetails";
    }

    @RequestMapping(value = "/processformemployeedetails")
    public String processemployeedetailsform(@ModelAttribute("employeeForm") Employee employee,
            Map<String, Object> model) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int emp_id = employee.getEmp_id();
            String emp_title = employee.getEmp_title();
            String emp_name = employee.getEmp_name();
            String emp_dob = employee.getEmp_dob();
            String emp_doj = employee.getEmp_doj();
            String emp_address = employee.getEmp_address();
            String emp_city = employee.getEmp_city();
            String emp_state = employee.getEmp_state();
            String emp_pincode = employee.getEmp_pincode();
            String emp_mobile_no = employee.getEmp_mobile_no();
            String emp_mail_id = employee.getEmp_mail_id();
            String emp_pan_no = employee.getEmp_pan_no();
            PreparedStatement stmt = con.prepareStatement("insert into employee_master values(?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, emp_id);
            stmt.setString(2, emp_title);
            stmt.setString(3, emp_name);
            stmt.setString(4, emp_dob);
            stmt.setString(5, emp_doj);
            stmt.setString(6, emp_address);
            stmt.setString(7, emp_city);
            stmt.setString(8, emp_state);
            stmt.setString(9, emp_pincode);
            stmt.setString(10, emp_mobile_no);
            stmt.setString(11, emp_mail_id);
            stmt.setString(12, emp_pan_no);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "employeedetailssuccess";
    }

    @RequestMapping("/departmentdetails")
    public String departmentdetails(Map<String, Object> ob1) {
        Department departmentForm = new Department();
        ob1.put("departmentForm", departmentForm);
        return "departmentdetails";
    }

    @RequestMapping(value = "/processformdepartmentdetails")
    public String processdepartmentdetailsform(@ModelAttribute("departmentForm") Department department,
            Map<String, Object> model) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int dept_id = department.getDept_id();
            String dept_name = department.getDept_name();
            PreparedStatement stmt = con.prepareStatement("insert into dept_master values(?,?)");
            stmt.setInt(1, dept_id);
            stmt.setString(2, dept_name);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "departmentdetailssuccess";
    }

    @RequestMapping("/gradedetails")
    public String gradedetails(Map<String, Object> ob1) {
        Grade gradeForm = new Grade();
        ob1.put("gradeForm", gradeForm);
        return "gradedetails";
    }

    @RequestMapping(value = "/processformgradedetails")
    public String processgradedetailsform(@ModelAttribute("gradeForm") Grade grade,
            Map<String, Object> model) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int grade_id = grade.getGrade_id();
            String grade_name = grade.getGrade_name();
            String grade_short_name = grade.getGrade_short_name();
            int grade_basic = grade.getGrade_basic();
            int grade_ta = grade.getGrade_ta();
            int grade_da = grade.getGrade_da();
            int grade_hra = grade.getGrade_hra();
            int grade_ma = grade.getGrade_ma();
            int grade_bonus = grade.getGrade_bonus();
            int grade_pf = grade.getGrade_pf();
            int grade_pt = grade.getGrade_pt();

            PreparedStatement stmt = con.prepareStatement("insert into grade_master values(?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, grade_id);
            stmt.setString(2, grade_name);
            stmt.setString(3, grade_short_name);
            stmt.setInt(4, grade_basic);
            stmt.setInt(5, grade_ta);
            stmt.setInt(6, grade_da);
            stmt.setInt(7, grade_hra);
            stmt.setInt(8, grade_ma);
            stmt.setInt(9, grade_bonus);
            stmt.setInt(10, grade_pf);
            stmt.setInt(11, grade_pt);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "gradedetailssuccess";
    }

    @RequestMapping("/employeegradedetails")
    public String employeegradedetails(Map<String, Object> ob1) {
        EmployeeGrade employeeGradeForm = new EmployeeGrade();
        ob1.put("employeeGradeForm", employeeGradeForm);
        return "employeegradedetails";
    }

    @RequestMapping(value = "/processformemployeegradedetails")
    public String processemployeegradedetailsform(@ModelAttribute("employeeGradeForm") EmployeeGrade employeeGrade,
            Map<String, Object> model) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int transaction_id = employeeGrade.getTransaction_id();
            int emp_id = employeeGrade.getEmp_id();
            int emp_dept_id = employeeGrade.getEmp_dept_id();
            int emp_grade_id = employeeGrade.getEmp_grade_id();
            String emp_from_date = employeeGrade.getEmp_from_date();
            String emp_to_date = employeeGrade.getEmp_to_date();

            PreparedStatement stmt = con.prepareStatement("insert into emp_grade_details values(?,?,?,?,?,?)");
            stmt.setInt(1, transaction_id);
            stmt.setInt(2, emp_id);
            stmt.setInt(3, emp_dept_id);
            stmt.setInt(4, emp_grade_id);
            stmt.setString(5, emp_from_date);
            stmt.setString(6, emp_to_date);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "employeegradedetailssuccess";
    }

    @RequestMapping("/employeesalarydetails")
    public String employeesalarydetails(Map<String, Object> ob1) {
        EmployeeSalary employeeSalaryForm = new EmployeeSalary();
        ob1.put("employeeSalaryForm", employeeSalaryForm);

        List<String> employeeSalaryMonth = new ArrayList<>();
        employeeSalaryMonth.add("- Select Month -");
        employeeSalaryMonth.add("January");
        employeeSalaryMonth.add("February");
        employeeSalaryMonth.add("March");
        employeeSalaryMonth.add("April");
        employeeSalaryMonth.add("May");
        employeeSalaryMonth.add("June");
        employeeSalaryMonth.add("July");
        employeeSalaryMonth.add("August");
        employeeSalaryMonth.add("September");
        employeeSalaryMonth.add("October");
        employeeSalaryMonth.add("November");
        employeeSalaryMonth.add("December");
        ob1.put("list1", employeeSalaryMonth);

        return "employeesalarydetails";
    }

    @RequestMapping(value = "/processformemployeesalarydetails")
    public String processemployeesalarydetailsform(@ModelAttribute("employeeSalaryForm") EmployeeSalary employeeSalary,
            Map<String, Object> model) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int transaction_id = employeeSalary.getTransaction_id();
            int emp_id = employeeSalary.getEmp_id();
            String emp_salary_month = employeeSalary.getEmp_salary_month();
            String emp_salary_year = employeeSalary.getEmp_salary_year();
            String emp_salary_eimbursment_date = employeeSalary.getEmp_salary_eimbursment_date();
            int emp_dept_id = employeeSalary.getEmp_dept_id();
            int emp_grade_id = employeeSalary.getEmp_grade_id();
            int emp_basic = employeeSalary.getEmp_basic();
            int emp_da = employeeSalary.getEmp_da();
            int emp_ta = employeeSalary.getEmp_ta();
            int emp_hra = employeeSalary.getEmp_hra();
            int emp_ma = employeeSalary.getEmp_ma();
            int emp_bonus = employeeSalary.getEmp_bonus();
            int emp_pf = employeeSalary.getEmp_pf();
            int emp_pt = employeeSalary.getEmp_pt();
            int emp_gross = employeeSalary.getEmp_gross();
            int emp_total_salary = employeeSalary.getEmp_total_salary();

            PreparedStatement stmt = con.prepareStatement("insert into emp_salary_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, transaction_id);
            stmt.setInt(2, emp_id);
            stmt.setString(3, emp_salary_month);
            stmt.setString(4, emp_salary_year);
            stmt.setString(5, emp_salary_eimbursment_date);
            stmt.setInt(6, emp_dept_id);
            stmt.setInt(7, emp_grade_id);
            stmt.setInt(8, emp_basic);
            stmt.setInt(9, emp_da);
            stmt.setInt(10, emp_ta);
            stmt.setInt(11, emp_hra);
            stmt.setInt(12, emp_ma);
            stmt.setInt(13, emp_bonus);
            stmt.setInt(14, emp_pf);
            stmt.setInt(15, emp_pt);
            stmt.setInt(16, emp_gross);
            stmt.setInt(17, emp_total_salary);
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "employeesalarydetailssuccess";
    }

    @RequestMapping("/generatereport")
    public String generatereport(Map<String, Object> ob1) {
        Report report = new Report();
        ob1.put("report", report);
        return "generatereport";
    }

    @RequestMapping(value = "/processgeneratereport")
    public String processgeneratereport(@ModelAttribute("report") Report report,
            Map<String, Object> model, Model object1) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            int emp_id = report.getEmp_id();
            PreparedStatement stmt = con.prepareStatement("select * from employee_master where emp_id = ?");
            stmt.setInt(1, emp_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                object1.addAttribute("id", rs.getString("emp_id"));
                object1.addAttribute("title", rs.getString("emp_title"));
                object1.addAttribute("name", rs.getString("emp_name"));
                object1.addAttribute("dob", rs.getString("emp_dob"));
                object1.addAttribute("doj", rs.getString("emp_doj"));
                object1.addAttribute("address", rs.getString("emp_address"));
                object1.addAttribute("city", rs.getString("emp_city"));
                object1.addAttribute("state", rs.getString("emp_state"));
                object1.addAttribute("pincode", rs.getString("emp_pincode"));
                object1.addAttribute("mobile_no", rs.getString("emp_mobile_no"));
                object1.addAttribute("mail_id", rs.getString("emp_mail_id"));
                object1.addAttribute("pan_no", rs.getString("emp_pan_no"));
            }
        } 
        catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "generatereportsuccess";
    }

    @RequestMapping("/updateemployee")
    public String updateemployee(Map<String, Object> ob1) {
        return "updateemployee";
    }

    @RequestMapping("/processupdateemployee")
    public String Handleformm(@RequestParam("selectupdate") String selectupdate, Model object1) {
        if ("Title".equals(selectupdate)) {
            return "updatetitle";
        }
        if ("Name".equals(selectupdate)) {
            return "updatename";
        }
        if ("DOB".equals(selectupdate)) {
            return "updatedob";
        }
        if ("DOJ".equals(selectupdate)) {
            return "updatedoj";
        }
        if ("Address".equals(selectupdate)) {
            return "updateaddress";
        }
        if ("City".equals(selectupdate)) {
            return "updatecity";
        }
        if ("State".equals(selectupdate)) {
            return "updatestate";
        }
        if ("Pincode".equals(selectupdate)) {
            return "updatepincode";
        }
        if ("Mobile No.".equals(selectupdate)) {
            return "updatemobileno";
        }
        if ("Mail ID".equals(selectupdate)) {
            return "updatemailid";
        }
        if ("Pan No.".equals(selectupdate)) {
            return "updatepanno";
        }
        return "noupdate";
    }

    @RequestMapping("/processupdatetitle")
    public String processupdatetitle(@RequestParam("emp_id") String emp_id,
            @RequestParam("selecttitle") String selecttitle, Model object1) {
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_title=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, selecttitle);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatename")
    public String processupdatename(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_name") String emp_name, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_name=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_name);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatedob")
    public String processupdatedob(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_dob") String emp_dob, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_dob=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_dob);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatedoj")
    public String processupdatedoj(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_doj") String emp_doj, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_doj=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_doj);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdateaddress")
    public String processupdateaddress(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_address") String emp_address, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_address=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_address);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatecity")
    public String processupdatecity(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_city") String emp_city, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_city=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_city);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatestate")
    public String processupdatestate(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_state") String emp_state, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_state=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_state);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatepincode")
    public String processupdatepincode(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_pincode") String emp_pincode, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_pincode=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_pincode);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatemobileno")
    public String processupdatemobileno(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_mobile_no") String emp_mobile_no, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_mobile_no=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_mobile_no);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatemailid")
    public String processupdatemailid(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_mail_id") String emp_mail_id, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_mail_id=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_mail_id);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/processupdatepanno")
    public String processupdatepanno(@RequestParam("emp_id") String emp_id,
            @RequestParam("emp_pan_no") String emp_pan_no, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("update employee_master set emp_pan_no=? where emp_id=?");
            stmt.setInt(2, Integer.parseInt(emp_id));
            stmt.setString(1, emp_pan_no);

            stmt.executeUpdate(); //it is used for all insert , update ,delete 
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "updatesuccess";
    }

    @RequestMapping("/deleteemployee")
    public String deleteemployee(Map<String, Object> ob1) {
        return "deleteemployee";
    }

    @RequestMapping("/processdeleteemployee")
    public String processdeleteemployee(@RequestParam("emp_id") String emp_id, Model object1) {

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("delete from employee_master where emp_id=?");
            stmt.setInt(1, Integer.parseInt(emp_id));

            stmt.executeUpdate();
        } catch (ClassNotFoundException | NumberFormatException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "deletesuccess";
    }

    @RequestMapping("/displayemployee")
    public String displayemployee(Map<String, Object> ob1, Model object1) {
        try {
            List<Records> list = new ArrayList();
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("select * from employee_master");

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Records rec = new Records(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                         rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                         rs.getString(11), rs.getString(12));
                list.add(rec);
                object1.addAttribute("list", list);
            }
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }

        return "displayemployee";
    }
    @RequestMapping("/searchemployeebyname")
    public String searchemployeebyname(@RequestParam("searchName") String searchName,Map<String, Object> ob1, Model object1) {
        try {
            List<Records> list = new ArrayList();
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement stmt = con.prepareStatement("select * from employee_master where emp_name=?");
            stmt.setString(1, searchName);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Records rec = new Records(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                         rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10),
                         rs.getString(11), rs.getString(12));
                list.add(rec);
                object1.addAttribute("list", list);
            }
        } catch (ClassNotFoundException | SQLException k) {
            System.out.println(k.getMessage());
        }
        return "displayemployee";
    }
}
