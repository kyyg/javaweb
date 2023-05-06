package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import conn.GetConn;


public class MemberDAO {

//싱글톤으로 선언된 DB연결 객체(GetConn)을 연결한다.
	GetConn getConn = GetConn.getInstance();
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	MemberVO vo = null;

	
	
	// 아이디 중복 체크 후 자료가 있으면 vo에 개인정보를 모두 담는다.
	public MemberVO getMemberMidCheck(String mid) {
		vo = new MemberVO();
		try {
			sql = "select * from member where mid= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setNickName(rs.getString("nickName"));
				vo.setName(rs.getString("name"));
				vo.setGender(rs.getString("gender"));
				vo.setBirthday(rs.getString("birthday"));
				vo.setTel(rs.getString("tel"));
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setHobby(rs.getString("homePage"));
				vo.setJob(rs.getString("job"));
				vo.setHobby(rs.getString("hobby"));
				vo.setPhoto(rs.getString("photo"));
				vo.setContent(rs.getString("content"));
				vo.setUserInfor(rs.getString("userInfor"));
//				vo.setUserDel(rs.getString("userDelete"));
				vo.setPoint(rs.getInt("point"));
				vo.setLevel(rs.getInt("level"));
				vo.setVisitCnt(rs.getInt("visitCnt"));
				vo.setStartDate(rs.getString("startDate"));
				vo.setLastDate(rs.getString("lastDate"));
				vo.setTodayCnt(compareDate(vo.getLastDate(), vo.getTodayCnt()));
			}
		} catch (SQLException e) {
			System.out.println("SQL 에러" + e.getMessage());
		}finally {
			getConn.rsClose();
		}
		
		return vo;
	}
	
	
	
// 로그인 체크
	public MemberVO getLoginCheck(String mid, String pwd) {
		vo = new MemberVO();
		try {
			sql = "select * from member where mid=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setNickName(rs.getString("nickName"));
				vo.setName(rs.getString("name"));
				vo.setGender(rs.getString("gender"));
				vo.setBirthday(rs.getString("birthday"));
				vo.setTel(rs.getString("tel"));
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setHobby(rs.getString("homePage"));
				vo.setJob(rs.getString("job"));
				vo.setHobby(rs.getString("hobby"));
				vo.setPhoto(rs.getString("photo"));
				vo.setContent(rs.getString("content"));
				vo.setUserInfor(rs.getString("userInfor"));
//				vo.setUserDel(rs.getString("userDelete"));
				vo.setPoint(rs.getInt("point"));
				vo.setLevel(rs.getInt("level"));
				vo.setVisitCnt(rs.getInt("visitCnt"));
				vo.setStartDate(rs.getString("startDate"));
				vo.setLastDate(rs.getString("lastDate"));
				vo.setTodayCnt(compareDate(vo.getLastDate(), vo.getTodayCnt()));
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vo;
	}
	
	// 날짜비교처리 메소드
	private int compareDate(String lastDate, int todayCnt) {
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strToday = sdf.format(today);
		//String lastDate = vo.getLastDate();
		if(!strToday.equals(lastDate.substring(0,10))) todayCnt = 0;
		
		return todayCnt;
	}


	// 포인트 증가
	public void setPointPlus(String mid, int point, int todayCnt) {
		try {
			sql = "update member set point=?, todayCnt=?, lastDate=now() where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, point);
			pstmt.setInt(2, todayCnt);
			pstmt.setString(3, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
	}


	// 회원가입
	public int setMemberJoin(MemberVO vo) {
	  int res = 0;
    try {
      sql = "insert into member values (default,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,default,default,default,default,default,default,default)";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, vo.getMid());
      pstmt.setString(2, vo.getPwd());
      pstmt.setString(3, vo.getNickName());
      pstmt.setString(4, vo.getName());
      pstmt.setString(5, vo.getGender());
      pstmt.setString(6, vo.getBirthday());
      pstmt.setString(7, vo.getTel());
      pstmt.setString(8, vo.getAddress());
      pstmt.setString(9, vo.getEmail());
      pstmt.setString(10, vo.getHomePage());
      pstmt.setString(11, vo.getJob());
      pstmt.setString(12, vo.getHobby());
      pstmt.setString(13, vo.getPhoto());
      pstmt.setString(14, vo.getContent());
      pstmt.setString(15, vo.getUserInfor());
      pstmt.executeUpdate();
      res = 1;
    
    } catch (SQLException e) {
        System.out.println("SQL 에러 : " + e.getMessage());
    } finally {
        getConn.pstmtClose();
    }
    return res;
	}


	// 비밀번호 찾기
	public MemberVO getFindPwd(String mid, String name) {
		vo = new MemberVO();
		try {
		sql="select * from member where mid=? and name=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mid);
		pstmt.setString(2, name);
		rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vo;
	}


	// 아이디 찾기
	public MemberVO getFindId(String name) {
			vo = new MemberVO();
			try {
			sql="select * from member where name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
				if(rs.next()) {
					vo.setMid(rs.getString("mid"));
					vo.setName(rs.getString("name"));
				}
			} catch (SQLException e) {
				System.out.println("SQL 오류 : " + e.getMessage());
			} finally {
				getConn.rsClose();
			}
			return vo;
	}


	// 총 레코드 건수 구하기
	public int getTotRecCnt() {
		int totRecCnt = 0;
		try {
			sql = "select count(idx) as cnt from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			totRecCnt = rs.getInt("cnt");
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return totRecCnt;
	}

	// 닉네임 중복체크
	 public int getMemberNickCheck(String nickName) {
    int res = 1;
    try {
        sql = "select * from member where nickName = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, nickName);
        rs = pstmt.executeQuery();
        if(rs.next()) res = 0;
        
    } catch (SQLException e) {
        System.out.println("SQL 에러 : " + e.getMessage());
    } finally {
        getConn.rsClose();
    }
    return res;
}


	// 전체회원조회
	public ArrayList<MemberVO> getLoginList(int startIndexNo, int pageSize) {
		ArrayList<MemberVO> vos = new ArrayList<>();
		try {
			sql = "select * from member order by idx desc limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startIndexNo);
			pstmt.setInt(2, pageSize);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new MemberVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setNickName(rs.getString("nickName"));
				vo.setName(rs.getString("name"));
				vo.setGender(rs.getString("gender"));
				vo.setBirthday(rs.getString("birthday"));
				vo.setTel(rs.getString("tel"));
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setHobby(rs.getString("homePage"));
				vo.setJob(rs.getString("job"));
				vo.setHobby(rs.getString("hobby"));
				vo.setPhoto(rs.getString("photo"));
				vo.setContent(rs.getString("content"));
				vo.setUserInfor(rs.getString("userInfor"));
//				vo.setUserDel(rs.getString("userDelete"));
				vo.setPoint(rs.getInt("point"));
				vo.setLevel(rs.getInt("level"));
				vo.setVisitCnt(rs.getInt("visitCnt"));
				vo.setStartDate(rs.getString("startDate"));
				vo.setLastDate(rs.getString("lastDate"));
				vo.setTodayCnt(compareDate(vo.getLastDate(), vo.getTodayCnt()));
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}	
		return vos;
	}




	

	
}
