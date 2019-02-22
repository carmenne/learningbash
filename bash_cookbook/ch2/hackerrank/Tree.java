import java.util.*;
class Info {
    int i=0;
    int j=0;
    int l=0;
    
    public Info(int i, int j, int l) {
        this.i=i;
        this.j=j;
        this.l=l;
    }
    
    int getI() {
        return i;
    }
    
    int getJ() {
        return j;
    }
    
    int getL() {
        return l;
    }
    
    @Override
    public String toString() {
        return i + "-" + j + "-" + l;
    }
    
}

public class Tree {
    
    public static final String ANSI_RESET = "\u001B[0m";
    public static final String ANSI_RED = "\u001B[31m";
    
    private static int createNode(int[][] matrix, Info info) {
        
        int left=info.getJ()-1;
        int right=info.getJ()+1;
        
        for (int k=1;k<=info.getL();k++) {
           
            matrix[info.getI()-k][info.getJ()]=1;
            matrix[info.getI()-info.getL()-k][left--]=1;
            matrix[info.getI()-info.getL()-k][right++]=1;

        }
        
        return info.getJ();

    }
    
    public static void create(int[][] matrix, Info info, int it, int N) {
        
        if (it < N) {
            int mid = createNode(matrix, info);
            System.out.println(mid);
            it++;
            Info left = new Info(info.getI()-2*info.getL(), 
                mid - info.getL(), info.getL() / 2);
            Info right = new Info(info.getI()-2*info.getL(), 
                mid + info.getL(), info.getL() / 2);
            create(matrix, left, it, N);
            create(matrix, right, it, N);
 
        }
    }
    
    public static void main(String[] args) {

        int[][] matrix = new int[63][100];        
        for (int i=0; i<63; i++) {
            for (int j=0; j<100; j++) {
                matrix[i][j]=0;
            }
        }
        
        Info info = new Info(63, 50, 16);
        int it=0;
        int N=3;
        create(matrix, info, it, N);

        for (int i=0; i<63; i++) {
            for (int j=0; j<100; j++) {
                if (matrix[i][j] == 1)
                    System.out.print(ANSI_RED + matrix[i][j] + ANSI_RESET);
                else
                    System.out.print(matrix[i][j]);
                
            }
            System.out.println();
        }
    
    }
}
