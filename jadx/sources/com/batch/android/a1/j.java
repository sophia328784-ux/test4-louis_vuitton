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
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class j extends com.batch.android.a1.b implements com.batch.android.z0.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j f22929c = new j(new x[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x[] f22930b;

    public static class a implements Iterator<x> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private x[] f22931b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f22932c;

        public a(x[] xVarArr, int i2) {
            this.f22931b = xVarArr;
            this.f22932c = i2;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public x next() {
            int i2 = this.f22932c;
            x[] xVarArr = this.f22931b;
            if (i2 < xVarArr.length) {
                this.f22932c = i2 + 2;
                return xVarArr[i2];
            }
            b21.x();
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22932c < this.f22931b.length;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static class b extends AbstractSet<Map.Entry<x, x>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final x[] f22933b;

        public b(x[] xVarArr) {
            this.f22933b = xVarArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<x, x>> iterator() {
            return new c(this.f22933b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f22933b.length / 2;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class c implements Iterator<Map.Entry<x, x>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final x[] f22934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f22935c = 0;

        public c(x[] xVarArr) {
            this.f22934b = xVarArr;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<x, x> next() {
            int i2 = this.f22935c;
            x[] xVarArr = this.f22934b;
            if (i2 >= xVarArr.length) {
                b21.x();
                return null;
            }
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(xVarArr[i2], xVarArr[i2 + 1]);
            this.f22935c += 2;
            return simpleImmutableEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22935c < this.f22934b.length;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static class d extends AbstractMap<x, x> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final x[] f22936b;

        public d(x[] xVarArr) {
            this.f22936b = xVarArr;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<x, x>> entrySet() {
            return new b(this.f22936b);
        }
    }

    public static class e extends AbstractSet<x> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private x[] f22937b;

        public e(x[] xVarArr) {
            this.f22937b = xVarArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<x> iterator() {
            return new a(this.f22937b, 0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f22937b.length / 2;
        }
    }

    public static class f extends AbstractCollection<x> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private x[] f22938b;

        public f(x[] xVarArr) {
            this.f22938b = xVarArr;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<x> iterator() {
            return new a(this.f22938b, 1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f22938b.length / 2;
        }
    }

    public j(x[] xVarArr) {
        this.f22930b = xVarArr;
    }

    private static void b(StringBuilder sb, x xVar) {
        if (xVar.y()) {
            sb.append(xVar.s());
        } else {
            sb.append(xVar.toString());
        }
    }

    public static com.batch.android.z0.l b0() {
        return f22929c;
    }

    @Override // com.batch.android.z0.x
    public z A() {
        return z.MAP;
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

    @Override // com.batch.android.z0.s
    public x[] S() {
        x[] xVarArr = this.f22930b;
        return (x[]) Arrays.copyOf(xVarArr, xVarArr.length);
    }

    @Override // com.batch.android.z0.s
    public Map<x, x> U() {
        return new d(this.f22930b);
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
        jVar.g(this.f22930b.length / 2);
        int i2 = 0;
        while (true) {
            x[] xVarArr = this.f22930b;
            if (i2 >= xVarArr.length) {
                return;
            }
            xVarArr[i2].a(jVar);
            i2++;
        }
    }

    @Override // com.batch.android.a1.b
    /* JADX INFO: renamed from: a0 */
    public /* bridge */ /* synthetic */ n X() {
        return super.X();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.f c() {
        return super.c();
    }

    @Override // com.batch.android.z0.x
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public com.batch.android.z0.l m() {
        return this;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.g e() {
        return super.e();
    }

    @Override // com.batch.android.z0.s
    public Set<Map.Entry<x, x>> entrySet() {
        return new b(this.f22930b);
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
        if (!xVar.r()) {
            return false;
        }
        return U().equals(xVar.d().U());
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
        int i2 = 0;
        int iHashCode = 0;
        while (true) {
            x[] xVarArr = this.f22930b;
            if (i2 >= xVarArr.length) {
                return iHashCode;
            }
            iHashCode += xVarArr[i2].hashCode() ^ this.f22930b[i2 + 1].hashCode();
            i2 += 2;
        }
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ o i() {
        return super.i();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.h j() {
        return super.j();
    }

    @Override // com.batch.android.z0.s
    public Set<x> keySet() {
        return new e(this.f22930b);
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
        if (this.f22930b.length == 0) {
            return "{}";
        }
        StringBuilder sbT = n00.t("{");
        a(sbT, this.f22930b[0]);
        sbT.append(":");
        sbT.append(this.f22930b[1].s());
        for (int i2 = 2; i2 < this.f22930b.length; i2 += 2) {
            sbT.append(",");
            a(sbT, this.f22930b[i2]);
            sbT.append(":");
            sbT.append(this.f22930b[i2 + 1].s());
        }
        sbT.append("}");
        return sbT.toString();
    }

    @Override // com.batch.android.z0.s
    public int size() {
        return this.f22930b.length / 2;
    }

    public String toString() {
        if (this.f22930b.length == 0) {
            return "{}";
        }
        StringBuilder sbT = n00.t("{");
        b(sbT, this.f22930b[0]);
        sbT.append(":");
        b(sbT, this.f22930b[1]);
        for (int i2 = 2; i2 < this.f22930b.length; i2 += 2) {
            sbT.append(",");
            b(sbT, this.f22930b[i2]);
            sbT.append(":");
            b(sbT, this.f22930b[i2 + 1]);
        }
        sbT.append("}");
        return sbT.toString();
    }

    @Override // com.batch.android.z0.s
    public Collection<x> values() {
        return new f(this.f22930b);
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
    public com.batch.android.z0.l d() {
        return this;
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.j b() {
        return super.b();
    }

    @Override // com.batch.android.a1.b, com.batch.android.z0.q, com.batch.android.z0.x
    public /* bridge */ /* synthetic */ com.batch.android.z0.k a() {
        return super.a();
    }

    private static void a(StringBuilder sb, x xVar) {
        if (xVar.y()) {
            sb.append(xVar.s());
        } else {
            com.batch.android.a1.a.a(sb, xVar.toString());
        }
    }
}
