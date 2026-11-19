package com.perfectcorp.thirdparty.com.google.gson.stream;

import com.perfectcorp.thirdparty.com.google.gson.internal.r;
import defpackage.a61;
import defpackage.az;
import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import defpackage.r81;
import io.jsonwebtoken.JwtParser;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes3.dex */
public class a implements Closeable {
    public static final char[] q = {')', ']', '}', '\'', '\n'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Reader f42558b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f42564j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f42565k;
    public String l;
    public int[] m;
    public String[] o;
    public int[] p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f42559c = false;
    public final char[] d = new char[1024];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f42560e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f42561f = 0;
    public int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f42562h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f42563i = 0;
    public int n = 1;

    static {
        r.f42535a = new b();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.m = iArr;
        iArr[0] = 6;
        this.o = new String[32];
        this.p = new int[32];
        if (reader != null) {
            this.f42558b = reader;
        } else {
            r81.d("in == null");
            throw null;
        }
    }

    public boolean B() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 5) {
            this.f42563i = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (iJ0 != 6) {
            StringBuilder sb = new StringBuilder("Expected a boolean but was ");
            sb.append(w());
            az.n(n0(), sb);
            return false;
        }
        this.f42563i = 0;
        int[] iArr2 = this.p;
        int i3 = this.n - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    public void C() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 != 7) {
            StringBuilder sb = new StringBuilder("Expected null but was ");
            sb.append(w());
            az.n(n0(), sb);
        } else {
            this.f42563i = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public double E() throws e {
        String strN;
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 15) {
            this.f42563i = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f42564j;
        }
        if (iJ0 == 16) {
            this.l = new String(this.d, this.f42560e, this.f42565k);
            this.f42560e += this.f42565k;
        } else {
            if (iJ0 == 8 || iJ0 == 9) {
                strN = n(iJ0 == 8 ? '\'' : '\"');
            } else if (iJ0 == 10) {
                strN = k0();
            } else if (iJ0 != 11) {
                StringBuilder sb = new StringBuilder("Expected a double but was ");
                sb.append(w());
                az.n(n0(), sb);
                return 0.0d;
            }
            this.l = strN;
        }
        this.f42563i = 11;
        double d = Double.parseDouble(this.l);
        if (!this.f42559c && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new e("JSON forbids NaN and infinities: " + d + n0());
        }
        this.l = null;
        this.f42563i = 0;
        int[] iArr2 = this.p;
        int i3 = this.n - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return d;
    }

