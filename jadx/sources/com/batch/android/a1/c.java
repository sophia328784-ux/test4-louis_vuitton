package com.batch.android.a1;

import com.batch.android.z0.m;
import com.batch.android.z0.n;
import com.batch.android.z0.o;
import com.batch.android.z0.p;
import com.batch.android.z0.x;
import com.batch.android.z0.z;
import defpackage.b21;
import defpackage.n00;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.batch.android.a1.b implements com.batch.android.z0.f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f22907c = new c(new x[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x[] f22908b;

    public static class b implements Iterator<x> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final x[] f22910b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f22911c = 0;

        public b(x[] xVarArr) {
            this.f22910b = xVarArr;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public x next() {
            int i2 = this.f22911c;
            x[] xVarArr = this.f22910b;
            if (i2 < xVarArr.length) {
                this.f22911c = i2 + 1;
                return xVarArr[i2];
            }
            b21.x();
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22911c != this.f22910b.length;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public c(x[] xVarArr) {
        this.f22908b = xVarArr;
    }

    private static void a(StringBuilder sb, x xVar) {
        if (xVar.y()) {
            sb.append(xVar.s());
        } else {
            sb.append(xVar.toString());
        }
    }

    public static com.batch.android.z0.f b0() {
        return f22907c;
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.ARRAY;
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

    @Override // com.batch.android.a1.b
    /* JADX INFO: renamed from: Z */
    public /* bridge */ /* synthetic */ com.batch.android.z0.i D() {
        return super.D();
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
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public com.batch.android.z0.f m() {
        return this;
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
        if (xVar instanceof c) {
            return Arrays.equals(this.f22908b, ((c) xVar).f22908b);
        }
        if (!xVar.L()) {
            return false;
        }
        com.batch.android.z0.a aVarC = xVar.c();
        if (size() != aVarC.size()) {
            return false;
        }
        Iterator<x> it = aVarC.iterator();
        for (int i2 = 0; i2 < this.f22908b.length; i2++) {
            if (!it.hasNext() || !this.f22908b[i2].equals(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ m f() {
        return super.f();
    }

    @Override // com.batch.android.z0.a
    public x get(int i2) {
        return this.f22908b[i2];
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ p h() {
        return super.h();
    }

    public int hashCode() {
        int iHashCode = 1;
        int i2 = 0;
        while (true) {
            x[] xVarArr = this.f22908b;
            if (i2 >= xVarArr.length) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + xVarArr[i2].hashCode();
            i2++;
        }
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ o i() {
        return super.i();
    }

    @Override // com.batch.android.z0.f, com.batch.android.z0.a, java.lang.Iterable
    public Iterator<x> iterator() {
        return new b(this.f22908b);
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.h j() {
        return super.j();
    }

    @Override // com.batch.android.z0.f, com.batch.android.z0.a
    public List<x> l() {
        return new a(this.f22908b);
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
        if (this.f22908b.length == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f22908b[0].s());
        for (int i2 = 1; i2 < this.f22908b.length; i2++) {
            sb.append(",");
            sb.append(this.f22908b[i2].s());
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.batch.android.z0.a
    public int size() {
        return this.f22908b.length;
    }

    public String toString() {
        if (this.f22908b.length == 0) {
            return "[]";
        }
        StringBuilder sbT = n00.t("[");
        a(sbT, this.f22908b[0]);
        for (int i2 = 1; i2 < this.f22908b.length; i2++) {
            sbT.append(",");
            a(sbT, this.f22908b[i2]);
        }
        sbT.append("]");
        return sbT.toString();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean w() {
        return super.w();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ boolean y() {
        return super.y();
    }

    public static class a extends AbstractList<x> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final x[] f22909b;

        public a(x[] xVarArr) {
            this.f22909b = xVarArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f22909b.length;
        }

        @Override // java.util.AbstractList, java.util.List
        public x get(int i2) {
            return this.f22909b[i2];
        }
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public com.batch.android.z0.f c() {
        return this;
    }

    @Override // com.batch.android.z0.a
    public x a(int i2) {
        x[] xVarArr = this.f22908b;
        if (i2 < xVarArr.length && i2 >= 0) {
            return xVarArr[i2];
        }
        return k.b0();
    }

    @Override // com.batch.android.z0.x
    public void a(com.batch.android.x0.j jVar) throws IOException {
        jVar.d(this.f22908b.length);
        int i2 = 0;
        while (true) {
            x[] xVarArr = this.f22908b;
            if (i2 >= xVarArr.length) {
                return;
            }
            xVarArr[i2].a(jVar);
            i2++;
        }
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.k a() {
        return super.a();
    }
}
