package com.batch.android.a1;

import com.batch.android.z0.m;
import com.batch.android.z0.n;
import com.batch.android.z0.o;
import com.batch.android.z0.p;
import com.batch.android.z0.x;
import com.batch.android.z0.z;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class h extends b implements com.batch.android.z0.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte f22922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f22923c;

    public h(byte b2, byte[] bArr) {
        this.f22922b = b2;
        this.f22923c = bArr;
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.EXTENSION;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean L() {
        return super.L();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean N() {
        return super.N();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean P() {
        return super.P();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean R() {
        return super.R();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean W() {
        return super.W();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean Y() {
        return super.Y();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    /* JADX INFO: renamed from: Z */
    public com.batch.android.z0.i D() {
        return this;
    }

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        jVar.a(this.f22922b, this.f22923c.length);
        jVar.b(this.f22923c);
    }

    @Override // com.batch.android.a1.b
    /* JADX INFO: renamed from: a0 */
    public /* bridge */ /* synthetic */ n X() {
        return super.X();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.j b() {
        return super.b();
    }

    @Override // com.batch.android.z0.x
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public com.batch.android.z0.i m() {
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
        if (!xVar.N()) {
            return false;
        }
        com.batch.android.z0.d dVarD = xVar.D();
        return this.f22922b == dVarD.k() && Arrays.equals(this.f22923c, dVarD.g());
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ m f() {
        return super.f();
    }

    @Override // com.batch.android.z0.d
    public byte[] g() {
        return this.f22923c;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ p h() {
        return super.h();
    }

    public int hashCode() {
        int i2 = this.f22922b + 31;
        for (byte b2 : this.f22923c) {
            i2 = (i2 * 31) + b2;
        }
        return i2;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ o i() {
        return super.i();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.h j() {
        return super.j();
    }

    @Override // com.batch.android.z0.d
    public byte k() {
        return this.f22922b;
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
        StringBuilder sb = new StringBuilder("[");
        sb.append(Byte.toString(this.f22922b));
        sb.append(",\"");
        for (byte b2 : this.f22923c) {
            sb.append(Integer.toString(b2, 16));
        }
        sb.append("\"]");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(Byte.toString(this.f22922b));
        sb.append(",0x");
        for (byte b2 : this.f22923c) {
            sb.append(Integer.toString(b2, 16));
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean w() {
        return super.w();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean y() {
        return super.y();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.k a() {
        return super.a();
    }
}
