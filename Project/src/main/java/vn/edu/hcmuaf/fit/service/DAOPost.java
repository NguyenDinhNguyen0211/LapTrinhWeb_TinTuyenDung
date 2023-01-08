package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Company;
import vn.edu.hcmuaf.fit.model.Post;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOPost {
    private String message = "error!";
   public String getListPost_applied(){
       String query = "select * from post_applied";
       List<PostApplied>listApplied = null;
       return getListPost_applied();
   }    

    public List<Post> getListPost() {
        String query = "select * from post";
        List<Post> listPost = null;
        try {
            listPost = JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery(query)
                        .mapToBean(Post.class)
                        .stream().collect(Collectors.toList());
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPost;
    }

    public String getCompanyName(String companyID) {
        String rs = null;
        String query = "select * from company where companyID = ?";
        List<Company> listCompany = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, companyID).mapToBean(Company.class).list());
        for (Company c : listCompany) {
            if (companyID.equals(c.getCompanyID())) {
                rs = c.getName();
            }
        }
        return rs;
    }

    //ngày hiện tại - ngày tạo
    public long dateToCreate(Date dateCreate) {
        Date date = new Date();
        DateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        long getDaysDiff = 0;
        try {
            long getDiff = date.getTime() - dateCreate.getTime();
            getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getDaysDiff;
    }

    //ngày kết thúc - ngày hiện tại
    public long dateToDeadline(Date deadline) {
        Date date = new Date();
        long getDaysDiff = 0;
        try {
            long getDiff = deadline.getTime() - date.getTime();
            getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getDaysDiff;
    }

    public static void main(String[] args) {
        DAOPost p = new DAOPost();
//        for (PostServlet post : p.getListPost()) {
        System.out.printf(p.getCompanyName("1").toString());
//        }
    }

}
