package com.squareup.moshi;

import com.batch.android.x0.h;
import defpackage.a61;
import defpackage.d20;
import defpackage.md;
import defpackage.r81;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import kotlin.text.Charsets;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes3.dex */
final class JsonUtf8Reader extends JsonReader {
    public static final ByteString n;
    public static final ByteString o;
    public static final ByteString p;
    public static final ByteString q;
    public static final ByteString r;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BufferedSource f43365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Buffer f43366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f43367j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f43368k;
    public int l;
    public String m;

    static {
        ByteString.f77398e.getClass();
        n = ByteString.Companion.c("'\\");
        o = ByteString.Companion.c("\"\\");
        p = ByteString.Companion.c("{}[]:, \n\t\r\f/\\;#=");
        q = ByteString.Companion.c("\n\r");
        r = ByteString.Companion.c("*/");
    }

    public JsonUtf8Reader(JsonUtf8Reader jsonUtf8Reader) {
        super(jsonUtf8Reader);
        this.f43367j = 0;
        RealBufferedSource realBufferedSourcePeek = jsonUtf8Reader.f43365h.peek();
        this.f43365h = realBufferedSourcePeek;
        this.f43366i = realBufferedSourcePeek.f77444c;
        this.f43367j = jsonUtf8Reader.f43367j;
        this.f43368k = jsonUtf8Reader.f43368k;
        this.l = jsonUtf8Reader.l;
        this.m = jsonUtf8Reader.m;
        try {
            realBufferedSourcePeek.D0(jsonUtf8Reader.f43366i.f77390c);
        } catch (IOException unused) {
            a61.h();
            throw null;
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final JsonReader B() {
        return new JsonUtf8Reader(this);
    }

    @Override // com.squareup.moshi.JsonReader
    public final void C() {
        if (o()) {
            this.m = t();
            this.f43367j = 11;
        }
    }

    public final String E0(ByteString byteString) throws JsonEncodingException {
        StringBuilder sb = null;
        while (true) {
            long jW = this.f43365h.W(byteString);
            if (jW == -1) {
                k0("Unterminated string");
                throw null;
            }
            Buffer buffer = this.f43366i;
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
            sb.append(M0());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final int G(JsonReader.Options options) throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 < 12 || iN0 > 15) {
            return -1;
        }
        if (iN0 == 15) {
            return o0(this.m, options);
        }
        int iV1 = this.f43365h.V1(options.f43364b);
        if (iV1 != -1) {
            this.f43367j = 0;
            this.d[this.f43358b - 1] = options.f43363a[iV1];
            return iV1;
        }
        String str = this.d[this.f43358b - 1];
        String strT = t();
        int iO0 = o0(strT, options);
        if (iO0 == -1) {
            this.f43367j = 15;
            this.m = strT;
            this.d[this.f43358b - 1] = str;
        }
        return iO0;
    }

    @Override // com.squareup.moshi.JsonReader
    public final int H(JsonReader.Options options) throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 < 8 || iN0 > 11) {
            return -1;
        }
        if (iN0 == 11) {
            return p0(this.m, options);
        }
        int iV1 = this.f43365h.V1(options.f43364b);
        if (iV1 != -1) {
            this.f43367j = 0;
            int[] iArr = this.f43360e;
            int i2 = this.f43358b - 1;
            iArr[i2] = iArr[i2] + 1;
            return iV1;
        }
        String strW = w();
        int iP0 = p0(strW, options);
        if (iP0 == -1) {
            this.f43367j = 11;
            this.m = strW;
            int[] iArr2 = this.f43360e;
            int i3 = this.f43358b - 1;
            iArr2[i3] = iArr2[i3] - 1;
        }
        return iP0;
    }

    public final String I0() {
        long jW = this.f43365h.W(p);
        Buffer buffer = this.f43366i;
        if (jW == -1) {
            return buffer.H();
        }
        buffer.getClass();
        return buffer.G(jW, Charsets.UTF_8);
    }

