package com.batch.android.a1;

import com.batch.android.z0.m;
import com.batch.android.z0.n;
import com.batch.android.z0.o;
import com.batch.android.z0.p;
import com.batch.android.z0.r;
import com.batch.android.z0.x;
import com.batch.android.z0.z;
import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public class d extends b implements com.batch.android.z0.k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final BigInteger f22912c = BigInteger.valueOf(-128);
    private static final BigInteger d = BigInteger.valueOf(127);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final BigInteger f22913e = BigInteger.valueOf(-32768);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final BigInteger f22914f = BigInteger.valueOf(32767);
    private static final BigInteger g = BigInteger.valueOf(-2147483648L);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final BigInteger f22915h = BigInteger.valueOf(2147483647L);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final BigInteger f22916i = BigInteger.valueOf(Long.MIN_VALUE);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final BigInteger f22917j = BigInteger.valueOf(Long.MAX_VALUE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BigInteger f22918b;

    public d(BigInteger bigInteger) {
        this.f22918b = bigInteger;
    }

    public static com.batch.android.x0.c a(r rVar) {
        if (rVar.O()) {
            return com.batch.android.x0.c.v;
        }
        if (rVar.v()) {
            return com.batch.android.x0.c.w;
        }
        if (rVar.u()) {
            return com.batch.android.x0.c.x;
        }
        return rVar.V() ? com.batch.android.x0.c.y : com.batch.android.x0.c.u;
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.INTEGER;
    }

    @Override // com.batch.android.z0.u
    public float B() {
        return this.f22918b.floatValue();
    }

    @Override // com.batch.android.z0.u
    public double C() {
        return this.f22918b.doubleValue();
    }

    @Override // com.batch.android.z0.u
    public byte E() {
        return this.f22918b.byteValue();
    }

    @Override // com.batch.android.z0.u
    public short F() {
        return this.f22918b.shortValue();
    }

    @Override // com.batch.android.z0.r
    public BigInteger H() {
        return this.f22918b;
    }

    @Override // com.batch.android.z0.u
    public BigInteger I() {
        return this.f22918b;
    }

    @Override // com.batch.android.z0.r
    public long J() {
        if (V()) {
            return this.f22918b.longValue();
        }
        throw new com.batch.android.x0.f(this.f22918b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean L() {
        return super.L();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean N() {
        return super.N();
    }

    @Override // com.batch.android.z0.r
    public boolean O() {
        return this.f22918b.compareTo(f22912c) >= 0 && this.f22918b.compareTo(d) <= 0;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean P() {
        return super.P();
    }

    @Override // com.batch.android.z0.r
    public com.batch.android.x0.c Q() {
        return a(this);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean R() {
        return super.R();
    }

    @Override // com.batch.android.z0.u
    public int T() {
        return this.f22918b.intValue();
    }

    @Override // com.batch.android.z0.r
    public boolean V() {
        return this.f22918b.compareTo(f22916i) >= 0 && this.f22918b.compareTo(f22917j) <= 0;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean W() {
        return super.W();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean Y() {
        return super.Y();
    }

    @Override // com.batch.android.a1.b
    /* JADX INFO: renamed from: Z */
    public /* bridge */ /* synthetic */ com.batch.android.z0.i D() {
        return super.D();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    /* JADX INFO: renamed from: a0 */
    public n X() {
        return this;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.j b() {
        return super.b();
    }

    @Override // com.batch.android.z0.x
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public com.batch.android.z0.k m() {
        return this;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.f c() {
        return super.c();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.l d() {
        return super.d();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.g e() {
        return super.e();
    }

    @Override // com.batch.android.z0.x
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        if (!xVar.o()) {
            return false;
        }
        return this.f22918b.equals(xVar.a().I());
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ m f() {
        return super.f();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ p h() {
        return super.h();
    }

    public int hashCode() {
        if (g.compareTo(this.f22918b) <= 0 && this.f22918b.compareTo(f22915h) <= 0) {
            return (int) this.f22918b.longValue();
        }
        if (f22916i.compareTo(this.f22918b) > 0 || this.f22918b.compareTo(f22917j) > 0) {
            return this.f22918b.hashCode();
        }
        long jLongValue = this.f22918b.longValue();
        return (int) (jLongValue ^ (jLongValue >>> 32));
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ o i() {
        return super.i();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.h j() {
        return super.j();
    }

    @Override // com.batch.android.z0.r
    public short n() {
        if (v()) {
            return this.f22918b.shortValue();
        }
        throw new com.batch.android.x0.f(this.f22918b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean o() {
        return super.o();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean p() {
        return super.p();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean r() {
        return super.r();
    }

    @Override // com.batch.android.z0.x
    public String s() {
        return this.f22918b.toString();
    }

    @Override // com.batch.android.z0.u
    public long t() {
        return this.f22918b.longValue();
    }

    public String toString() {
        return s();
    }

    @Override // com.batch.android.z0.r
    public boolean u() {
        return this.f22918b.compareTo(g) >= 0 && this.f22918b.compareTo(f22915h) <= 0;
    }

    @Override // com.batch.android.z0.r
    public boolean v() {
        return this.f22918b.compareTo(f22913e) >= 0 && this.f22918b.compareTo(f22914f) <= 0;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean w() {
        return super.w();
    }

    @Override // com.batch.android.z0.r
    public byte x() {
        if (O()) {
            return this.f22918b.byteValue();
        }
        throw new com.batch.android.x0.f(this.f22918b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean y() {
        return super.y();
    }

    @Override // com.batch.android.z0.r
    public int z() {
        if (u()) {
            return this.f22918b.intValue();
        }
        throw new com.batch.android.x0.f(this.f22918b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public com.batch.android.z0.k a() {
        return this;
    }

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        jVar.a(this.f22918b);
    }
}
