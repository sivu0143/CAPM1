namespace student;
using { managed } from '@sap/cds/common';

entity StudentDetails : managed{
  key Student_id : Int16;
   key name: String;  
  age: Int32;  
  address: String; 
  enrollment_date: DateTime;
  enrolled : Boolean;
  Status : String;
  /* courses : Composition of many CourseDetails
  on courses.student = $self */
  courses : Association to CourseDetails;
  grades : Association to Grades;


}
entity Grades {
  key grade_id : Int16;
  // student1: Association to StudentDetails;
  subject: String;  
  score: Int32;  
  semester: String;  
 /*  student: Association to StudentDetails; */
student1: Association to StudentDetails;
  
}

entity CourseDetails{
     key course_id : Int16;  
     course_name : localized String;  
    credits: Int32;  
    instructor: String;
    /* student: Association to StudentDetails; */
    student : Composition of many StudentDetails
    on student.courses = $self
    
}

 
