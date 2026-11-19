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
public class i extends b implements com.batch.android.z0.k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f22924c = -128;
    private static final long d = 127;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f22925e = -32768;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f22926f = 32767;
    private static final long g = -2147483648L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f22927h = 2147483647L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f22928b;

    public i(long j2) {
        this.f22928b = j2;
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.INTEGER;
    }

    @Override // com.batch.android.z0.u
    public float B() {
        return this.f22928b;
    }

    @Override // com.batch.android.z0.u
    public double C() {
        return this.f22928b;
    }

    @Override // com.batch.android.z0.u
    public byte E() {
        return (byte) this.f22928b;
    }

    @Override // com.batch.android.z0.u
    public short F() {
        return (short) this.f22928b;
    }

    @Override // com.batch.android.z0.r
    public BigInteger H() {
        return BigInteger.valueOf(this.f22928b);
    }

    @Override // com.batch.android.z0.u
    public BigInteger I() {
        return BigInteger.valueOf(this.f22928b);
    }

    @Override // com.batch.android.z0.r
    public long J() {
        return this.f22928b;
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
        long j2 = this.f22928b;
        return f22924c <= j2 && j2 <= d;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean P() {
        return super.P();
    }

    @Override // com.batch.android.z0.r
    public com.batch.android.x0.c Q() {
        return d.a(this);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean R() {
        return super.R();
    }

    @Override // com.batch.android.z0.u
    public int T() {
        return (int) this.f22928b;
    }

    @Override // com.batch.android.z0.r
    public boolean V() {
        return true;
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

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        jVar.a(this.f22928b);
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
        r rVarA = xVar.a();
        return rVarA.V() && this.f22928b == rVarA.t();
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
        long j2 = this.f22928b;
        return (g > j2 || j2 > f22927h) ? (int) (j2 ^ (j2 >>> 32)) : (int) j2;
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
            return (short) this.f22928b;
        }
        throw new com.batch.android.x0.f(this.f22928b);
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
        return Long.toString(this.f22928b);
    }

    @Override // com.batch.android.z0.u
    public long t() {
        return this.f22928b;
    }

    public String toString() {
        return s();
    }

    @Override // com.batch.android.z0.r
    public boolean u() {
        long j2 = this.f22928b;
        return g <= j2 && j2 <= f22927h;
    }

    @Override // com.batch.android.z0.r
    public boolean v() {
        long j2 = this.f22928b;
        return f22925e <= j2 && j2 <= f22926f;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean w() {
        return super.w();
    }

    @Override // com.batch.android.z0.r
    public byte x() {
        if (O()) {
            return (byte) this.f22928b;
        }
        throw new com.batch.android.x0.f(this.f22928b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean y() {
        return super.y();
    }

    @Override // com.batch.android.z0.r
    public int z() {
        if (u()) {
            return (int) this.f22928b;
        }
        throw new com.batch.android.x0.f(this.f22928b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public com.batch.android.z0.k a() {
        return this;
    }
}