    public long F() throws e {
        String strN;
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 15) {
            this.f42563i = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f42564j;
        }
        if (iJ0 == 16) {
            this.l = new String(this.d, this.f42560e, this.f42565k);
            this.f42560e += this.f42565k;
        } else {
            if (iJ0 != 8 && iJ0 != 9 && iJ0 != 10) {
                StringBuilder sb = new StringBuilder("Expected a long but was ");
                sb.append(w());
                az.n(n0(), sb);
                return 0L;
            }
            if (iJ0 == 10) {
                strN = k0();
            } else {
                strN = n(iJ0 == 8 ? '\'' : '\"');
            }
            this.l = strN;
            try {
                long j2 = Long.parseLong(this.l);
                this.f42563i = 0;
                int[] iArr2 = this.p;
                int i3 = this.n - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return j2;
            } catch (NumberFormatException unused) {
            }
        }
        this.f42563i = 11;
        double d = Double.parseDouble(this.l);
        long j3 = (long) d;
        if (j3 != d) {
            d20.h("Expected a long but was ", this.l, n0());
            return 0L;
        }
        this.l = null;
        this.f42563i = 0;
        int[] iArr3 = this.p;
        int i4 = this.n - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j3;
    }

    public int G() throws e {
        String strN;
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 15) {
            long j2 = this.f42564j;
            int i2 = (int) j2;
            if (j2 == i2) {
                this.f42563i = 0;
                int[] iArr = this.p;
                int i3 = this.n - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new NumberFormatException("Expected an int but was " + this.f42564j + n0());
        }
        if (iJ0 == 16) {
            this.l = new String(this.d, this.f42560e, this.f42565k);
            this.f42560e += this.f42565k;
        } else {
            if (iJ0 != 8 && iJ0 != 9 && iJ0 != 10) {
                StringBuilder sb = new StringBuilder("Expected an int but was ");
                sb.append(w());
                az.n(n0(), sb);
                return 0;
            }
            if (iJ0 == 10) {
                strN = k0();
            } else {
                strN = n(iJ0 == 8 ? '\'' : '\"');
            }
            this.l = strN;
            try {
                int i4 = Integer.parseInt(this.l);
                this.f42563i = 0;
                int[] iArr2 = this.p;
                int i5 = this.n - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return i4;
            } catch (NumberFormatException unused) {
            }
        }
        this.f42563i = 11;
        double d = Double.parseDouble(this.l);
        int i6 = (int) d;
        if (i6 != d) {
            d20.h("Expected an int but was ", this.l, n0());
            return 0;
        }
        this.l = null;
        this.f42563i = 0;
        int[] iArr3 = this.p;
        int i7 = this.n - 1;
        iArr3[i7] = iArr3[i7] + 1;
        return i6;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x0093. Please report as an issue. */
    public void H() throws e {
        char c2;
        int i2 = 0;
        do {
            int iJ0 = this.f42563i;
            if (iJ0 == 0) {
                iJ0 = j0();
            }
            if (iJ0 == 3) {
                j(1);
            } else {
                if (iJ0 == 1) {
                    j(3);
                } else if (iJ0 == 4 || iJ0 == 2) {
                    this.n--;
                    i2--;
                } else if (iJ0 == 14 || iJ0 == 10) {
                    while (true) {
                        int i3 = 0;
                        while (true) {
                            int i4 = this.f42560e + i3;
                            if (i4 < this.f42561f) {
                                char c3 = this.d[i4];
                                if (c3 != '\t' && c3 != '\n' && c3 != '\f' && c3 != '\r' && c3 != ' ') {
                                    if (c3 != '#') {
                                        if (c3 != ',') {
                                            if (c3 != '/' && c3 != '=') {
                                                if (c3 != '{' && c3 != '}' && c3 != ':') {
                                                    if (c3 != ';') {
                                                        switch (c3) {
                                                            case '[':
                                                            case ']':
                                                                break;
                                                            case '\\':
                                                                break;
                                                            default:
                                                                i3++;
                                                                break;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    l0();
                                }
                                this.f42560e += i3;
                            } else {
                                this.f42560e = i4;
                                if (!q(1)) {
                                }
                            }
                        }
                    }
                } else {
                    if (iJ0 == 8 || iJ0 == 12) {
                        c2 = '\'';
                    } else if (iJ0 == 9 || iJ0 == 13) {
                        c2 = '\"';
                    } else if (iJ0 == 16) {
                        this.f42560e += this.f42565k;
                    }
                    s(c2);
                }
                this.f42563i = 0;
            }
            i2++;
            this.f42563i = 0;
        } while (i2 != 0);
        int[] iArr = this.p;
        int i5 = this.n - 1;
        iArr[i5] = iArr[i5] + 1;
        this.o[i5] = "null";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f42563i = 0;
        this.m[0] = 8;
        this.n = 1;
        this.f42558b.close();
    }

    public void h() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 3) {
            j(1);
            this.p[this.n - 1] = 0;
            this.f42563i = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_ARRAY but was ");
            sb.append(w());
            az.n(n0(), sb);
        }
    }

    public String i0() {
        StringBuilder sb = new StringBuilder("$");
        int i2 = this.n;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.m[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.p[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append(JwtParser.SEPARATOR_CHAR);
                String str = this.o[i3];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public final void j(int i2) {
        int i3 = this.n;
        int[] iArr = this.m;
        if (i3 == iArr.length) {
            int i4 = i3 << 1;
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            String[] strArr = new String[i4];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            System.arraycopy(this.p, 0, iArr3, 0, this.n);
            System.arraycopy(this.o, 0, strArr, 0, this.n);
            this.m = iArr2;
            this.p = iArr3;
            this.o = strArr;
        }
        int[] iArr4 = this.m;
        int i5 = this.n;
        this.n = i5 + 1;
        iArr4[i5] = i2;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0163 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:112:0x0164  */
    /* JADX WARN: Code duplicated, block: B:115:0x0177  */
    /* JADX WARN: Code duplicated, block: B:118:0x017f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0187  */
    /* JADX WARN: Code duplicated, block: B:121:0x018b A[PHI: r1 r2
      0x018b: PHI (r1v55 int) = (r1v54 int), (r1v71 int) binds: [B:114:0x0175, B:120:0x0187] A[DONT_GENERATE, DONT_INLINE]
      0x018b: PHI (r2v26 int) = (r2v25 int), (r2v27 int) binds: [B:114:0x0175, B:120:0x0187] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:123:0x0193  */
    /* JADX WARN: Code duplicated, block: B:125:0x0197  */
    /* JADX WARN: Code duplicated, block: B:162:0x01f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:171:0x020e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x0210  */
    /* JADX WARN: Code duplicated, block: B:183:0x0229 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:184:0x022b  */
    /* JADX WARN: Code duplicated, block: B:187:0x0230 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:191:0x023a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:192:0x023b  */
    /* JADX WARN: Code duplicated, block: B:194:0x0245  */
    /* JADX WARN: Code duplicated, block: B:195:0x024c  */
    /* JADX WARN: Code duplicated, block: B:203:0x025d  */
    /* JADX WARN: Code duplicated, block: B:248:0x017b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x017b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x01f2 A[SYNTHETIC] */
    public final int j0() {
        int i2;
        int iM;
        String str;
        String str2;
        int i3;
        char c2;
        int i4;
        int i5;
        char c3;
        int i6;
        char c4;
        int i7;
        int[] iArr = this.m;
        int i8 = this.n - 1;
        int i9 = iArr[i8];
        char[] cArr = this.d;
        if (i9 == 1) {
            iArr[i8] = 2;
        } else {
            if (i9 != 2) {
                if (i9 == 3 || i9 == 5) {
                    iArr[i8] = 4;
                    if (i9 == 5 && (iM = m(true)) != 44) {
                        if (iM != 59) {
                            if (iM == 125) {
                                this.f42563i = 2;
                                return 2;
                            }
                            p("Unterminated object");
                            throw null;
                        }
                        l0();
                    }
                    int iM2 = m(true);
                    if (iM2 == 34) {
                        i2 = 13;
                    } else if (iM2 == 39) {
                        l0();
                        i2 = 12;
                    } else {
                        if (iM2 == 125) {
                            if (i9 != 5) {
                                this.f42563i = 2;
                                return 2;
                            }
                            p("Expected name");
                            throw null;
                        }
                        l0();
                        this.f42560e--;
                        if (!k((char) iM2)) {
                            p("Expected name");
                            throw null;
                        }
                        i2 = 14;
                    }
                } else if (i9 == 4) {
                    iArr[i8] = 5;
                    int iM3 = m(true);
                    if (iM3 != 58) {
                        if (iM3 != 61) {
                            p("Expected ':'");
                            throw null;
                        }
                        l0();
                        if (this.f42560e < this.f42561f || q(1)) {
                            int i10 = this.f42560e;
                            if (cArr[i10] == '>') {
                                this.f42560e = i10 + 1;
                            }
                        }
                    }
                } else if (i9 == 6) {
                    if (this.f42559c) {
                        m(true);
                        int i11 = this.f42560e;
                        this.f42560e = i11 - 1;
                        if (i11 + 4 <= this.f42561f || q(5)) {
                            int i12 = 0;
                            while (true) {
                                int i13 = this.f42560e;
                                if (i12 >= 5) {
                                    this.f42560e = i13 + 5;
                                    break;
                                }
                                if (cArr[i13 + i12] != q[i12]) {
                                    break;
                                }
                                i12++;
                            }
                        }
                    }
                    this.m[this.n - 1] = 7;
                } else if (i9 == 7) {
                    if (m(false) == -1) {
                        i2 = 17;
                    } else {
                        l0();
                        this.f42560e--;
                    }
                } else if (i9 == 8) {
                    md.k("JsonReader is closed");
                    return 0;
                }
                this.f42563i = i2;
                return i2;
            }
            int iM4 = m(true);
            if (iM4 != 44) {
                if (iM4 != 59) {
                    if (iM4 == 93) {
                        this.f42563i = 4;
                        return 4;
                    }
                    p("Unterminated array");
                    throw null;
                }
                l0();
            }
        }
        int iM5 = m(true);
        if (iM5 == 34) {
            i2 = 9;
        } else if (iM5 == 39) {
            l0();
            i2 = 8;
        } else if (iM5 == 44 || iM5 == 59) {
            if (i9 == 1 && i9 != 2) {
                p("Unexpected value");
                throw null;
            }
            l0();
            this.f42560e--;
            i2 = 7;
        } else {
            if (iM5 == 91) {
                this.f42563i = 3;
                return 3;
            }
            if (iM5 != 93) {
                if (iM5 == 123) {
                    this.f42563i = 1;
                    return 1;
                }
                int i14 = this.f42560e - 1;
                this.f42560e = i14;
                char c5 = cArr[i14];
                if (c5 == 't' || c5 == 'T') {
                    str = "true";
                    str2 = "TRUE";
                    i3 = 5;
                } else if (c5 == 'f' || c5 == 'F') {
                    str = "false";
                    str2 = "FALSE";
                    i3 = 6;
                } else {
                    if (c5 != 'n' && c5 != 'N') {
                        i3 = 0;
                        break;
                    }
                    str = "null";
                    str2 = "NULL";
                    i3 = 7;
                    if (i3 != 0) {
                        return i3;
                    }
                    i4 = this.f42560e;
                    i5 = this.f42561f;
                    boolean z = true;
                    c3 = 0;
                    i6 = 0;
                    boolean z2 = false;
                    long j2 = 0;
                    while (true) {
                        if (i4 + i6 != i5) {
                            c4 = cArr[i4 + i6];
                            if (c4 == '+') {
                                if (c4 != 'E' || c4 == 'e') {
                                    if (c3 != 2 || c3 == 4) {
                                        c3 = 5;
                                        i6++;
                                    }
                                } else if (c4 == '-') {
                                    if (c3 == 0) {
                                        c3 = 1;
                                        z2 = true;
                                    } else {
                                        if (c3 != 5) {
                                        }
                                        c3 = 6;
                                    }
                                    i6++;
                                } else if (c4 != '.') {
                                    if (c4 >= '0' && c4 <= '9') {
                                        if (c3 == 1 || c3 == 0) {
                                            j2 = -(c4 - '0');
                                            c3 = 2;
                                        } else if (c3 == 2) {
                                            if (j2 != 0) {
                                                long j3 = (10 * j2) - ((long) (c4 - '0'));
                                                z &= j2 > -922337203685477580L || (j2 == -922337203685477580L && j3 < j2);
                                                j2 = j3;
                                            }
                                        } else if (c3 == 3) {
                                            c3 = 4;
                                        } else if (c3 == 5 || c3 == 6) {
                                            c3 = 7;
                                        }
                                        i6++;
                                    } else if (!k(c4)) {
                                        if (c3 != 2 && z && (j2 != Long.MIN_VALUE || z2)) {
                                            if (!z2) {
                                                j2 = -j2;
                                            }
                                            this.f42564j = j2;
                                            this.f42560e += i6;
                                            i7 = 15;
                                        } else if (c3 != 2 || c3 == 4 || c3 == 7) {
                                            this.f42565k = i6;
                                            i7 = 16;
                                        }
                                        this.f42563i = i7;
                                    }
                                } else if (c3 == 2) {
                                    c3 = 3;
                                    i6++;
                                }
                                if (i7 != 0) {
                                    return i7;
                                }
                                if (!k(cArr[this.f42560e])) {
                                    p("Expected value");
                                    throw null;
                                }
                                l0();
                                i2 = 10;
                            } else {
                                if (c3 != 5) {
                                }
                                c3 = 6;
                                i6++;
                            }
                        } else if (i6 != 1024) {
                            if (q(i6 + 1)) {
                                i4 = this.f42560e;
                                i5 = this.f42561f;
                                c4 = cArr[i4 + i6];
                                if (c4 == '+') {
                                    if (c3 != 5) {
                                    }
                                    c3 = 6;
                                    i6++;
                                } else if (c4 != 'E') {
                                    if (c3 != 2) {
                                    }
                                    c3 = 5;
                                    i6++;
                                } else {
                                    if (c3 != 2) {
                                    }
                                    c3 = 5;
                                    i6++;
                                }
                            }
                            if (c3 != 2) {
                                if (c3 != 2) {
                                }
                                this.f42565k = i6;
                                i7 = 16;
                            } else {
                                if (c3 != 2) {
                                }
                                this.f42565k = i6;
                                i7 = 16;
                            }
                            this.f42563i = i7;
                            if (i7 != 0) {
                                return i7;
                            }
                            if (!k(cArr[this.f42560e])) {
                                p("Expected value");
                                throw null;
                            }
                            l0();
                            i2 = 10;
                        }
                        i7 = 0;
                        if (i7 != 0) {
                            return i7;
                        }
                        if (!k(cArr[this.f42560e])) {
                            p("Expected value");
                            throw null;
                        }
                        l0();
                        i2 = 10;
                    }
                }
                int length = str.length();
                int i15 = 1;
                while (true) {
                    int i16 = this.f42560e;
                    int i17 = this.f42561f;
                    if (i15 >= length) {
                        if ((i16 + length >= i17 && !q(length + 1)) || !k(cArr[this.f42560e + length])) {
                            this.f42560e += length;
                            this.f42563i = i3;
                            break;
                        }
                        break;
                    }
                    if ((i16 + i15 < i17 || q(i15 + 1)) && ((c2 = cArr[this.f42560e + i15]) == str.charAt(i15) || c2 == str2.charAt(i15))) {
                        i15++;
                    }
                    i3 = 0;
                    break;
                }
                if (i3 != 0) {
                    return i3;
                }
                i4 = this.f42560e;
                i5 = this.f42561f;
                boolean z3 = true;
                c3 = 0;
                i6 = 0;
                boolean z4 = false;
                long j4 = 0;
                while (true) {
                    if (i4 + i6 != i5) {
                        c4 = cArr[i4 + i6];
                        if (c4 == '+') {
                            if (c3 != 5) {
                            }
                            c3 = 6;
                            i6++;
                        } else if (c4 != 'E') {
                            if (c3 != 2) {
                            }
                            c3 = 5;
                            i6++;
                        } else {
                            if (c3 != 2) {
                            }
                            c3 = 5;
                            i6++;
                        }
                    } else if (i6 != 1024) {
                        if (q(i6 + 1)) {
                            i4 = this.f42560e;
                            i5 = this.f42561f;
                            c4 = cArr[i4 + i6];
                            if (c4 == '+') {
                                if (c3 != 5) {
                                }
                                c3 = 6;
                                i6++;
                            } else if (c4 != 'E') {
                                if (c3 != 2) {
                                }
                                c3 = 5;
                                i6++;
                            } else {
                                if (c3 != 2) {
                                }
                                c3 = 5;
                                i6++;
                            }
                        }
                        if (c3 != 2) {
                            if (c3 != 2) {
                            }
                            this.f42565k = i6;
                            i7 = 16;
                        } else {
                            if (c3 != 2) {
                            }
                            this.f42565k = i6;
                            i7 = 16;
                        }
                        this.f42563i = i7;
                        if (i7 != 0) {
                            return i7;
                        }
                        if (!k(cArr[this.f42560e])) {
                            p("Expected value");
                            throw null;
                        }
                        l0();
                        i2 = 10;
                    }
                    i7 = 0;
                    if (i7 != 0) {
                        return i7;
                    }
                    if (!k(cArr[this.f42560e])) {
                        p("Expected value");
                        throw null;
                    }
                    l0();
                    i2 = 10;
                }
            } else if (i9 == 1) {
                i2 = 4;
            } else {
                if (i9 == 1) {
                }
                l0();
                this.f42560e--;
                i2 = 7;
            }
        }
        this.f42563i = i2;
        return i2;
    }

    public final boolean k(char c2) throws e {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        l0();
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    public final String k0() throws e {
        String string;
        StringBuilder sb = null;
        int i2 = 0;
        while (true) {
            int i3 = 0;
            while (true) {
                int i4 = this.f42560e + i3;
                int i5 = this.f42561f;
                char[] cArr = this.d;
                if (i4 < i5) {
                    char c2 = cArr[i4];
                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                        if (c2 != '#') {
                            if (c2 != ',') {
                                if (c2 != '/' && c2 != '=') {
                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                        if (c2 != ';') {
                                            switch (c2) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i3++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        l0();
                    }
                    i2 = i3;
                } else if (i3 >= 1024) {
                    if (sb == null) {
                        sb = new StringBuilder();
                    }
                    sb.append(cArr, this.f42560e, i3);
                    this.f42560e += i3;
                    if (!q(1)) {
                    }
                } else if (!q(i3 + 1)) {
                    i2 = i3;
                }
                int i6 = this.f42560e;
                if (sb == null) {
                    string = new String(cArr, i6, i2);
                } else {
                    sb.append(cArr, i6, i2);
                    string = sb.toString();
                }
                this.f42560e += i2;
                return string;
            }
        }
    }

    public final void l0() throws e {
        if (this.f42559c) {
            return;
        }
        p("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x0092  */
    /* JADX WARN: Code duplicated, block: B:45:0x009c  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ac A[LOOP:3: B:46:0x009d->B:50:0x00ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00af A[EDGE_INSN: B:75:0x00af->B:51:0x00af BREAK  A[LOOP:3: B:46:0x009d->B:50:0x00ac], SYNTHETIC] */
    public final int m(boolean z) throws IOException {
        char c2;
        int i2;
        char c3;
        int i3;
        int i4;
        int i5;
        while (true) {
            int i6 = this.f42560e;
            int i7 = this.f42561f;
            while (true) {
                if (i6 == i7) {
                    this.f42560e = i6;
                    if (!q(1)) {
                        if (!z) {
                            return -1;
                        }
                        d20.g("End of input".concat(n0()));
                        return 0;
                    }
                    i6 = this.f42560e;
                    i7 = this.f42561f;
                }
                int i8 = i6 + 1;
                char[] cArr = this.d;
                c2 = cArr[i6];
                if (c2 == '\n') {
                    this.g++;
                    this.f42562h = i8;
                } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                    if (c2 == '/') {
                        this.f42560e = i8;
                        if (i8 == i7) {
                            this.f42560e = i6;
                            boolean zQ = q(2);
                            this.f42560e++;
                            if (zQ) {
                                l0();
                                i2 = this.f42560e;
                                c3 = cArr[i2];
                                if (c3 != '*') {
                                    break;
                                }
                                this.f42560e = i2 + 1;
                                while (true) {
                                    if (this.f42560e + 2 <= this.f42561f && !q(2)) {
                                        p("Unterminated comment");
                                        throw null;
                                    }
                                    i3 = this.f42560e;
                                    if (cArr[i3] == '\n') {
                                        i4 = 0;
                                        while (true) {
                                            i5 = this.f42560e;
                                            if (i4 < 2) {
                                                i6 = i5 + 2;
                                                break;
                                            }
                                            if (cArr[i5 + i4] == "*/".charAt(i4)) {
                                                break;
                                            }
                                            i4++;
                                        }
                                    } else {
                                        this.g++;
                                        this.f42562h = i3 + 1;
                                    }
                                    this.f42560e++;
                                }
                            }
                        } else {
                            l0();
                            i2 = this.f42560e;
                            c3 = cArr[i2];
                            if (c3 != '*') {
                                break;
                            }
                            this.f42560e = i2 + 1;
                            while (true) {
                                if (this.f42560e + 2 <= this.f42561f) {
                                }
                                i3 = this.f42560e;
                                if (cArr[i3] == '\n') {
                                    i4 = 0;
                                    while (true) {
                                        i5 = this.f42560e;
                                        if (i4 < 2) {
                                            i6 = i5 + 2;
                                            break;
                                        }
                                        if (cArr[i5 + i4] == "*/".charAt(i4)) {
                                            break;
                                            break;
                                        }
                                        i4++;
                                    }
                                } else {
                                    this.g++;
                                    this.f42562h = i3 + 1;
                                }
                                this.f42560e++;
                            }
                        }
                        return c2;
                    }
                    this.f42560e = i8;
                    if (c2 != '#') {
                        return c2;
                    }
                    l0();
                    m0();
                    i6 = this.f42560e;
                    i7 = this.f42561f;
                }
                i6 = i8;
            }
            if (c3 != '/') {
                return c2;
            }
            this.f42560e = i2 + 1;
            m0();
        }
    }

    public final void m0() {
        char c2;
        do {
            if (this.f42560e >= this.f42561f && !q(1)) {
                return;
            }
            int i2 = this.f42560e;
            int i3 = i2 + 1;
            this.f42560e = i3;
            c2 = this.d[i2];
            if (c2 == '\n') {
                this.g++;
                this.f42562h = i3;
                return;
            }
        } while (c2 != '\r');
    }

    public final String n(char c2) throws e {
        char[] cArr;
        StringBuilder sb = new StringBuilder();
        do {
            int i2 = this.f42560e;
            int i3 = this.f42561f;
            int i4 = i2;
            while (true) {
                cArr = this.d;
                if (i2 < i3) {
                    int i5 = i2 + 1;
                    char c3 = cArr[i2];
                    if (c3 == c2) {
                        this.f42560e = i5;
                        sb.append(cArr, i4, (i5 - i4) - 1);
                        return sb.toString();
                    }
                    if (c3 == '\\') {
                        this.f42560e = i5;
                        sb.append(cArr, i4, (i5 - i4) - 1);
                        sb.append(o0());
                        i4 = this.f42560e;
                        i3 = this.f42561f;
                        i2 = i4;
                    } else {
                        if (c3 == '\n') {
                            this.g++;
                            this.f42562h = i5;
                        }
                        i2 = i5;
                    }
                }
            }
            sb.append(cArr, i4, i2 - i4);
            this.f42560e = i2;
        } while (q(1));
        p("Unterminated string");
        throw null;
    }

    public final String n0() {
        StringBuilder sbP = fc.p(this.g + 1, (this.f42560e - this.f42562h) + 1, " at line ", " column ", " path ");
        sbP.append(i0());
        return sbP.toString();
    }

    public void o() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 != 4) {
            StringBuilder sb = new StringBuilder("Expected END_ARRAY but was ");
            sb.append(w());
            az.n(n0(), sb);
        } else {
            int i2 = this.n;
            this.n = i2 - 1;
            int[] iArr = this.p;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.f42563i = 0;
        }
    }

    public final char o0() throws e {
        int i2;
        if (this.f42560e == this.f42561f && !q(1)) {
            p("Unterminated escape sequence");
            throw null;
        }
        int i3 = this.f42560e;
        int i4 = i3 + 1;
        this.f42560e = i4;
        char[] cArr = this.d;
        char c2 = cArr[i3];
        if (c2 == '\n') {
            this.g++;
            this.f42562h = i4;
            return c2;
        }
        if (c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\') {
            return c2;
        }
        if (c2 == 'b') {
            return '\b';
        }
        if (c2 == 'f') {
            return '\f';
        }
        if (c2 == 'n') {
            return '\n';
        }
        if (c2 == 'r') {
            return '\r';
        }
        if (c2 == 't') {
            return '\t';
        }
        if (c2 != 'u') {
            p("Invalid escape sequence");
            throw null;
        }
        if (i3 + 5 > this.f42561f && !q(4)) {
            p("Unterminated escape sequence");
            throw null;
        }
        int i5 = this.f42560e;
        int i6 = i5 + 4;
        char c3 = 0;
        while (i5 < i6) {
            char c4 = cArr[i5];
            char c5 = (char) (c3 << 4);
            if (c4 >= '0' && c4 <= '9') {
                i2 = c4 - '0';
            } else if (c4 >= 'a' && c4 <= 'f') {
                i2 = c4 - 'W';
            } else {
                if (c4 < 'A' || c4 > 'F') {
                    throw new NumberFormatException("\\u".concat(new String(cArr, this.f42560e, 4)));
                }
                i2 = c4 - '7';
            }
            c3 = (char) (i2 + c5);
            i5++;
        }
        this.f42560e += 4;
        return c3;
    }

    public final void p(String str) throws e {
        throw new e(str.concat(n0()));
    }

    public final boolean q(int i2) throws IOException {
        int i3;
        int i4;
        int i5 = this.f42562h;
        int i6 = this.f42560e;
        this.f42562h = i5 - i6;
        int i7 = this.f42561f;
        char[] cArr = this.d;
        if (i7 != i6) {
            int i8 = i7 - i6;
            this.f42561f = i8;
            System.arraycopy(cArr, i6, cArr, 0, i8);
        } else {
            this.f42561f = 0;
        }
        this.f42560e = 0;
        do {
            int i9 = this.f42561f;
            int i10 = this.f42558b.read(cArr, i9, 1024 - i9);
            if (i10 == -1) {
                return false;
            }
            i3 = this.f42561f + i10;
            this.f42561f = i3;
            if (this.g == 0 && (i4 = this.f42562h) == 0 && i3 > 0 && cArr[0] == 65279) {
                this.f42560e++;
                this.f42562h = i4 + 1;
                i2++;
            }
        } while (i3 < i2);
        return true;
    }

    public void r() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 1) {
            j(3);
            this.f42563i = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_OBJECT but was ");
            sb.append(w());
            az.n(n0(), sb);
        }
    }

    public final void s(char c2) throws e {
        while (true) {
            int i2 = this.f42560e;
            int i3 = this.f42561f;
            while (true) {
                if (i2 >= i3) {
                    this.f42560e = i2;
                    if (q(1)) {
                        break;
                    }
                    p("Unterminated string");
                    throw null;
                }
                int i4 = i2 + 1;
                char c3 = this.d[i2];
                if (c3 == c2) {
                    this.f42560e = i4;
                    return;
                }
                if (c3 == '\\') {
                    this.f42560e = i4;
                    o0();
                    break;
                } else {
                    if (c3 == '\n') {
                        this.g++;
                        this.f42562h = i4;
                    }
                    i2 = i4;
                }
            }
        }
    }

    public void t() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 != 2) {
            StringBuilder sb = new StringBuilder("Expected END_OBJECT but was ");
            sb.append(w());
            az.n(n0(), sb);
            return;
        }
        int i2 = this.n;
        int i3 = i2 - 1;
        this.n = i3;
        this.o[i3] = null;
        int[] iArr = this.p;
        int i4 = i2 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.f42563i = 0;
    }

    public String toString() {
        return getClass().getSimpleName().concat(n0());
    }

    public boolean u() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        return (iJ0 == 2 || iJ0 == 4) ? false : true;
    }

    public c w() {
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        switch (iJ0) {
            case 1:
                return c.f42568c;
            case 2:
                return c.d;
            case 3:
                return c.f42566a;
            case 4:
                return c.f42567b;
            case 5:
            case 6:
                return c.f42571h;
            case 7:
                return c.f42572i;
            case 8:
            case 9:
            case 10:
            case 11:
                return c.f42570f;
            case 12:
            case 13:
            case 14:
                return c.f42569e;
            case 15:
            case 16:
                return c.g;
            case 17:
                return c.f42573j;
            default:
                a61.h();
                return null;
        }
    }

    public String y() throws e {
        char c2;
        String strN;
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 14) {
            strN = k0();
        } else {
            if (iJ0 == 12) {
                c2 = '\'';
            } else {
                if (iJ0 != 13) {
                    StringBuilder sb = new StringBuilder("Expected a name but was ");
                    sb.append(w());
                    az.n(n0(), sb);
                    return null;
                }
                c2 = '\"';
            }
            strN = n(c2);
        }
        this.f42563i = 0;
        this.o[this.n - 1] = strN;
        return strN;
    }

    public String z() throws e {
        String str;
        char c2;
        int iJ0 = this.f42563i;
        if (iJ0 == 0) {
            iJ0 = j0();
        }
        if (iJ0 == 10) {
            str = k0();
        } else {
            if (iJ0 == 8) {
                c2 = '\'';
            } else if (iJ0 == 9) {
                c2 = '\"';
            } else if (iJ0 == 11) {
                str = this.l;
                this.l = null;
            } else if (iJ0 == 15) {
                str = Long.toString(this.f42564j);
            } else {
                if (iJ0 != 16) {
                    StringBuilder sb = new StringBuilder("Expected a string but was ");
                    sb.append(w());
                    az.n(n0(), sb);
                    return null;
                }
                str = new String(this.d, this.f42560e, this.f42565k);
                this.f42560e += this.f42565k;
            }
            str = n(c2);
        }
        this.f42563i = 0;
        int[] iArr = this.p;
        int i2 = this.n - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }
}