    public final char M0() throws EOFException, JsonEncodingException {
        int i2;
        BufferedSource bufferedSource = this.f43365h;
        if (!bufferedSource.request(1L)) {
            k0("Unterminated escape sequence");
            throw null;
        }
        Buffer buffer = this.f43366i;
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
            if (this.f43361f) {
                return (char) b2;
            }
            k0("Invalid escape sequence: \\" + ((char) b2));
            throw null;
        }
        if (!bufferedSource.request(4L)) {
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
                    k0("\\u".concat(buffer.G(4L, Charsets.UTF_8)));
                    throw null;
                }
                i2 = bW + h.a.n;
            }
            c2 = (char) (i2 + c3);
        }
        buffer.skip(4L);
        return c2;
    }

    public final void P0(ByteString byteString) throws EOFException, JsonEncodingException {
        while (true) {
            long jW = this.f43365h.W(byteString);
            if (jW == -1) {
                k0("Unterminated string");
                throw null;
            }
            Buffer buffer = this.f43366i;
            if (buffer.w(jW) != 92) {
                buffer.skip(jW + 1);
                return;
            } else {
                buffer.skip(jW + 1);
                M0();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f43367j = 0;
        this.f43359c[0] = 8;
        this.f43358b = 1;
        this.f43366i.h();
        this.f43365h.close();
    }

    @Override // com.squareup.moshi.JsonReader
    public final void h() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 3) {
            E(1);
            this.f43360e[this.f43358b - 1] = 0;
            this.f43367j = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_ARRAY but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void i0() throws EOFException, JsonEncodingException {
        if (this.g) {
            JsonReader.Token tokenZ = z();
            t();
            StringBuilder sb = new StringBuilder("Cannot skip unexpected ");
            sb.append(tokenZ);
            d20.n(sb, " at ", n());
            return;
        }
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 14) {
            long jW = this.f43365h.W(p);
            Buffer buffer = this.f43366i;
            if (jW == -1) {
                jW = buffer.f77390c;
            }
            buffer.skip(jW);
        } else if (iN0 == 13) {
            P0(o);
        } else if (iN0 == 12) {
            P0(n);
        } else if (iN0 != 15) {
            StringBuilder sb2 = new StringBuilder("Expected a name but was ");
            sb2.append(z());
            d20.n(sb2, " at path ", n());
            return;
        }
        this.f43367j = 0;
        this.d[this.f43358b - 1] = "null";
    }

    @Override // com.squareup.moshi.JsonReader
    public final void j() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 1) {
            E(3);
            this.f43367j = 0;
        } else {
            StringBuilder sb = new StringBuilder("Expected BEGIN_OBJECT but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void j0() throws EOFException, JsonEncodingException {
        if (this.g) {
            StringBuilder sb = new StringBuilder("Cannot skip unexpected ");
            sb.append(z());
            d20.n(sb, " at ", n());
            return;
        }
        int i2 = 0;
        do {
            int iN0 = this.f43367j;
            if (iN0 == 0) {
                iN0 = n0();
            }
            if (iN0 == 3) {
                E(1);
            } else {
                if (iN0 == 1) {
                    E(3);
                } else if (iN0 == 4) {
                    i2--;
                    if (i2 < 0) {
                        StringBuilder sb2 = new StringBuilder("Expected a value but was ");
                        sb2.append(z());
                        d20.n(sb2, " at path ", n());
                        return;
                    }
                    this.f43358b--;
                } else if (iN0 == 2) {
                    i2--;
                    if (i2 < 0) {
                        StringBuilder sb3 = new StringBuilder("Expected a value but was ");
                        sb3.append(z());
                        d20.n(sb3, " at path ", n());
                        return;
                    }
                    this.f43358b--;
                } else {
                    Buffer buffer = this.f43366i;
                    if (iN0 == 14 || iN0 == 10) {
                        long jW = this.f43365h.W(p);
                        if (jW == -1) {
                            jW = buffer.f77390c;
                        }
                        buffer.skip(jW);
                    } else if (iN0 == 9 || iN0 == 13) {
                        P0(o);
                    } else if (iN0 == 8 || iN0 == 12) {
                        P0(n);
                    } else if (iN0 == 17) {
                        buffer.skip(this.l);
                    } else if (iN0 == 18) {
                        StringBuilder sb4 = new StringBuilder("Expected a value but was ");
                        sb4.append(z());
                        d20.n(sb4, " at path ", n());
                        return;
                    }
                }
                this.f43367j = 0;
            }
            i2++;
            this.f43367j = 0;
        } while (i2 != 0);
        int[] iArr = this.f43360e;
        int i3 = this.f43358b - 1;
        iArr[i3] = iArr[i3] + 1;
        this.d[i3] = "null";
    }

    @Override // com.squareup.moshi.JsonReader
    public final void k() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 != 4) {
            StringBuilder sb = new StringBuilder("Expected END_ARRAY but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
        } else {
            int i2 = this.f43358b;
            this.f43358b = i2 - 1;
            int[] iArr = this.f43360e;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.f43367j = 0;
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void m() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 != 2) {
            StringBuilder sb = new StringBuilder("Expected END_OBJECT but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
            return;
        }
        int i2 = this.f43358b;
        int i3 = i2 - 1;
        this.f43358b = i3;
        this.d[i3] = null;
        int[] iArr = this.f43360e;
        int i4 = i2 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.f43367j = 0;
    }

    public final void m0() throws JsonEncodingException {
        if (this.f43361f) {
            return;
        }
        k0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x014d  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:165:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:167:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:170:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:175:0x01ff A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:176:0x0200  */
    /* JADX WARN: Code duplicated, block: B:178:0x020c  */
    /* JADX WARN: Code duplicated, block: B:180:0x0214  */
    /* JADX WARN: Code duplicated, block: B:238:0x0172 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0132 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:94:0x0133  */
    /* JADX WARN: Code duplicated, block: B:98:0x0144  */
    public final int n0() throws EOFException, JsonEncodingException {
        int i2;
        String str;
        String str2;
        long j2;
        int i3;
        char cW;
        int i4;
        char c2;
        int i5;
        int i6;
        byte bW;
        char c3;
        int[] iArr = this.f43359c;
        int i7 = this.f43358b - 1;
        int i8 = iArr[i7];
        BufferedSource bufferedSource = this.f43365h;
        long j3 = 0;
        Buffer buffer = this.f43366i;
        if (i8 == 1) {
            iArr[i7] = 2;
        } else if (i8 == 2) {
            int iV0 = v0(true);
            buffer.readByte();
            if (iV0 != 44) {
                if (iV0 != 59) {
                    if (iV0 == 93) {
                        this.f43367j = 4;
                        return 4;
                    }
                    k0("Unterminated array");
                    throw null;
                }
                m0();
            }
        } else {
            if (i8 == 3 || i8 == 5) {
                iArr[i7] = 4;
                if (i8 == 5) {
                    int iV1 = v0(true);
                    buffer.readByte();
                    if (iV1 != 44) {
                        if (iV1 != 59) {
                            if (iV1 == 125) {
                                this.f43367j = 2;
                                return 2;
                            }
                            k0("Unterminated object");
                            throw null;
                        }
                        m0();
                    }
                }
                int iV2 = v0(true);
                if (iV2 == 34) {
                    buffer.readByte();
                    this.f43367j = 13;
                    return 13;
                }
                if (iV2 == 39) {
                    buffer.readByte();
                    m0();
                    this.f43367j = 12;
                    return 12;
                }
                if (iV2 != 125) {
                    m0();
                    if (q0((char) iV2)) {
                        this.f43367j = 14;
                        return 14;
                    }
                    k0("Expected name");
                    throw null;
                }
                if (i8 == 5) {
                    k0("Expected name");
                    throw null;
                }
                buffer.readByte();
                this.f43367j = 2;
                return 2;
            }
            if (i8 == 4) {
                iArr[i7] = 5;
                int iV3 = v0(true);
                buffer.readByte();
                if (iV3 != 58) {
                    if (iV3 != 61) {
                        k0("Expected ':'");
                        throw null;
                    }
                    m0();
                    if (bufferedSource.request(1L) && buffer.w(0L) == 62) {
                        buffer.readByte();
                    }
                }
            } else if (i8 == 6) {
                iArr[i7] = 7;
            } else if (i8 == 7) {
                if (v0(false) == -1) {
                    this.f43367j = 18;
                    return 18;
                }
                m0();
            } else {
                if (i8 == 9) {
                    throw null;
                }
                if (i8 == 8) {
                    md.k("JsonReader is closed");
                    return 0;
                }
            }
        }
        int iV4 = v0(true);
        if (iV4 == 34) {
            buffer.readByte();
            this.f43367j = 9;
            return 9;
        }
        if (iV4 == 39) {
            m0();
            buffer.readByte();
            this.f43367j = 8;
            return 8;
        }
        if (iV4 != 44 && iV4 != 59) {
            if (iV4 == 91) {
                buffer.readByte();
                this.f43367j = 3;
                return 3;
            }
            if (iV4 != 93) {
                if (iV4 == 123) {
                    buffer.readByte();
                    this.f43367j = 1;
                    return 1;
                }
                byte bW2 = buffer.w(0L);
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
                        }
                        i3 = 0;
                        if (i3 != 0) {
                            return i3;
                        }
                        boolean z = true;
                        long j4 = j2;
                        i4 = 0;
                        boolean z2 = false;
                        c2 = 0;
                        while (true) {
                            i5 = i4 + 1;
                            if (bufferedSource.request(i5)) {
                                bW = buffer.w(i4);
                                if (bW != 43) {
                                    if (bW != 69 || bW == 101) {
                                        if (c2 != 2 || c2 == 4) {
                                            c2 = 5;
                                            i4 = i5;
                                        } else {
                                            i6 = 0;
                                        }
                                    } else if (bW == 45) {
                                        c3 = 6;
                                        if (c2 == 0) {
                                            z2 = true;
                                            c2 = 1;
                                        } else {
                                            if (c2 != 5) {
                                                i6 = 0;
                                            }
                                            c2 = c3;
                                        }
                                        i4 = i5;
                                    } else if (bW != 46) {
                                        if (bW >= 48 && bW <= 57) {
                                            if (c2 == 1 || c2 == 0) {
                                                j4 = -(bW + h.a.u);
                                                c2 = 2;
                                            } else if (c2 == 2) {
                                                if (j4 != j2) {
                                                    long j5 = (10 * j4) - ((long) (bW + h.a.u));
                                                    z &= j4 > -922337203685477580L || (j4 == -922337203685477580L && j5 < j4);
                                                    j4 = j5;
                                                }
                                            } else if (c2 == 3) {
                                                c2 = 4;
                                            } else if (c2 == 5 || c2 == 6) {
                                                c2 = 7;
                                            }
                                            i4 = i5;
                                        } else if (!q0(bW)) {
                                        }
                                        i6 = 0;
                                    } else if (c2 == 2) {
                                        c2 = 3;
                                        i4 = i5;
                                    } else {
                                        i6 = 0;
                                    }
                                    if (i6 != 0) {
                                        return i6;
                                    }
                                    if (q0(buffer.w(j2))) {
                                        k0("Expected value");
                                        throw null;
                                    }
                                    m0();
                                    this.f43367j = 10;
                                    return 10;
                                }
                                c3 = 6;
                                if (c2 != 5) {
                                    i6 = 0;
                                    if (i6 != 0) {
                                        return i6;
                                    }
                                    if (q0(buffer.w(j2))) {
                                        k0("Expected value");
                                        throw null;
                                    }
                                    m0();
                                    this.f43367j = 10;
                                    return 10;
                                }
                                c2 = c3;
                                i4 = i5;
                            }
                            if (c2 != 2 && z && ((j4 != Long.MIN_VALUE || z2) && (j4 != j2 || !z2))) {
                                if (!z2) {
                                    j4 = -j4;
                                }
                                this.f43368k = j4;
                                buffer.skip(i4);
                                i6 = 16;
                                this.f43367j = 16;
                            } else if (c2 != 2 || c2 == 4 || c2 == 7) {
                                this.l = i4;
                                i6 = 17;
                                this.f43367j = 17;
                            } else {
                                i6 = 0;
                            }
                            if (i6 != 0) {
                                return i6;
                            }
                            if (q0(buffer.w(j2))) {
                                k0("Expected value");
                                throw null;
                            }
                            m0();
                            this.f43367j = 10;
                            return 10;
                        }
                    }
                    i2 = 6;
                    str2 = "false";
                    str = "FALSE";
                }
                int length = str2.length();
                int i9 = 1;
                while (true) {
                    if (i9 >= length) {
                        j2 = j3;
                        if (!bufferedSource.request(length + 1) || !q0(buffer.w(length))) {
                            buffer.skip(length);
                            this.f43367j = i2;
                            i3 = i2;
                            break;
                        }
                    } else {
                        int i10 = i9 + 1;
                        j2 = j3;
                        if (bufferedSource.request(i10) && ((cW = buffer.w(i9)) == str2.charAt(i9) || cW == str.charAt(i9))) {
                            i9 = i10;
                            j3 = j2;
                        }
                    }
                    i3 = 0;
                    break;
                }
                if (i3 != 0) {
                    return i3;
                }
                boolean z3 = true;
                long j6 = j2;
                i4 = 0;
                boolean z4 = false;
                c2 = 0;
                while (true) {
                    i5 = i4 + 1;
                    if (bufferedSource.request(i5)) {
                        bW = buffer.w(i4);
                        if (bW != 43) {
                            if (bW != 69) {
                                if (c2 != 2) {
                                }
                                c2 = 5;
                                i4 = i5;
                            } else {
                                if (c2 != 2) {
                                }
                                c2 = 5;
                                i4 = i5;
                            }
                            if (i6 != 0) {
                                return i6;
                            }
                            if (q0(buffer.w(j2))) {
                                k0("Expected value");
                                throw null;
                            }
                            m0();
                            this.f43367j = 10;
                            return 10;
                        }
                        c3 = 6;
                        if (c2 != 5) {
                            i6 = 0;
                            if (i6 != 0) {
                                return i6;
                            }
                            if (q0(buffer.w(j2))) {
                                k0("Expected value");
                                throw null;
                            }
                            m0();
                            this.f43367j = 10;
                            return 10;
                        }
                        c2 = c3;
                        i4 = i5;
                    }
                    if (c2 != 2) {
                        if (c2 != 2) {
                        }
                        this.l = i4;
                        i6 = 17;
                        this.f43367j = 17;
                    } else {
                        if (c2 != 2) {
                        }
                        this.l = i4;
                        i6 = 17;
                        this.f43367j = 17;
                    }
                    if (i6 != 0) {
                        return i6;
                    }
                    if (q0(buffer.w(j2))) {
                        k0("Expected value");
                        throw null;
                    }
                    m0();
                    this.f43367j = 10;
                    return 10;
                }
            }
            if (i8 == 1) {
                buffer.readByte();
                this.f43367j = 4;
                return 4;
            }
        }
        if (i8 != 1 && i8 != 2) {
            k0("Unexpected value");
            throw null;
        }
        m0();
        this.f43367j = 7;
        return 7;
    }

    @Override // com.squareup.moshi.JsonReader
    public final boolean o() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        return (iN0 == 2 || iN0 == 4 || iN0 == 18) ? false : true;
    }

    public final int o0(String str, JsonReader.Options options) {
        int length = options.f43363a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(options.f43363a[i2])) {
                this.f43367j = 0;
                this.d[this.f43358b - 1] = str;
                return i2;
            }
        }
        return -1;
    }

    @Override // com.squareup.moshi.JsonReader
    public final boolean p() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 5) {
            this.f43367j = 0;
            int[] iArr = this.f43360e;
            int i2 = this.f43358b - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (iN0 != 6) {
            StringBuilder sb = new StringBuilder("Expected a boolean but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
            return false;
        }
        this.f43367j = 0;
        int[] iArr2 = this.f43360e;
        int i3 = this.f43358b - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    public final int p0(String str, JsonReader.Options options) {
        int length = options.f43363a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(options.f43363a[i2])) {
                this.f43367j = 0;
                int[] iArr = this.f43360e;
                int i3 = this.f43358b - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
        }
        return -1;
    }

    @Override // com.squareup.moshi.JsonReader
    public final double q() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 16) {
            this.f43367j = 0;
            int[] iArr = this.f43360e;
            int i2 = this.f43358b - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f43368k;
        }
        if (iN0 == 17) {
            long j2 = this.l;
            Buffer buffer = this.f43366i;
            buffer.getClass();
            this.m = buffer.G(j2, Charsets.UTF_8);
        } else if (iN0 == 9) {
            this.m = E0(o);
        } else if (iN0 == 8) {
            this.m = E0(n);
        } else if (iN0 == 10) {
            this.m = I0();
        } else if (iN0 != 11) {
            StringBuilder sb = new StringBuilder("Expected a double but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
            return 0.0d;
        }
        this.f43367j = 11;
        try {
            double d = Double.parseDouble(this.m);
            if (this.f43361f || !(Double.isNaN(d) || Double.isInfinite(d))) {
                this.m = null;
                this.f43367j = 0;
                int[] iArr2 = this.f43360e;
                int i3 = this.f43358b - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return d;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + d + " at path " + n());
        } catch (NumberFormatException unused) {
            d20.i("Expected a double but was ", this.m, " at path ", n());
            return 0.0d;
        }
    }

    public final boolean q0(int i2) throws JsonEncodingException {
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
        m0();
        return false;
    }

    @Override // com.squareup.moshi.JsonReader
    public final int r() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 16) {
            long j2 = this.f43368k;
            int i2 = (int) j2;
            if (j2 == i2) {
                this.f43367j = 0;
                int[] iArr = this.f43360e;
                int i3 = this.f43358b - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new JsonDataException("Expected an int but was " + this.f43368k + " at path " + n());
        }
        if (iN0 == 17) {
            long j3 = this.l;
            Buffer buffer = this.f43366i;
            buffer.getClass();
            this.m = buffer.G(j3, Charsets.UTF_8);
        } else if (iN0 == 9 || iN0 == 8) {
            String strE0 = iN0 == 9 ? E0(o) : E0(n);
            this.m = strE0;
            try {
                int i4 = Integer.parseInt(strE0);
                this.f43367j = 0;
                int[] iArr2 = this.f43360e;
                int i5 = this.f43358b - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return i4;
            } catch (NumberFormatException unused) {
            }
        } else if (iN0 != 11) {
            StringBuilder sb = new StringBuilder("Expected an int but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
            return 0;
        }
        this.f43367j = 11;
        try {
            double d = Double.parseDouble(this.m);
            int i6 = (int) d;
            if (i6 != d) {
                d20.i("Expected an int but was ", this.m, " at path ", n());
                return 0;
            }
            this.m = null;
            this.f43367j = 0;
            int[] iArr3 = this.f43360e;
            int i7 = this.f43358b - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        } catch (NumberFormatException unused2) {
            d20.i("Expected an int but was ", this.m, " at path ", n());
            return 0;
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final long s() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 16) {
            this.f43367j = 0;
            int[] iArr = this.f43360e;
            int i2 = this.f43358b - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f43368k;
        }
        if (iN0 == 17) {
            long j2 = this.l;
            Buffer buffer = this.f43366i;
            buffer.getClass();
            this.m = buffer.G(j2, Charsets.UTF_8);
        } else if (iN0 == 9 || iN0 == 8) {
            String strE0 = iN0 == 9 ? E0(o) : E0(n);
            this.m = strE0;
            try {
                long j3 = Long.parseLong(strE0);
                this.f43367j = 0;
                int[] iArr2 = this.f43360e;
                int i3 = this.f43358b - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return j3;
            } catch (NumberFormatException unused) {
            }
        } else if (iN0 != 11) {
            StringBuilder sb = new StringBuilder("Expected a long but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
            return 0L;
        }
        this.f43367j = 11;
        try {
            long jLongValueExact = new BigDecimal(this.m).longValueExact();
            this.m = null;
            this.f43367j = 0;
            int[] iArr3 = this.f43360e;
            int i4 = this.f43358b - 1;
            iArr3[i4] = iArr3[i4] + 1;
            return jLongValueExact;
        } catch (ArithmeticException | NumberFormatException unused2) {
            d20.i("Expected a long but was ", this.m, " at path ", n());
            return 0L;
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final String t() throws EOFException, JsonEncodingException {
        String strE0;
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 14) {
            strE0 = I0();
        } else if (iN0 == 13) {
            strE0 = E0(o);
        } else if (iN0 == 12) {
            strE0 = E0(n);
        } else {
            if (iN0 != 15) {
                StringBuilder sb = new StringBuilder("Expected a name but was ");
                sb.append(z());
                d20.n(sb, " at path ", n());
                return null;
            }
            strE0 = this.m;
            this.m = null;
        }
        this.f43367j = 0;
        this.d[this.f43358b - 1] = strE0;
        return strE0;
    }

    public final String toString() {
        return "JsonReader(" + this.f43365h + ")";
    }

    @Override // com.squareup.moshi.JsonReader
    public final void u() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 != 7) {
            StringBuilder sb = new StringBuilder("Expected null but was ");
            sb.append(z());
            d20.n(sb, " at path ", n());
        } else {
            this.f43367j = 0;
            int[] iArr = this.f43360e;
            int i2 = this.f43358b - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public final int v0(boolean z) throws EOFException, JsonEncodingException {
        BufferedSource bufferedSource;
        long j2;
        Buffer buffer;
        byte bW;
        while (true) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                bufferedSource = this.f43365h;
                if (!bufferedSource.request(i3)) {
                    if (!z) {
                        return -1;
                    }
                    d20.g("End of input");
                    return 0;
                }
                j2 = i2;
                buffer = this.f43366i;
                bW = buffer.w(j2);
                if (bW == 10 || bW == 32 || bW == 13 || bW == 9) {
                    i2 = i3;
                }
            }
            buffer.skip(j2);
            ByteString byteString = q;
            if (bW == 47) {
                if (bufferedSource.request(2L)) {
                    m0();
                    byte bW2 = buffer.w(1L);
                    if (bW2 == 42) {
                        buffer.readByte();
                        buffer.readByte();
                        ByteString byteString2 = r;
                        long jT = bufferedSource.T(byteString2);
                        boolean z2 = jT != -1;
                        buffer.skip(z2 ? jT + ((long) byteString2.data.length) : buffer.f77390c);
                        if (!z2) {
                            k0("Unterminated comment");
                            throw null;
                        }
                    } else if (bW2 == 47) {
                        buffer.readByte();
                        buffer.readByte();
                        long jW = bufferedSource.W(byteString);
                        buffer.skip(jW != -1 ? jW + 1 : buffer.f77390c);
                    }
                }
                return bW;
            }
            if (bW != 35) {
                return bW;
            }
            m0();
            long jW2 = bufferedSource.W(byteString);
            buffer.skip(jW2 != -1 ? jW2 + 1 : buffer.f77390c);
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final String w() throws EOFException, JsonEncodingException {
        String strG;
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        if (iN0 == 10) {
            strG = I0();
        } else if (iN0 == 9) {
            strG = E0(o);
        } else if (iN0 == 8) {
            strG = E0(n);
        } else if (iN0 == 11) {
            strG = this.m;
            this.m = null;
        } else if (iN0 == 16) {
            strG = Long.toString(this.f43368k);
        } else {
            if (iN0 != 17) {
                StringBuilder sb = new StringBuilder("Expected a string but was ");
                sb.append(z());
                d20.n(sb, " at path ", n());
                return null;
            }
            long j2 = this.l;
            Buffer buffer = this.f43366i;
            buffer.getClass();
            strG = buffer.G(j2, Charsets.UTF_8);
        }
        this.f43367j = 0;
        int[] iArr = this.f43360e;
        int i2 = this.f43358b - 1;
        iArr[i2] = iArr[i2] + 1;
        return strG;
    }

    @Override // com.squareup.moshi.JsonReader
    public final JsonReader.Token z() throws EOFException, JsonEncodingException {
        int iN0 = this.f43367j;
        if (iN0 == 0) {
            iN0 = n0();
        }
        switch (iN0) {
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

    public JsonUtf8Reader(BufferedSource bufferedSource) {
        this.f43367j = 0;
        if (bufferedSource != null) {
            this.f43365h = bufferedSource;
            this.f43366i = bufferedSource.getF77441c();
            E(6);
            return;
        }
        r81.d("source == null");
        throw null;
    }
}
