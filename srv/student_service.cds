using {  student as a } from '../db/Student_dtl';

service StudentService {
    entity StudentDetails as select from a.StudentDetails;
    entity CourseDetails as select from  a.CourseDetails;
    entity Grades as select from a.Grades;
        
    }



