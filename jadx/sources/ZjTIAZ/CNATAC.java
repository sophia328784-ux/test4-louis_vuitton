package ZjTIAZ;

/* JADX INFO: loaded from: classes.dex */
public class CNATAC {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static char[] f107j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f110c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f112f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f113h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f114i;

    public CNATAC(int i2, long j2, int i3, int i4, float f2, float f3, int i5, long j3, long j4, float f4) {
        this.f108a = i2;
        this.f109b = i4;
        this.f110c = f2;
        this.d = f3;
        this.f111e = i5;
        this.f112f = j2;
        this.g = j3;
        this.f113h = j4;
        this.f114i = f4;
    }

    public static /* synthetic */ String a(String str) {
        if (f107j == null) {
            f107j = new char[32767];
            int i2 = 3;
            for (int i3 = 0; i3 < 32767; i3++) {
                i2 = ((i2 + (i2 ^ i3)) + 8) % 63;
                f107j[i3] = (char) i2;
            }
        }
        char[] cArr = new char[str.length()];
        char[] charArray = str.toCharArray();
        for (int i4 = 0; i4 < str.length(); i4++) {
            cArr[i4] = (char) (cArr[i4] + ((char) (charArray[i4] ^ f107j[i4])));
        }
        return new String(cArr);
    }
}
