package com.airbnb.lottie.parser.moshi;

import com.batch.android.x0.h;
import defpackage.a61;
import defpackage.d20;
import defpackage.md;
import java.io.EOFException;
import kotlin.text.Charsets;
import okio.Buffer;
import okio.ByteString;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes3.dex */
final class JsonUtf8Reader extends JsonReader {
    public static final ByteString m;
    public static final ByteString n;
    public static final ByteString o;
    public final RealBufferedSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Buffer f22276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f22277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f22278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f22279k;
    public String l;

    static {
        ByteString.f77398e.getClass();
        m = ByteString.Companion.c("'\\");
        n = ByteString.Companion.c("\"\\");
        o = ByteString.Companion.c("{}[]:, \n\t\r\f/\\;#=");
        ByteString.Companion.c("\n\r");
        ByteString.Companion.c("*/");
    }

    public JsonUtf8Reader(RealBufferedSource realBufferedSource) {
        this.f22272c = new int[32];
        this.d = new String[32];
        this.f22273e = new int[32];
        this.f22277i = 0;
        this.g = realBufferedSource;
        this.f22276h = realBufferedSource.f77444c;
        y(6);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void B() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 14) {
            long jW = this.g.W(o);
            Buffer buffer = this.f22276h;
            if (jW == -1) {
                jW = buffer.f77390c;
            }
            buffer.skip(jW);
        } else if (iG == 13) {
            n0(n);
        } else if (iG == 12) {
            n0(m);
        } else if (iG != 15) {
            StringBuilder sb = new StringBuilder("Expected a name but was ");
            sb.append(w());
            a.a(n(), sb);
            return;
        }
        this.f22277i = 0;
        this.d[this.f22271b - 1] = "null";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void C() throws JsonEncodingException, EOFException {
        int i2 = 0;
        do {
            int iG = this.f22277i;
            if (iG == 0) {
                iG = G();
            }
            if (iG == 3) {
                y(1);
            } else {
                if (iG == 1) {
                    y(3);
                } else if (iG == 4) {
                    i2--;
                    if (i2 < 0) {
                        StringBuilder sb = new StringBuilder("Expected a value but was ");
                        sb.append(w());
                        a.a(n(), sb);
                        return;
                    }
                    this.f22271b--;
                } else if (iG == 2) {
                    i2--;
                    if (i2 < 0) {
                        StringBuilder sb2 = new StringBuilder("Expected a value but was ");
                        sb2.append(w());
                        a.a(n(), sb2);
                        return;
                    }
                    this.f22271b--;
                } else {
                    Buffer buffer = this.f22276h;
                    if (iG == 14 || iG == 10) {
                        long jW = this.g.W(o);
                        if (jW == -1) {
                            jW = buffer.f77390c;
                        }
                        buffer.skip(jW);
                    } else if (iG == 9 || iG == 13) {
                        n0(n);
                    } else if (iG == 8 || iG == 12) {
                        n0(m);
                    } else if (iG == 17) {
                        buffer.skip(this.f22279k);
                    } else if (iG == 18) {
                        StringBuilder sb3 = new StringBuilder("Expected a value but was ");
                        sb3.append(w());
                        a.a(n(), sb3);
                        return;
                    }
                }
                this.f22277i = 0;
            }
            i2++;
            this.f22277i = 0;
        } while (i2 != 0);
        int[] iArr = this.f22273e;
        int i3 = this.f22271b - 1;
        iArr[i3] = iArr[i3] + 1;
        this.d[i3] = "null";
    }

