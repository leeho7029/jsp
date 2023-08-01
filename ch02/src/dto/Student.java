package dto;

public class Student {
    private int No;
    private String Name;
    private int Kor;
    private int Eng;
    private int Mat;

    public int getNo() {
        return No;
    }

    public void setNo(int no) {
        No = no;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getKor() {
        return Kor;
    }

    public void setKor(int kor) {
        Kor = kor;
    }

    public int getEng() {
        return Eng;
    }

    public void setEng(int eng) {
        Eng = eng;
    }

    public int getMat() {
        return Mat;
    }

    public void setMat(int mat) {
        Mat = mat;
    }
}