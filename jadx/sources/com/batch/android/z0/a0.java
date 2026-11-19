package com.batch.android.z0;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class a0 implements x {
    private static final BigInteger p = BigInteger.valueOf(Long.MIN_VALUE);
    private static final BigInteger q = BigInteger.valueOf(Long.MAX_VALUE);
    private static final long r = -128;
    private static final long s = 127;
    private static final long t = -32768;
    private static final long u = 32767;
    private static final long v = -2147483648L;
    private static final long w = 2147483647L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f24241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f24242c;
    private final j d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f24243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f24244f;
    private final m g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e f24245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final k f24246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final h f24247j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private n f24248k;
    private long l;
    private double m;
    private Object n;
    private d o;

    public abstract class b extends d implements u {
        private b() {
            super();
        }

        @Override // com.batch.android.z0.u
        public float B() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            if (nVar == nVar2) {
                return ((BigInteger) a0Var.n).floatValue();
            }
            n nVar3 = a0Var.f24248k;
            n nVar4 = n.g;
            a0 a0Var2 = a0.this;
            return nVar3 == nVar4 ? (float) a0Var2.m : a0Var2.l;
        }

        @Override // com.batch.android.z0.u
        public double C() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            if (nVar == nVar2) {
                return ((BigInteger) a0Var.n).doubleValue();
            }
            n nVar3 = a0Var.f24248k;
            n nVar4 = n.g;
            a0 a0Var2 = a0.this;
            return nVar3 == nVar4 ? a0Var2.m : a0Var2.l;
        }

        @Override // com.batch.android.z0.u
        public byte E() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            return nVar == nVar2 ? ((BigInteger) a0Var.n).byteValue() : (byte) a0Var.l;
        }

        @Override // com.batch.android.z0.u
        public short F() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            return nVar == nVar2 ? ((BigInteger) a0Var.n).shortValue() : (short) a0Var.l;
        }

        @Override // com.batch.android.z0.u
        public BigInteger I() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            if (nVar == nVar2) {
                return (BigInteger) a0Var.n;
            }
            return a0Var.f24248k == n.g ? new BigDecimal(a0.this.m).toBigInteger() : BigInteger.valueOf(a0.this.l);
        }

        @Override // com.batch.android.z0.u
        public int T() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            return nVar == nVar2 ? ((BigInteger) a0Var.n).intValue() : (int) a0Var.l;
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public u X() {
            return this;
        }

        @Override // com.batch.android.z0.u
        public long t() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            return nVar == nVar2 ? ((BigInteger) a0Var.n).longValue() : a0Var.l;
        }
    }

    public abstract class c extends d implements v {
        private c() {
            super();
        }

        @Override // com.batch.android.z0.v
        public String G() {
            byte[] bArr = (byte[]) a0.this.n;
            try {
                CharsetDecoder charsetDecoderNewDecoder = com.batch.android.x0.h.f24170a.newDecoder();
                CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
                return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr)).toString();
            } catch (CharacterCodingException e2) {
                throw new com.batch.android.x0.l(e2);
            }
        }

        @Override // com.batch.android.z0.v
        public byte[] M() {
            return (byte[]) a0.this.n;
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public v i() {
            return this;
        }

        @Override // com.batch.android.z0.v
        public ByteBuffer q() {
            return ByteBuffer.wrap(M());
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.v
        public String toString() {
            byte[] bArr = (byte[]) a0.this.n;
            try {
                CharsetDecoder charsetDecoderNewDecoder = com.batch.android.x0.h.f24170a.newDecoder();
                CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
                return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr)).toString();
            } catch (CharacterCodingException e2) {
                throw new com.batch.android.x0.l(e2);
            }
        }
    }

    public abstract class d implements x {
        private d() {
        }

        @Override // com.batch.android.z0.x
        public com.batch.android.z0.d D() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public boolean L() {
            return A().b();
        }

        @Override // com.batch.android.z0.x
        public boolean N() {
            return A().e();
        }

        @Override // com.batch.android.z0.x
        public boolean P() {
            return A().d();
        }

        @Override // com.batch.android.z0.x
        public boolean R() {
            return A().l();
        }

        @Override // com.batch.android.z0.x
        public boolean W() {
            return A().j();
        }

        @Override // com.batch.android.z0.x
        public u X() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public boolean Y() {
            return A().f();
        }

        @Override // com.batch.android.z0.x
        public r a() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public com.batch.android.z0.e b() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public com.batch.android.z0.a c() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public s d() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public com.batch.android.z0.b e() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public boolean equals(Object obj) {
            return a0.this.equals(obj);
        }

        @Override // com.batch.android.z0.x
        public t f() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public w h() {
            throw new com.batch.android.x0.m();
        }

        public int hashCode() {
            return a0.this.hashCode();
        }

        @Override // com.batch.android.z0.x
        public v i() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public com.batch.android.z0.c j() {
            throw new com.batch.android.x0.m();
        }

        @Override // com.batch.android.z0.x
        public boolean o() {
            return A().g();
        }

        @Override // com.batch.android.z0.x
        public boolean p() {
            return A().c();
        }

        @Override // com.batch.android.z0.x
        public boolean r() {
            return A().h();
        }

        @Override // com.batch.android.z0.x
        public String s() {
            return a0.this.s();
        }

        public String toString() {
            return a0.this.toString();
        }

        @Override // com.batch.android.z0.x
        public boolean w() {
            return A().i();
        }

        @Override // com.batch.android.z0.x
        public boolean y() {
            return A().k();
        }
    }

    public class f extends c implements com.batch.android.z0.b {
        private f() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.BINARY;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.g m() {
            return y.a(M());
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            byte[] bArr = (byte[]) a0.this.n;
            jVar.e(bArr.length);
            jVar.b(bArr);
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public com.batch.android.z0.b e() {
            return this;
        }
    }

    public class g extends d implements com.batch.android.z0.c {
        private g() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.BOOLEAN;
        }

        @Override // com.batch.android.z0.c
        public boolean K() {
            return a0.this.l == 1;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.h m() {
            return y.a(K());
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            jVar.a(a0.this.l == 1);
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public com.batch.android.z0.c j() {
            return this;
        }
    }

    public class h extends d implements com.batch.android.z0.d {
        private h() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.EXTENSION;
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public com.batch.android.z0.d D() {
            return this;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.i m() {
            return (com.batch.android.z0.i) a0.this.n;
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            ((com.batch.android.z0.i) a0.this.n).a(jVar);
        }

        @Override // com.batch.android.z0.d
        public byte[] g() {
            return ((com.batch.android.z0.i) a0.this.n).g();
        }

        @Override // com.batch.android.z0.d
        public byte k() {
            return ((com.batch.android.z0.i) a0.this.n).k();
        }
    }

    public class i extends b implements com.batch.android.z0.e {
        private i() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.FLOAT;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.j m() {
            return y.a(a0.this.m);
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            jVar.a(a0.this.m);
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public com.batch.android.z0.e b() {
            return this;
        }
    }

    public class k extends d implements s {
        private k() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.MAP;
        }

        @Override // com.batch.android.z0.s
        public x[] S() {
            Map<x, x> mapU = U();
            x[] xVarArr = new x[mapU.size() * 2];
            int i2 = 0;
            for (Map.Entry<x, x> entry : mapU.entrySet()) {
                xVarArr[i2] = entry.getKey();
                xVarArr[i2 + 1] = entry.getValue();
                i2 += 2;
            }
            return xVarArr;
        }

        @Override // com.batch.android.z0.s
        public Map<x, x> U() {
            return (Map) a0.this.n;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.l m() {
            return y.a(U());
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            Map<x, x> mapU = U();
            jVar.d(mapU.size());
            for (Map.Entry<x, x> entry : mapU.entrySet()) {
                entry.getKey().a(jVar);
                entry.getValue().a(jVar);
            }
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public s d() {
            return this;
        }

        @Override // com.batch.android.z0.s
        public Set<Map.Entry<x, x>> entrySet() {
            return U().entrySet();
        }

        @Override // com.batch.android.z0.s
        public Set<x> keySet() {
            return U().keySet();
        }

        @Override // com.batch.android.z0.s
        public int size() {
            return U().size();
        }

        @Override // com.batch.android.z0.s
        public Collection<x> values() {
            return U().values();
        }
    }

    public class l extends d implements t {
        private l() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.NIL;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.m m() {
            return y.d();
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            jVar.d();
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public t f() {
            return this;
        }
    }

    public class m extends c implements w {
        private m() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.STRING;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public p m() {
            return y.b((byte[]) a0.this.n);
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            byte[] bArr = (byte[]) a0.this.n;
            jVar.h(bArr.length);
            jVar.b(bArr);
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public w h() {
            return this;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'e' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class n {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final n f24257c = new n("NULL", 0, z.NIL);
        public static final n d = new n("BOOLEAN", 1, z.BOOLEAN);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final n f24258e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final n f24259f;
        public static final n g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final n f24260h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final n f24261i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final n f24262j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final n f24263k;
        public static final n l;
        private static final /* synthetic */ n[] m;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final z f24264b;

        static {
            z zVar = z.INTEGER;
            f24258e = new n("LONG", 2, zVar);
            f24259f = new n("BIG_INTEGER", 3, zVar);
            g = new n("DOUBLE", 4, z.FLOAT);
            f24260h = new n("BYTE_ARRAY", 5, z.BINARY);
            f24261i = new n("RAW_STRING", 6, z.STRING);
            f24262j = new n("LIST", 7, z.ARRAY);
            f24263k = new n("MAP", 8, z.MAP);
            l = new n("EXTENSION", 9, z.EXTENSION);
            m = a();
        }

        private n(String str, int i2, z zVar) {
            super(str, i2);
            this.f24264b = zVar;
        }

        private static /* synthetic */ n[] a() {
            return new n[]{f24257c, d, f24258e, f24259f, g, f24260h, f24261i, f24262j, f24263k, l};
        }

        public static n valueOf(String str) {
            return (n) Enum.valueOf(n.class, str);
        }

        public static n[] values() {
            return (n[]) m.clone();
        }

        public z b() {
            return this.f24264b;
        }
    }

    public a0() {
        this.f24241b = new l();
        this.f24242c = new g();
        this.d = new j();
        this.f24243e = new i();
        this.f24244f = new f();
        this.g = new m();
        this.f24245h = new e();
        this.f24246i = new k();
        this.f24247j = new h();
        Z();
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return this.f24248k.b();
    }

    @Override // com.batch.android.z0.x
    public com.batch.android.z0.d D() {
        if (N()) {
            return (com.batch.android.z0.d) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public boolean L() {
        return A().b();
    }

    @Override // com.batch.android.z0.x
    public boolean N() {
        return A().e();
    }

    @Override // com.batch.android.z0.x
    public boolean P() {
        return A().d();
    }

    @Override // com.batch.android.z0.x
    public boolean R() {
        return A().l();
    }

    @Override // com.batch.android.z0.x
    public boolean W() {
        return A().j();
    }

    @Override // com.batch.android.z0.x
    public u X() {
        if (W()) {
            return (u) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public boolean Y() {
        return A().f();
    }

    public a0 Z() {
        this.f24248k = n.f24257c;
        this.o = this.f24241b;
        return this;
    }

    public a0 a(BigInteger bigInteger) {
        if (bigInteger.compareTo(p) < 0 || bigInteger.compareTo(q) > 0) {
            this.f24248k = n.f24259f;
            this.o = this.d;
            this.n = bigInteger;
            return this;
        }
        this.f24248k = n.f24258e;
        this.o = this.d;
        this.l = bigInteger.longValue();
        return this;
    }

    @Override // com.batch.android.z0.x
    public com.batch.android.z0.e b() {
        if (Y()) {
            return (com.batch.android.z0.e) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public com.batch.android.z0.a c() {
        if (L()) {
            return (com.batch.android.z0.a) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public s d() {
        if (r()) {
            return (s) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public com.batch.android.z0.b e() {
        if (p()) {
            return (com.batch.android.z0.b) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public boolean equals(Object obj) {
        return m().equals(obj);
    }

    @Override // com.batch.android.z0.x
    public t f() {
        if (w()) {
            return (t) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public w h() {
        if (R()) {
            return (w) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    public int hashCode() {
        return m().hashCode();
    }

    @Override // com.batch.android.z0.x
    public v i() {
        if (y()) {
            return (v) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public com.batch.android.z0.c j() {
        if (P()) {
            return (com.batch.android.z0.c) this.o;
        }
        throw new com.batch.android.x0.m();
    }

    @Override // com.batch.android.z0.x
    public q m() {
        return this.o.m();
    }

    @Override // com.batch.android.z0.x
    public boolean o() {
        return A().g();
    }

    @Override // com.batch.android.z0.x
    public boolean p() {
        return A().c();
    }

    @Override // com.batch.android.z0.x
    public boolean r() {
        return A().h();
    }

    @Override // com.batch.android.z0.x
    public String s() {
        return m().s();
    }

    public String toString() {
        return m().toString();
    }

    @Override // com.batch.android.z0.x
    public boolean w() {
        return A().i();
    }

    @Override // com.batch.android.z0.x
    public boolean y() {
        return A().k();
    }

    public a0 b(byte[] bArr) {
        this.f24248k = n.f24261i;
        this.o = this.g;
        this.n = bArr;
        return this;
    }

    public class j extends b implements r {
        private j() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.INTEGER;
        }

        @Override // com.batch.android.z0.r
        public BigInteger H() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            return nVar == nVar2 ? (BigInteger) a0Var.n : BigInteger.valueOf(a0Var.l);
        }

        @Override // com.batch.android.z0.r
        public long J() {
            if (V()) {
                return a0.this.l;
            }
            throw new com.batch.android.x0.f(a0.this.l);
        }

        @Override // com.batch.android.z0.r
        public boolean O() {
            return a0.this.f24248k != n.f24259f && a0.r <= a0.this.l && a0.this.l <= a0.s;
        }

        @Override // com.batch.android.z0.r
        public com.batch.android.x0.c Q() {
            return com.batch.android.a1.d.a(this);
        }

        @Override // com.batch.android.z0.r
        public boolean V() {
            return a0.this.f24248k != n.f24259f;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.k m() {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            return nVar == nVar2 ? y.a((BigInteger) a0Var.n) : y.a(a0Var.l);
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            n nVar = a0.this.f24248k;
            n nVar2 = n.f24259f;
            a0 a0Var = a0.this;
            if (nVar == nVar2) {
                jVar.a((BigInteger) a0Var.n);
            } else {
                jVar.a(a0Var.l);
            }
        }

        @Override // com.batch.android.z0.r
        public short n() {
            if (O()) {
                return (short) a0.this.l;
            }
            throw new com.batch.android.x0.f(a0.this.l);
        }

        @Override // com.batch.android.z0.r
        public boolean u() {
            return a0.this.f24248k != n.f24259f && a0.v <= a0.this.l && a0.this.l <= a0.w;
        }

        @Override // com.batch.android.z0.r
        public boolean v() {
            return a0.this.f24248k != n.f24259f && a0.t <= a0.this.l && a0.this.l <= a0.u;
        }

        @Override // com.batch.android.z0.r
        public byte x() {
            if (O()) {
                return (byte) a0.this.l;
            }
            throw new com.batch.android.x0.f(a0.this.l);
        }

        @Override // com.batch.android.z0.r
        public int z() {
            if (u()) {
                return (int) a0.this.l;
            }
            throw new com.batch.android.x0.f(a0.this.l);
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public r a() {
            return this;
        }
    }

    public class e extends d implements com.batch.android.z0.a {
        private e() {
            super();
        }

        @Override // com.batch.android.z0.x
        public z A() {
            return z.ARRAY;
        }

        @Override // com.batch.android.z0.x
        /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
        public com.batch.android.z0.f m() {
            return y.a(l());
        }

        @Override // com.batch.android.z0.x
        public void a(com.batch.android.x0.j jVar) throws IOException {
            List<x> listL = l();
            jVar.d(listL.size());
            Iterator<x> it = listL.iterator();
            while (it.hasNext()) {
                it.next().a(jVar);
            }
        }

        @Override // com.batch.android.z0.a0.d, com.batch.android.z0.x
        public com.batch.android.z0.a c() {
            return this;
        }

        @Override // com.batch.android.z0.a
        public x get(int i2) {
            return l().get(i2);
        }

        @Override // com.batch.android.z0.a, java.lang.Iterable
        public Iterator<x> iterator() {
            return l().iterator();
        }

        @Override // com.batch.android.z0.a
        public List<x> l() {
            return (List) a0.this.n;
        }

        @Override // com.batch.android.z0.a
        public int size() {
            return l().size();
        }

        @Override // com.batch.android.z0.a
        public x a(int i2) {
            List<x> listL = l();
            if (listL.size() < i2 && i2 >= 0) {
                return y.d();
            }
            return listL.get(i2);
        }
    }

    public a0 a(boolean z) {
        this.f24248k = n.d;
        this.o = this.f24242c;
        this.l = z ? 1L : 0L;
        return this;
    }

    public a0 a(long j2) {
        this.f24248k = n.f24258e;
        this.o = this.d;
        this.l = j2;
        return this;
    }

    public a0 a(double d2) {
        this.f24248k = n.g;
        this.o = this.f24243e;
        this.m = d2;
        this.l = (long) d2;
        return this;
    }

    public a0 a(float f2) {
        this.f24248k = n.g;
        this.o = this.f24243e;
        this.l = (long) f2;
        return this;
    }

    public a0 a(byte[] bArr) {
        this.f24248k = n.f24260h;
        this.o = this.f24244f;
        this.n = bArr;
        return this;
    }

    public a0 a(String str) {
        return b(str.getBytes(com.batch.android.x0.h.f24170a));
    }

    public a0 a(List<x> list) {
        this.f24248k = n.f24262j;
        this.o = this.f24245h;
        this.n = list;
        return this;
    }

    public a0 a(Map<x, x> map) {
        this.f24248k = n.f24263k;
        this.o = this.f24246i;
        this.n = map;
        return this;
    }

    public a0 a(byte b2, byte[] bArr) {
        this.f24248k = n.l;
        this.o = this.f24247j;
        this.n = y.a(b2, bArr);
        return this;
    }

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        this.o.a(jVar);
    }

    @Override // com.batch.android.z0.x
    public r a() {
        if (o()) {
            return (r) this.o;
        }
        throw new com.batch.android.x0.m();
    }
}