    public final void F() throws JsonEncodingException {
        E("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:148:0x01c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:149:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:162:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:167:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:172:0x01fa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:173:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:175:0x0207  */
    /* JADX WARN: Code duplicated, block: B:177:0x020d  */
    /* JADX WARN: Code duplicated, block: B:230:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x01a4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x011f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:88:0x0120  */
    /* JADX WARN: Code duplicated, block: B:92:0x0132  */
    /* JADX WARN: Code duplicated, block: B:94:0x013b  */
    public final int G() throws JsonEncodingException, EOFException {
        int i2;
        String str;
        String str2;
        long j2;
        char cW;
        int i3;
        int i4;
        int i5;
        int i6;
        byte bW;
        int i7;
        int[] iArr = this.f22272c;
        int i8 = this.f22271b - 1;
        int i9 = iArr[i8];
        int i10 = 0;
        Buffer buffer = this.f22276h;
        if (i9 == 1) {
            iArr[i8] = 2;
        } else if (i9 == 2) {
            int iJ0 = j0(true);
            buffer.readByte();
            if (iJ0 != 44) {
                if (iJ0 == 59) {
                    F();
                    throw null;
                }
                if (iJ0 == 93) {
                    this.f22277i = 4;
                    return 4;
                }
                E("Unterminated array");
                throw null;
            }
        } else {
            if (i9 == 3 || i9 == 5) {
                iArr[i8] = 4;
                if (i9 == 5) {
                    int iJ1 = j0(true);
                    buffer.readByte();
                    if (iJ1 != 44) {
                        if (iJ1 == 59) {
                            F();
                            throw null;
                        }
                        if (iJ1 == 125) {
                            this.f22277i = 2;
                            return 2;
                        }
                        E("Unterminated object");
                        throw null;
                    }
                }
                int iJ2 = j0(true);
                if (iJ2 == 34) {
                    buffer.readByte();
                    this.f22277i = 13;
                    return 13;
                }
                if (iJ2 == 39) {
                    buffer.readByte();
                    F();
                    throw null;
                }
                if (iJ2 != 125) {
                    F();
                    throw null;
                }
                if (i9 == 5) {
                    E("Expected name");
                    throw null;
                }
                buffer.readByte();
                this.f22277i = 2;
                return 2;
            }
            if (i9 == 4) {
                iArr[i8] = 5;
                int iJ3 = j0(true);
                buffer.readByte();
                if (iJ3 != 58) {
                    if (iJ3 != 61) {
                        E("Expected ':'");
                        throw null;
                    }
                    F();
                    throw null;
                }
            } else if (i9 == 6) {
                iArr[i8] = 7;
            } else {
                if (i9 == 7) {
                    if (j0(false) == -1) {
                        this.f22277i = 18;
                        return 18;
                    }
                    F();
                    throw null;
                }
                if (i9 == 8) {
                    md.k("JsonReader is closed");
                    return 0;
                }
            }
        }
        int iJ4 = j0(true);
        if (iJ4 == 34) {
            buffer.readByte();
            this.f22277i = 9;
            return 9;
        }
        if (iJ4 == 39) {
            F();
            throw null;
        }
        if (iJ4 != 44 && iJ4 != 59) {
            if (iJ4 == 91) {
                buffer.readByte();
                this.f22277i = 3;
                return 3;
            }
            if (iJ4 != 93) {
                if (iJ4 == 123) {
                    buffer.readByte();
                    this.f22277i = 1;
                    return 1;
                }
                byte bW2 = buffer.w(0L);
                RealBufferedSource realBufferedSource = this.g;
                if (bW2 == 116 || bW2 == 84) {
                    i2 = 5;
                    str2 = "true";
                    str = "TRUE";
                } else {
                    if (bW2 != 102 && bW2 != 70) {
                        if (bW2 == 110 || bW2 == 78) {
                            i2 = 7;
                            str2 = "null";
                            str = "NULL";
                        } else {
                            j2 = 0;
                            i2 = 0;
                            i10 = 0;
                        }
                        if (i2 != 0) {
                            return i2;
                        }
                        int i11 = 1;
                        i3 = i10;
                        i4 = i3;
                        int i12 = i4;
                        long j3 = j2;
                        while (true) {
                            i5 = i4 + 1;
                            if (realBufferedSource.request(i5)) {
                                bW = buffer.w(i4);
                                if (bW != 43) {
                                    if (bW != 69 || bW == 101) {
                                        i7 = 6;
                                        if (i3 != 2 || i3 == 4) {
                                            i3 = 5;
                                            i4 = i5;
                                        } else {
                                            i6 = i10;
                                        }
                                    } else if (bW == 45) {
                                        i7 = 6;
                                        if (i3 == 0) {
                                            i3 = 1;
                                            i12 = 1;
                                        } else {
                                            if (i3 != 5) {
                                                i6 = i10;
                                            }
                                            i3 = i7;
                                        }
                                        i4 = i5;
                                    } else if (bW != 46) {
                                        if (bW >= 48 && bW <= 57) {
                                            if (i3 == 1 || i3 == 0) {
                                                i7 = 6;
                                                j3 = -(bW + h.a.u);
                                                i3 = 2;
                                            } else {
                                                if (i3 == 2) {
                                                    if (j3 != j2) {
                                                        long j4 = (10 * j3) - ((long) (bW + h.a.u));
                                                        i11 &= (j3 > -922337203685477580L || (j3 == -922337203685477580L && j4 < j3)) ? 1 : i10;
                                                        j3 = j4;
                                                    }
                                                } else if (i3 == 3) {
                                                    i3 = 4;
                                                } else {
                                                    i7 = 6;
                                                    if (i3 == 5 || i3 == 6) {
                                                        i3 = 7;
                                                    }
                                                }
                                                i7 = 6;
                                                i4 = i5;
                                            }
                                            i4 = i5;
                                        } else if (!i0(bW)) {
                                        }
                                        i6 = i10;
                                    } else {
                                        i7 = 6;
                                        if (i3 == 2) {
                                            i3 = 3;
                                            i4 = i5;
                                        } else {
                                            i6 = i10;
                                        }
                                    }
                                    if (i6 != 0) {
                                        return i6;
                                    }
                                    if (i0(buffer.w(j2))) {
                                        F();
                                        throw null;
                                    }
                                    E("Expected value");
                                    throw null;
                                }
                                i7 = 6;
                                if (i3 != 5) {
                                    i6 = i10;
                                    if (i6 != 0) {
                                        return i6;
                                    }
                                    if (i0(buffer.w(j2))) {
                                        E("Expected value");
                                        throw null;
                                    }
                                    F();
                                    throw null;
                                }
                                i3 = i7;
                                i4 = i5;
                            }
                            if (i3 != 2 && i11 != 0 && ((j3 != Long.MIN_VALUE || i12 != 0) && (j3 != j2 || i12 == 0))) {
                                if (i12 == 0) {
                                    j3 = -j3;
                                }
                                this.f22278j = j3;
                                buffer.skip(i4);
                                i6 = 16;
                                this.f22277i = 16;
                            } else if (i3 != 2 || i3 == 4 || i3 == 7) {
                                this.f22279k = i4;
                                i6 = 17;
                                this.f22277i = 17;
                            } else {
                                i6 = i10;
                            }
                            if (i6 != 0) {
                                return i6;
                            }
                            if (i0(buffer.w(j2))) {
                                E("Expected value");
                                throw null;
                            }
                            F();
                            throw null;
                        }
                    }
                    i2 = 6;
                    str2 = "false";
                    str = "FALSE";
                }
                int length = str2.length();
                j2 = 0;
                int i13 = 1;
                while (true) {
                    if (i13 >= length) {
                        if (!realBufferedSource.request(length + 1) || !i0(buffer.w(length))) {
                            buffer.skip(length);
                            this.f22277i = i2;
                            break;
                        }
                    } else {
                        int i14 = i13 + 1;
                        if (realBufferedSource.request(i14) && ((cW = buffer.w(i13)) == str2.charAt(i13) || cW == str.charAt(i13))) {
                            i13 = i14;
                        }
                    }
                    i2 = i10;
                    break;
                }
                if (i2 != 0) {
                    return i2;
                }
                int i15 = 1;
                i3 = i10;
                i4 = i3;
                int i16 = i4;
                long j5 = j2;
                while (true) {
                    i5 = i4 + 1;
                    if (realBufferedSource.request(i5)) {
                        bW = buffer.w(i4);
                        if (bW != 43) {
                            if (bW != 69) {
                                i7 = 6;
                                if (i3 != 2) {
                                }
                                i3 = 5;
                                i4 = i5;
                            } else {
                                i7 = 6;
                                if (i3 != 2) {
                                }
                                i3 = 5;
                                i4 = i5;
                            }
                            if (i6 != 0) {
                                return i6;
                            }
                            if (i0(buffer.w(j2))) {
                                E("Expected value");
                                throw null;
                            }
                            F();
                            throw null;
                        }
                        i7 = 6;
                        if (i3 != 5) {
                            i6 = i10;
                            if (i6 != 0) {
                                return i6;
                            }
                            if (i0(buffer.w(j2))) {
                                E("Expected value");
                                throw null;
                            }
                            F();
                            throw null;
                        }
                        i3 = i7;
                        i4 = i5;
                    }
                    if (i3 != 2) {
                        if (i3 != 2) {
                        }
                        this.f22279k = i4;
                        i6 = 17;
                        this.f22277i = 17;
                    } else {
                        if (i3 != 2) {
                        }
                        this.f22279k = i4;
                        i6 = 17;
                        this.f22277i = 17;
                    }
                    if (i6 != 0) {
                        return i6;
                    }
                    if (i0(buffer.w(j2))) {
                        E("Expected value");
                        throw null;
                    }
                    F();
                    throw null;
                }
            }
            if (i9 == 1) {
                buffer.readByte();
                this.f22277i = 4;
                return 4;
            }
        }
        if (i9 == 1 || i9 == 2) {
            F();
            throw null;
        }
        E("Unexpected value");
        throw null;
    }

    public final int H(String str, JsonReader.Options options) {
        int length = options.f22274a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(options.f22274a[i2])) {
                this.f22277i = 0;
                this.d[this.f22271b - 1] = str;
                return i2;
            }
        }
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f22277i = 0;
        this.f22272c[0] = 8;
        this.f22271b = 1;
        this.f22276h.h();
        this.g.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void h() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 3) {
            y(1);
            this.f22273e[this.f22271b - 1] = 0;
            this.f22277i = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_ARRAY but was ");
            sb.append(w());
            a.a(n(), sb);
        }
    }

    public final boolean i0(int i2) throws JsonEncodingException {
        if (i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13 || i2 == 32) {
            return false;
        }
        if (i2 != 35) {
            if (i2 == 44) {
                return false;
            }
            if (i2 != 47 && i2 != 61) {
                if (i2 == 123 || i2 == 125 || i2 == 58) {
                    return false;
                }
                if (i2 != 59) {
                    switch (i2) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        F();
        throw null;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void j() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 1) {
            y(3);
            this.f22277i = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_OBJECT but was ");
            sb.append(w());
            a.a(n(), sb);
        }
    }

    public final int j0(boolean z) throws JsonEncodingException, EOFException {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            RealBufferedSource realBufferedSource = this.g;
            if (!realBufferedSource.request(i3)) {
                if (!z) {
                    return -1;
                }
                d20.g("End of input");
                return 0;
            }
            long j2 = i2;
            Buffer buffer = this.f22276h;
            byte bW = buffer.w(j2);
            if (bW != 10 && bW != 32 && bW != 13 && bW != 9) {
                buffer.skip(j2);
                if (bW == 47) {
                    if (realBufferedSource.request(2L)) {
                        F();
                        throw null;
                    }
                } else if (bW == 35) {
                    F();
                    throw null;
                }
                return bW;
            }
            i2 = i3;
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void k() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG != 4) {
            StringBuilder sb = new StringBuilder("Expected END_ARRAY but was ");
            sb.append(w());
            a.a(n(), sb);
        } else {
            int i2 = this.f22271b;
            this.f22271b = i2 - 1;
            int[] iArr = this.f22273e;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.f22277i = 0;
        }
    }

    public final String k0(ByteString byteString) throws JsonEncodingException {
        StringBuilder sb = null;
        while (true) {
            long jW = this.g.W(byteString);
            if (jW == -1) {
                E("Unterminated string");
                throw null;
            }
            Buffer buffer = this.f22276h;
            if (buffer.w(jW) != 92) {
                if (sb == null) {
                    String strG = buffer.G(jW, Charsets.UTF_8);
                    buffer.readByte();
                    return strG;
                }
                sb.append(buffer.G(jW, Charsets.UTF_8));
                buffer.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(buffer.G(jW, Charsets.UTF_8));
            buffer.readByte();
            sb.append(m0());
        }
    }

    public final String l0() {
        long jW = this.g.W(o);
        Buffer buffer = this.f22276h;
        if (jW == -1) {
            return buffer.H();
        }
        buffer.getClass();
        return buffer.G(jW, Charsets.UTF_8);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final void m() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG != 2) {
            StringBuilder sb = new StringBuilder("Expected END_OBJECT but was ");
            sb.append(w());
            a.a(n(), sb);
            return;
        }
        int i2 = this.f22271b;
        int i3 = i2 - 1;
        this.f22271b = i3;
        this.d[i3] = null;
        int[] iArr = this.f22273e;
        int i4 = i2 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.f22277i = 0;
    }

    public final char m0() throws JsonEncodingException, EOFException {
        int i2;
        RealBufferedSource realBufferedSource = this.g;
        if (!realBufferedSource.request(1L)) {
            E("Unterminated escape sequence");
            throw null;
        }
        Buffer buffer = this.f22276h;
        byte b2 = buffer.readByte();
        if (b2 == 10 || b2 == 34 || b2 == 39 || b2 == 47 || b2 == 92) {
            return (char) b2;
        }
        if (b2 == 98) {
            return '\b';
        }
        if (b2 == 102) {
            return '\f';
        }
        if (b2 == 110) {
            return '\n';
        }
        if (b2 == 114) {
            return '\r';
        }
        if (b2 == 116) {
            return '\t';
        }
        if (b2 != 117) {
            E("Invalid escape sequence: \\" + ((char) b2));
            throw null;
        }
        if (!realBufferedSource.request(4L)) {
            d20.g("Unterminated escape sequence at path ".concat(n()));
            return (char) 0;
        }
        char c2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            byte bW = buffer.w(i3);
            char c3 = (char) (c2 << 4);
            if (bW >= 48 && bW <= 57) {
                i2 = bW + h.a.u;
            } else if (bW >= 97 && bW <= 102) {
                i2 = bW - 87;
            } else {
                if (bW < 65 || bW > 70) {
                    E("\\u".concat(buffer.G(4L, Charsets.UTF_8)));
                    throw null;
                }
                i2 = bW + h.a.n;
            }
            c2 = (char) (i2 + c3);
        }
        buffer.skip(4L);
        return c2;
    }

    public final void n0(ByteString byteString) throws JsonEncodingException, EOFException {
        while (true) {
            long jW = this.g.W(byteString);
            if (jW == -1) {
                E("Unterminated string");
                throw null;
            }
            Buffer buffer = this.f22276h;
            if (buffer.w(jW) != 92) {
                buffer.skip(jW + 1);
                return;
            } else {
                buffer.skip(jW + 1);
                m0();
            }
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final boolean o() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        return (iG == 2 || iG == 4 || iG == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final boolean p() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 5) {
            this.f22277i = 0;
            int[] iArr = this.f22273e;
            int i2 = this.f22271b - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (iG != 6) {
            StringBuilder sb = new StringBuilder("Expected a boolean but was ");
            sb.append(w());
            a.a(n(), sb);
            return false;
        }
        this.f22277i = 0;
        int[] iArr2 = this.f22273e;
        int i3 = this.f22271b - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final double q() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 16) {
            this.f22277i = 0;
            int[] iArr = this.f22273e;
            int i2 = this.f22271b - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f22278j;
        }
        if (iG == 17) {
            long j2 = this.f22279k;
            Buffer buffer = this.f22276h;
            buffer.getClass();
            this.l = buffer.G(j2, Charsets.UTF_8);
        } else if (iG == 9) {
            this.l = k0(n);
        } else if (iG == 8) {
            this.l = k0(m);
        } else if (iG == 10) {
            this.l = l0();
        } else if (iG != 11) {
            StringBuilder sb = new StringBuilder("Expected a double but was ");
            sb.append(w());
            a.a(n(), sb);
            return 0.0d;
        }
        this.f22277i = 11;
        try {
            double d = Double.parseDouble(this.l);
            if (Double.isNaN(d) || Double.isInfinite(d)) {
                throw new JsonEncodingException("JSON forbids NaN and infinities: " + d + " at path " + n());
            }
            this.l = null;
            this.f22277i = 0;
            int[] iArr2 = this.f22273e;
            int i3 = this.f22271b - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return d;
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.l + " at path " + n());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final int r() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 16) {
            long j2 = this.f22278j;
            int i2 = (int) j2;
            if (j2 == i2) {
                this.f22277i = 0;
                int[] iArr = this.f22273e;
                int i3 = this.f22271b - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new JsonDataException("Expected an int but was " + this.f22278j + " at path " + n());
        }
        if (iG == 17) {
            long j3 = this.f22279k;
            Buffer buffer = this.f22276h;
            buffer.getClass();
            this.l = buffer.G(j3, Charsets.UTF_8);
        } else if (iG == 9 || iG == 8) {
            String strK0 = iG == 9 ? k0(n) : k0(m);
            this.l = strK0;
            try {
                int i4 = Integer.parseInt(strK0);
                this.f22277i = 0;
                int[] iArr2 = this.f22273e;
                int i5 = this.f22271b - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return i4;
            } catch (NumberFormatException unused) {
            }
        } else if (iG != 11) {
            StringBuilder sb = new StringBuilder("Expected an int but was ");
            sb.append(w());
            a.a(n(), sb);
            return 0;
        }
        this.f22277i = 11;
        try {
            double d = Double.parseDouble(this.l);
            int i6 = (int) d;
            if (i6 == d) {
                this.l = null;
                this.f22277i = 0;
                int[] iArr3 = this.f22273e;
                int i7 = this.f22271b - 1;
                iArr3[i7] = iArr3[i7] + 1;
                return i6;
            }
            throw new JsonDataException("Expected an int but was " + this.l + " at path " + n());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.l + " at path " + n());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final String s() throws JsonEncodingException, EOFException {
        String strK0;
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 14) {
            strK0 = l0();
        } else if (iG == 13) {
            strK0 = k0(n);
        } else if (iG == 12) {
            strK0 = k0(m);
        } else {
            if (iG != 15) {
                StringBuilder sb = new StringBuilder("Expected a name but was ");
                sb.append(w());
                a.a(n(), sb);
                return null;
            }
            strK0 = this.l;
        }
        this.f22277i = 0;
        this.d[this.f22271b - 1] = strK0;
        return strK0;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final String t() throws JsonEncodingException, EOFException {
        String strG;
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG == 10) {
            strG = l0();
        } else if (iG == 9) {
            strG = k0(n);
        } else if (iG == 8) {
            strG = k0(m);
        } else if (iG == 11) {
            strG = this.l;
            this.l = null;
        } else if (iG == 16) {
            strG = Long.toString(this.f22278j);
        } else {
            if (iG != 17) {
                StringBuilder sb = new StringBuilder("Expected a string but was ");
                sb.append(w());
                a.a(n(), sb);
                return null;
            }
            long j2 = this.f22279k;
            Buffer buffer = this.f22276h;
            buffer.getClass();
            strG = buffer.G(j2, Charsets.UTF_8);
        }
        this.f22277i = 0;
        int[] iArr = this.f22273e;
        int i2 = this.f22271b - 1;
        iArr[i2] = iArr[i2] + 1;
        return strG;
    }

    public final String toString() {
        return "JsonReader(" + this.g + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final JsonReader.Token w() throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        switch (iG) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                a61.h();
                return null;
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public final int z(JsonReader.Options options) throws JsonEncodingException, EOFException {
        int iG = this.f22277i;
        if (iG == 0) {
            iG = G();
        }
        if (iG < 12 || iG > 15) {
            return -1;
        }
        if (iG == 15) {
            return H(this.l, options);
        }
        int iV1 = this.g.V1(options.f22275b);
        if (iV1 != -1) {
            this.f22277i = 0;
            this.d[this.f22271b - 1] = options.f22274a[iV1];
            return iV1;
        }
        String str = this.d[this.f22271b - 1];
        String strS = s();
        int iH = H(strS, options);
        if (iH == -1) {
            this.f22277i = 15;
            this.l = strS;
            this.d[this.f22271b - 1] = str;
        }
        return iH;
    }
}
