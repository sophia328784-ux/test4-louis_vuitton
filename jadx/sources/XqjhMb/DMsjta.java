package XqjhMb;

/* JADX INFO: loaded from: classes.dex */
public class DMsjta {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f83a = 0;

    static {
        CZqWkm.a("\u0014_i^L\u0015");
        CZqWkm.a("\u0019\u001f.T");
        CZqWkm.a("\u0014TqBTE\u0007");
    }

    public static long a(long j2) {
        if (j2 == 0) {
            return 0L;
        }
        long j3 = j2 | (j2 >>> 1);
        long j4 = j3 | (j3 >>> 2);
        long j5 = j4 | (j4 >>> 4);
        long j6 = j5 | (j5 >>> 8);
        long j7 = j6 | (j6 >>> 16);
        return j7 - (j7 >>> 1);
    }

    public static String b(float f2, float f3, float[] fArr) {
        int length = fArr.length;
        StringBuilder sb = new StringBuilder();
        float f4 = (f3 - f2) / 60.0f;
        for (int i2 = 0; i2 < length; i2++) {
            char cFloor = (char) (((int) Math.floor((fArr[i2] - f2) / f4)) + 65);
            if (fArr[i2] == f3) {
                cFloor = '}';
            }
            if (cFloor == '\\') {
                cFloor = '.';
            } else if (cFloor == '.') {
                cFloor = '\\';
            }
            sb.append(cFloor);
        }
        return sb.toString();
    }
}
