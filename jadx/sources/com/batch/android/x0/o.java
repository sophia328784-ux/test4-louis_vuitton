package com.batch.android.x0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.z0.a0;
import com.batch.android.z0.q;
import com.batch.android.z0.x;
import com.batch.android.z0.y;
import com.batch.android.z0.z;
import defpackage.a61;
import defpackage.fc;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes2.dex */
public class o implements Closeable {
    private static final MessageBuffer q = MessageBuffer.wrap(new byte[0]);
    private static final String r = "";
    static final /* synthetic */ boolean s = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f24200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f24201c;
    private final CodingErrorAction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CodingErrorAction f24202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f24203f;
    private final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.batch.android.y0.g f24204h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f24206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f24207k;
    private int m;
    private StringBuilder n;
    private CharsetDecoder o;
    private CharBuffer p;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MessageBuffer f24205i = q;
    private final MessageBuffer l = MessageBuffer.allocate(8);

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f24208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f24209b;

        static {
            int[] iArr = new int[z.values().length];
            f24209b = iArr;
            try {
                iArr[z.NIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24209b[z.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24209b[z.INTEGER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f24209b[z.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f24209b[z.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f24209b[z.BINARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f24209b[z.ARRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f24209b[z.MAP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f24209b[z.EXTENSION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[c.values().length];
            f24208a = iArr2;
            try {
                iArr2[c.f24161c.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f24208a[c.L.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f24208a[c.f24165i.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f24208a[c.g.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f24208a[c.d.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f24208a[c.f24162e.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f24208a[c.f24163f.ordinal()] = 7;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f24208a[c.v.ordinal()] = 8;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f24208a[c.r.ordinal()] = 9;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f24208a[c.w.ordinal()] = 10;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f24208a[c.s.ordinal()] = 11;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f24208a[c.x.ordinal()] = 12;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f24208a[c.t.ordinal()] = 13;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f24208a[c.p.ordinal()] = 14;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f24208a[c.y.ordinal()] = 15;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f24208a[c.u.ordinal()] = 16;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f24208a[c.q.ordinal()] = 17;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f24208a[c.f24166j.ordinal()] = 18;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f24208a[c.E.ordinal()] = 19;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f24208a[c.f24167k.ordinal()] = 20;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f24208a[c.F.ordinal()] = 21;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f24208a[c.l.ordinal()] = 22;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f24208a[c.G.ordinal()] = 23;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f24208a[c.z.ordinal()] = 24;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f24208a[c.A.ordinal()] = 25;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f24208a[c.B.ordinal()] = 26;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f24208a[c.C.ordinal()] = 27;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f24208a[c.D.ordinal()] = 28;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f24208a[c.m.ordinal()] = 29;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f24208a[c.n.ordinal()] = 30;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f24208a[c.o.ordinal()] = 31;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f24208a[c.H.ordinal()] = 32;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f24208a[c.I.ordinal()] = 33;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f24208a[c.J.ordinal()] = 34;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f24208a[c.K.ordinal()] = 35;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f24208a[c.f24164h.ordinal()] = 36;
            } catch (NoSuchFieldError unused45) {
            }
        }
    }

    public o(com.batch.android.y0.g gVar, h.c cVar) {
        this.f24204h = (com.batch.android.y0.g) p.a(gVar, "MessageBufferInput is null");
        this.f24200b = cVar.d();
        this.f24201c = cVar.c();
        this.d = cVar.a();
        this.f24202e = cVar.b();
        this.f24203f = cVar.g();
        this.g = cVar.f();
    }

    private MessageBuffer b() throws IOException {
        MessageBuffer next = this.f24204h.next();
        if (next == null) {
            throw new e();
        }
        if (s || this.f24205i != null) {
            this.f24207k += (long) this.f24205i.size();
            return next;
        }
        a61.h();
        return null;
    }

    private String c(int i2) {
        CodingErrorAction codingErrorAction = this.d;
        CodingErrorAction codingErrorAction2 = CodingErrorAction.REPLACE;
        if (codingErrorAction == codingErrorAction2 && this.f24202e == codingErrorAction2 && this.f24205i.hasArray()) {
            String str = new String(this.f24205i.array(), this.f24205i.arrayOffset() + this.f24206j, i2, h.f24170a);
            this.f24206j += i2;
            return str;
        }
        try {
            CharBuffer charBufferDecode = this.o.decode(this.f24205i.sliceAsByteBuffer(this.f24206j, i2));
            this.f24206j += i2;
            return charBufferDecode.toString();
        } catch (CharacterCodingException e2) {
            throw new l(e2);
        }
    }

    private static f d(int i2) {
        return new f(BigInteger.valueOf(i2));
    }

    private static f e(int i2) {
        return new f(BigInteger.valueOf(((long) (i2 & Integer.MAX_VALUE)) + 2147483648L));
    }

    private static k f(int i2) {
        return new k(((long) (i2 & Integer.MAX_VALUE)) + 2147483648L);
    }

    private MessageBuffer g(int i2) throws IOException {
        int size = this.f24205i.size();
        int i3 = this.f24206j;
        int i4 = size - i3;
        if (i4 >= i2) {
            this.m = i3;
            this.f24206j = i3 + i2;
            return this.f24205i;
        }
        if (i4 > 0) {
            this.l.putMessageBuffer(0, this.f24205i, i3, i4);
            i2 -= i4;
        } else {
            i4 = 0;
        }
        while (true) {
            f();
            int size2 = this.f24205i.size();
            MessageBuffer messageBuffer = this.l;
            if (size2 >= i2) {
                messageBuffer.putMessageBuffer(i4, this.f24205i, 0, i2);
                this.f24206j = i2;
                this.m = 0;
                return this.l;
            }
            messageBuffer.putMessageBuffer(i4, this.f24205i, 0, size2);
            i2 -= size2;
            i4 += size2;
        }
    }

    private double h() throws IOException {
        return g(8).getDouble(this.m);
    }

    private void j(int i2) throws IOException {
        while (true) {
            int size = this.f24205i.size();
            int i3 = this.f24206j;
            int i4 = size - i3;
            if (i4 >= i2) {
                this.f24206j = i3 + i2;
                return;
            } else {
                this.f24206j = i3 + i4;
                i2 -= i4;
                f();
            }
        }
    }

    private int l() throws IOException {
        return o() & HPKE.aead_EXPORT_ONLY;
    }

    private int m() throws IOException {
        int iJ = j();
        if (iJ >= 0) {
            return iJ;
        }
        throw f(iJ);
    }

    private int n() throws IOException {
        return g() & 255;
    }

    private short o() throws IOException {
        return g(2).getShort(this.m);
    }

    private void p() {
        CharsetDecoder charsetDecoder = this.o;
        if (charsetDecoder == null) {
            this.p = CharBuffer.allocate(this.g);
            this.o = h.f24170a.newDecoder().onMalformedInput(this.d).onUnmappableCharacter(this.f24202e);
        } else {
            charsetDecoder.reset();
        }
        StringBuilder sb = this.n;
        if (sb == null) {
            this.n = new StringBuilder();
        } else {
            sb.setLength(0);
        }
    }

    public int A() throws IOException {
        byte bG = g();
        if (h.a.a(bG)) {
            return bG;
        }
        switch (bG) {
            case -52:
                return g() & 255;
            case -51:
                return o() & HPKE.aead_EXPORT_ONLY;
            case -50:
                int iJ = j();
                if (iJ >= 0) {
                    return iJ;
                }
                throw e(iJ);
            case -49:
                long jK = k();
                if (jK < 0 || jK > 2147483647L) {
                    throw b(jK);
                }
                return (int) jK;
            case -48:
                return g();
            case -47:
                return o();
            case -46:
                return j();
            case -45:
                long jK2 = k();
                if (jK2 < -2147483648L || jK2 > 2147483647L) {
                    throw a(jK2);
                }
                return (int) jK2;
            default:
                throw a("Integer", bG);
        }
    }

    public long B() throws IOException {
        byte bG = g();
        if (h.a.a(bG)) {
            return bG;
        }
        switch (bG) {
            case -52:
                return g() & 255;
            case -51:
                return o() & HPKE.aead_EXPORT_ONLY;
            case -50:
                int iJ = j();
                return iJ < 0 ? ((long) (iJ & Integer.MAX_VALUE)) + 2147483648L : iJ;
            case -49:
                long jK = k();
                if (jK >= 0) {
                    return jK;
                }
                throw b(jK);
            case -48:
                return g();
            case -47:
                return o();
            case -46:
                return j();
            case -45:
                return k();
            default:
                throw a("Integer", bG);
        }
    }

    public int C() throws IOException {
        byte bG = g();
        if (h.a.d(bG)) {
            return bG & 15;
        }
        if (bG == -34) {
            return l();
        }
        if (bG == -33) {
            return m();
        }
        throw a("Map", bG);
    }

    public void D() throws IOException {
        byte bG = g();
        if (bG != -64) {
            throw a("Nil", bG);
        }
    }

    public int E() throws IOException {
        int iB;
        byte bG = g();
        if (h.a.e(bG)) {
            return bG & 31;
        }
        int iC = c(bG);
        if (iC >= 0) {
            return iC;
        }
        if (!this.f24201c || (iB = b(bG)) < 0) {
            throw a("String", bG);
        }
        return iB;
    }

    public short F() throws IOException {
        int iG;
        long jK;
        byte bG = g();
        if (h.a.a(bG)) {
            return bG;
        }
        switch (bG) {
            case -52:
                iG = g() & 255;
                return (short) iG;
            case -51:
                short sO = o();
                if (sO >= 0) {
                    return sO;
                }
                throw b(sO);
            case -50:
                int iJ = j();
                if (iJ < 0 || iJ > 32767) {
                    throw e(iJ);
                }
                return (short) iJ;
            case -49:
                jK = k();
                if (jK < 0 || jK > 32767) {
                    throw b(jK);
                }
                iG = (int) jK;
                return (short) iG;
            case -48:
                iG = g();
                return (short) iG;
            case -47:
                return o();
            case -46:
                int iJ2 = j();
                if (iJ2 < -32768 || iJ2 > 32767) {
                    throw d(iJ2);
                }
                return (short) iJ2;
            case -45:
                jK = k();
                if (jK < -32768 || jK > 32767) {
                    throw a(jK);
                }
                iG = (int) jK;
                return (short) iG;
            default:
                throw a("Integer", bG);
        }
    }

    public String G() throws IOException {
        int iRemaining;
        MessageBuffer messageBuffer;
        int iE = E();
        if (iE == 0) {
            return "";
        }
        if (iE > this.f24203f) {
            throw new k(String.format("cannot unpack a String of size larger than %,d: %,d", Integer.valueOf(this.f24203f), Integer.valueOf(iE)), iE);
        }
        p();
        if (this.f24205i.size() - this.f24206j >= iE) {
            return c(iE);
        }
        while (iE > 0) {
            try {
                int size = this.f24205i.size();
                int i2 = this.f24206j;
                int i3 = size - i2;
                if (i3 >= iE) {
                    this.n.append(c(iE));
                    break;
                }
                if (i3 == 0) {
                    f();
                } else {
                    ByteBuffer byteBufferSliceAsByteBuffer = this.f24205i.sliceAsByteBuffer(i2, i3);
                    int iPosition = byteBufferSliceAsByteBuffer.position();
                    this.p.clear();
                    CoderResult coderResultDecode = this.o.decode(byteBufferSliceAsByteBuffer, this.p, false);
                    int iPosition2 = byteBufferSliceAsByteBuffer.position() - iPosition;
                    this.f24206j += iPosition2;
                    iE -= iPosition2;
                    this.n.append(this.p.flip());
                    if (coderResultDecode.isError()) {
                        a(coderResultDecode);
                    }
                    if (coderResultDecode.isUnderflow() && iPosition2 < i3) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(d(this.f24205i.getByte(this.f24206j)));
                        MessageBuffer messageBuffer2 = this.f24205i;
                        messageBuffer2.getBytes(this.f24206j, messageBuffer2.size() - this.f24206j, byteBufferAllocate);
                        while (true) {
                            f();
                            iRemaining = byteBufferAllocate.remaining();
                            int size2 = this.f24205i.size();
                            messageBuffer = this.f24205i;
                            if (size2 >= iRemaining) {
                                break;
                            }
                            messageBuffer.getBytes(0, messageBuffer.size(), byteBufferAllocate);
                            this.f24206j = this.f24205i.size();
                        }
                        messageBuffer.getBytes(0, iRemaining, byteBufferAllocate);
                        this.f24206j = iRemaining;
                        byteBufferAllocate.position(0);
                        this.p.clear();
                        CoderResult coderResultDecode2 = this.o.decode(byteBufferAllocate, this.p, false);
                        if (coderResultDecode2.isError()) {
                            a(coderResultDecode2);
                        }
                        if (coderResultDecode2.isOverflow() || (coderResultDecode2.isUnderflow() && byteBufferAllocate.position() < byteBufferAllocate.limit())) {
                            try {
                                coderResultDecode2.throwException();
                                throw new d("Unexpected UTF-8 multibyte sequence");
                            } catch (Exception e2) {
                                throw new d("Unexpected UTF-8 multibyte sequence", e2);
                            }
                        }
                        iE -= byteBufferAllocate.limit();
                        this.n.append(this.p.flip());
                    }
                }
            } catch (CharacterCodingException e3) {
                throw new l(e3);
            }
        }
        return this.n.toString();
    }

    public q H() throws IOException {
        c cVarC = c();
        int i2 = 0;
        switch (a.f24209b[cVarC.b().ordinal()]) {
            case 1:
                g();
                return y.d();
            case 2:
                return y.a(v());
            case 3:
                return cVarC == c.u ? y.a(t()) : y.a(B());
            case 4:
                return y.a(x());
            case 5:
                return y.b(h(E()), true);
            case 6:
                return y.a(h(u()), true);
            case 7:
                int iS = s();
                x[] xVarArr = new x[iS];
                while (i2 < iS) {
                    xVarArr[i2] = H();
                    i2++;
                }
                return y.a(xVarArr, true);
            case 8:
                int iC = C() * 2;
                x[] xVarArr2 = new x[iC];
                while (i2 < iC) {
                    xVarArr2[i2] = H();
                    xVarArr2[i2 + 1] = H();
                    i2 += 2;
                }
                return y.b(xVarArr2, true);
            case 9:
                com.batch.android.x0.a aVarY = y();
                return y.a(aVarY.b(), h(aVarY.a()));
            default:
                throw new g("Unknown value type");
        }
    }

    public a0 a(a0 a0Var) throws IOException {
        c cVarC = c();
        int i2 = 0;
        switch (a.f24209b[cVarC.b().ordinal()]) {
            case 1:
                g();
                a0Var.Z();
                return a0Var;
            case 2:
                a0Var.a(v());
                return a0Var;
            case 3:
                if (a.f24208a[cVarC.ordinal()] != 16) {
                    a0Var.a(B());
                    return a0Var;
                }
                a0Var.a(t());
                return a0Var;
            case 4:
                a0Var.a(x());
                return a0Var;
            case 5:
                a0Var.b(h(E()));
                return a0Var;
            case 6:
                a0Var.a(h(u()));
                return a0Var;
            case 7:
                int iS = s();
                ArrayList arrayList = new ArrayList(iS);
                while (i2 < iS) {
                    arrayList.add(H());
                    i2++;
                }
                a0Var.a(arrayList);
                return a0Var;
            case 8:
                int iC = C();
                HashMap map = new HashMap();
                while (i2 < iC) {
                    map.put(H(), H());
                    i2++;
                }
                a0Var.a(map);
                return a0Var;
            case 9:
                com.batch.android.x0.a aVarY = y();
                a0Var.a(aVarY.b(), h(aVarY.a()));
                return a0Var;
            default:
                throw new d("Unknown value type");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24205i = q;
        this.f24206j = 0;
        this.f24204h.close();
    }

    public MessageBuffer i(int i2) throws IOException {
        int size = this.f24205i.size();
        int i3 = this.f24206j;
        if (size - i3 >= i2) {
            MessageBuffer messageBufferSlice = this.f24205i.slice(i3, i2);
            this.f24206j += i2;
            return messageBufferSlice;
        }
        MessageBuffer messageBufferAllocate = MessageBuffer.allocate(i2);
        a(messageBufferAllocate, 0, i2);
        return messageBufferAllocate;
    }

    public void k(int i2) throws IOException {
        int iL;
        int iL2;
        while (i2 > 0) {
            byte bG = g();
            switch (a.f24208a[c.b(bG).ordinal()]) {
                case 5:
                    iL = bG & 15;
                    i2 += iL * 2;
                    i2--;
                    break;
                case 6:
                    iL2 = bG & 15;
                    i2 += iL2;
                    i2--;
                    break;
                case 7:
                    j(bG & 31);
                    i2--;
                    break;
                case 8:
                case 9:
                    j(1);
                    i2--;
                    break;
                case 10:
                case 11:
                    j(2);
                    i2--;
                    break;
                case 12:
                case 13:
                case 14:
                    j(4);
                    i2--;
                    break;
                case 15:
                case 16:
                case 17:
                    j(8);
                    i2--;
                    break;
                case 18:
                case 19:
                    j(n());
                    i2--;
                    break;
                case 20:
                case 21:
                    j(l());
                    i2--;
                    break;
                case 22:
                case 23:
                    j(m());
                    i2--;
                    break;
                case 24:
                    j(2);
                    i2--;
                    break;
                case 25:
                    j(3);
                    i2--;
                    break;
                case 26:
                    j(5);
                    i2--;
                    break;
                case 27:
                    j(9);
                    i2--;
                    break;
                case 28:
                    j(17);
                    i2--;
                    break;
                case 29:
                    j(n() + 1);
                    i2--;
                    break;
                case 30:
                    j(l() + 1);
                    i2--;
                    break;
                case 31:
                    j(m() + 1);
                    i2--;
                    break;
                case 32:
                    iL2 = l();
                    i2 += iL2;
                    i2--;
                    break;
                case 33:
                    iL2 = m();
                    i2 += iL2;
                    i2--;
                    break;
                case 34:
                    iL = l();
                    i2 += iL * 2;
                    i2--;
                    break;
                case 35:
                    iL = m();
                    i2 += iL * 2;
                    i2--;
                    break;
                case 36:
                    throw new g("Encountered 0xC1 \"NEVER_USED\" byte");
                default:
                    i2--;
                    break;
            }
        }
    }

    public void q() throws IOException {
        k(1);
    }

    public boolean r() throws IOException {
        if (!a()) {
            throw new e();
        }
        if (this.f24205i.getByte(this.f24206j) != -64) {
            return false;
        }
        g();
        return true;
    }

    public int s() throws IOException {
        byte bG = g();
        if (h.a.c(bG)) {
            return bG & 15;
        }
        if (bG == -36) {
            return l();
        }
        if (bG == -35) {
            return m();
        }
        throw a("Array", bG);
    }

    public BigInteger t() throws IOException {
        byte bG = g();
        if (h.a.a(bG)) {
            return BigInteger.valueOf(bG);
        }
        switch (bG) {
            case -52:
                return BigInteger.valueOf(g() & 255);
            case -51:
                return BigInteger.valueOf(o() & HPKE.aead_EXPORT_ONLY);
            case -50:
                int iJ = j();
                return iJ < 0 ? BigInteger.valueOf(((long) (iJ & Integer.MAX_VALUE)) + 2147483648L) : BigInteger.valueOf(iJ);
            case -49:
                long jK = k();
                return jK < 0 ? BigInteger.valueOf(jK - Long.MIN_VALUE).setBit(63) : BigInteger.valueOf(jK);
            case -48:
                return BigInteger.valueOf(g());
            case -47:
                return BigInteger.valueOf(o());
            case -46:
                return BigInteger.valueOf(j());
            case -45:
                return BigInteger.valueOf(k());
            default:
                throw a("Integer", bG);
        }
    }

    public int u() throws IOException {
        int iC;
        byte bG = g();
        if (h.a.e(bG)) {
            return bG & 31;
        }
        int iB = b(bG);
        if (iB >= 0) {
            return iB;
        }
        if (!this.f24200b || (iC = c(bG)) < 0) {
            throw a("Binary", bG);
        }
        return iC;
    }

    public boolean v() throws IOException {
        byte bG = g();
        if (bG == -62) {
            return false;
        }
        if (bG == -61) {
            return true;
        }
        throw a("boolean", bG);
    }

    public byte w() throws IOException {
        long jK;
        byte bG = g();
        if (h.a.a(bG)) {
            return bG;
        }
        switch (bG) {
            case -52:
                byte bG2 = g();
                if (bG2 >= 0) {
                    return bG2;
                }
                throw a(bG2);
            case -51:
                short sO = o();
                if (sO < 0 || sO > 127) {
                    throw b(sO);
                }
                return (byte) sO;
            case -50:
                int iJ = j();
                if (iJ < 0 || iJ > 127) {
                    throw e(iJ);
                }
                return (byte) iJ;
            case -49:
                jK = k();
                if (jK < 0 || jK > 127) {
                    throw b(jK);
                }
                break;
            case -48:
                return g();
            case -47:
                short sO2 = o();
                if (sO2 < -128 || sO2 > 127) {
                    throw a(sO2);
                }
                return (byte) sO2;
            case -46:
                int iJ2 = j();
                if (iJ2 < -128 || iJ2 > 127) {
                    throw d(iJ2);
                }
                return (byte) iJ2;
            case -45:
                jK = k();
                if (jK < -128 || jK > 127) {
                    throw a(jK);
                }
                break;
            default:
                throw a("Integer", bG);
        }
        return (byte) jK;
    }

    public double x() throws IOException {
        byte bG = g();
        if (bG == -54) {
            return i();
        }
        if (bG == -53) {
            return h();
        }
        throw a("Float", bG);
    }

    public com.batch.android.x0.a y() throws IOException {
        byte bG = g();
        switch (bG) {
            case -57:
                MessageBuffer messageBufferG = g(2);
                return new com.batch.android.x0.a(messageBufferG.getByte(this.m + 1), messageBufferG.getByte(this.m) & 255);
            case -56:
                MessageBuffer messageBufferG2 = g(3);
                return new com.batch.android.x0.a(messageBufferG2.getByte(this.m + 2), messageBufferG2.getShort(this.m) & HPKE.aead_EXPORT_ONLY);
            case -55:
                MessageBuffer messageBufferG3 = g(5);
                int i2 = messageBufferG3.getInt(this.m);
                if (i2 >= 0) {
                    return new com.batch.android.x0.a(messageBufferG3.getByte(this.m + 4), i2);
                }
                throw f(i2);
            default:
                switch (bG) {
                    case -44:
                        return new com.batch.android.x0.a(g(), 1);
                    case -43:
                        return new com.batch.android.x0.a(g(), 2);
                    case -42:
                        return new com.batch.android.x0.a(g(), 4);
                    case -41:
                        return new com.batch.android.x0.a(g(), 8);
                    case -40:
                        return new com.batch.android.x0.a(g(), 16);
                    default:
                        throw a("Ext", bG);
                }
        }
    }

    public float z() throws IOException {
        byte bG = g();
        if (bG == -54) {
            return i();
        }
        if (bG == -53) {
            return (float) h();
        }
        throw a("Float", bG);
    }

    private static int d(byte b2) {
        return Integer.numberOfLeadingZeros((~(b2 & 255)) << 24);
    }

    public long d() {
        return this.f24207k + ((long) this.f24206j);
    }

    public byte[] h(int i2) throws IOException {
        byte[] bArr = new byte[i2];
        a(bArr);
        return bArr;
    }

    private void f() throws IOException {
        this.f24205i = b();
        this.f24206j = 0;
    }

    public boolean e() throws IOException {
        return a();
    }

    private int j() throws IOException {
        return g(4).getInt(this.m);
    }

    private float i() throws IOException {
        return g(4).getFloat(this.m);
    }

    private int b(byte b2) throws IOException {
        switch (b2) {
            case -60:
                return n();
            case -59:
                return l();
            case -58:
                return m();
            default:
                return -1;
        }
    }

    public void b(byte[] bArr, int i2, int i3) throws IOException {
        while (true) {
            int size = this.f24205i.size();
            int i4 = this.f24206j;
            int i5 = size - i4;
            MessageBuffer messageBuffer = this.f24205i;
            if (i5 >= i3) {
                messageBuffer.getBytes(i4, bArr, i2, i3);
                this.f24206j += i3;
                return;
            } else {
                messageBuffer.getBytes(i4, bArr, i2, i5);
                i2 += i5;
                i3 -= i5;
                this.f24206j += i5;
                f();
            }
        }
    }

    private static f b(short s2) {
        return new f(BigInteger.valueOf(s2 & HPKE.aead_EXPORT_ONLY));
    }

    private static f b(long j2) {
        return new f(BigInteger.valueOf(j2 - Long.MIN_VALUE).setBit(63));
    }

    private byte g() throws IOException {
        int size = this.f24205i.size();
        int i2 = this.f24206j;
        if (size > i2) {
            byte b2 = this.f24205i.getByte(i2);
            this.f24206j++;
            return b2;
        }
        f();
        if (this.f24205i.size() > 0) {
            byte b3 = this.f24205i.getByte(0);
            this.f24206j = 1;
            return b3;
        }
        return g();
    }

    public c c() throws IOException {
        if (a()) {
            return c.b(this.f24205i.getByte(this.f24206j));
        }
        throw new e();
    }

    private int c(byte b2) throws IOException {
        switch (b2) {
            case -39:
                return n();
            case -38:
                return l();
            case -37:
                return m();
            default:
                return -1;
        }
    }

    private long k() throws IOException {
        return g(8).getLong(this.m);
    }

    private boolean a() throws IOException {
        while (this.f24205i.size() <= this.f24206j) {
            MessageBuffer next = this.f24204h.next();
            if (next == null) {
                return false;
            }
            this.f24207k += (long) this.f24205i.size();
            this.f24205i = next;
            this.f24206j = 0;
        }
        return true;
    }

    private static i a(String str, byte b2) {
        c cVarB = c.b(b2);
        if (cVarB == c.f24164h) {
            Locale locale = Locale.US;
            return new g(fc.h("Expected ", str, ", but encountered 0xC1 \"NEVER_USED\" byte"));
        }
        String strName = cVarB.b().name();
        StringBuilder sb = new StringBuilder();
        sb.append(strName.substring(0, 1));
        String strSubstring = strName.substring(1);
        Locale locale2 = Locale.US;
        sb.append(strSubstring.toLowerCase(locale2));
        return new n(String.format(locale2, "Expected %s, but got %s (%02x)", str, sb.toString(), Byte.valueOf(b2)));
    }

    public com.batch.android.y0.g a(com.batch.android.y0.g gVar) throws IOException {
        com.batch.android.y0.g gVar2 = (com.batch.android.y0.g) p.a(gVar, "MessageBufferInput is null");
        com.batch.android.y0.g gVar3 = this.f24204h;
        this.f24204h = gVar2;
        this.f24205i = q;
        this.f24206j = 0;
        this.f24207k = 0L;
        return gVar3;
    }

    private void a(CoderResult coderResult) throws CharacterCodingException {
        if ((coderResult.isMalformed() && this.d == CodingErrorAction.REPORT) || (coderResult.isUnmappable() && this.f24202e == CodingErrorAction.REPORT)) {
            coderResult.throwException();
        }
    }

    public void a(ByteBuffer byteBuffer) throws IOException {
        while (true) {
            int iRemaining = byteBuffer.remaining();
            int size = this.f24205i.size();
            int i2 = this.f24206j;
            int i3 = size - i2;
            MessageBuffer messageBuffer = this.f24205i;
            if (i3 >= iRemaining) {
                messageBuffer.getBytes(i2, iRemaining, byteBuffer);
                this.f24206j += iRemaining;
                return;
            } else {
                messageBuffer.getBytes(i2, i3, byteBuffer);
                this.f24206j += i3;
                f();
            }
        }
    }

    public void a(MessageBuffer messageBuffer, int i2, int i3) throws IOException {
        while (true) {
            int size = this.f24205i.size();
            int i4 = this.f24206j;
            int i5 = size - i4;
            MessageBuffer messageBuffer2 = this.f24205i;
            if (i5 >= i3) {
                messageBuffer.putMessageBuffer(i2, messageBuffer2, i4, i3);
                this.f24206j += i3;
                return;
            } else {
                messageBuffer.putMessageBuffer(i2, messageBuffer2, i4, i5);
                i2 += i5;
                i3 -= i5;
                this.f24206j += i5;
                f();
            }
        }
    }

    public void a(byte[] bArr) throws IOException {
        b(bArr, 0, bArr.length);
    }

    private static f a(byte b2) {
        return new f(BigInteger.valueOf(b2 & 255));
    }

    private static f a(short s2) {
        return new f(BigInteger.valueOf(s2));
    }

    private static f a(long j2) {
        return new f(BigInteger.valueOf(j2));
    }
}
