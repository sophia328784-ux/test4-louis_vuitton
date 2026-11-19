package com.batch.android.g0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.batch.android.f0.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d.EnumC0052d f23313f;
    private final f g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d.i f23314h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f23315i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map<String, String> f23316j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<String, String> f23317k;
    private final Map<String, com.batch.android.f0.a> l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public a(d.EnumC0052d enumC0052d, f fVar, d.i iVar, b bVar, Map<String, String> map, Map<String, String> map2, Map<String, ? extends com.batch.android.f0.a> map3) {
        super(null);
        enumC0052d.getClass();
        fVar.getClass();
        iVar.getClass();
        map.getClass();
        map2.getClass();
        map3.getClass();
        this.f23313f = enumC0052d;
        this.g = fVar;
        this.f23314h = iVar;
        this.f23315i = bVar;
        this.f23316j = map;
        this.f23317k = map2;
        this.l = map3;
    }

    public final c.g a(String str) {
        Object next;
        str.getClass();
        Iterator<T> it = g().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.c(((c.g) next).r(), str)) {
                return (c.g) next;
            }
        }
        next = null;
        return (c.g) next;
    }

    public final Map<String, com.batch.android.f0.a> d() {
        return this.l;
    }

    public final b e() {
        return this.f23315i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!a.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        a aVar = (a) obj;
        return this.f23313f == aVar.f23313f && Intrinsics.c(this.g, aVar.g) && this.f23314h == aVar.f23314h && Intrinsics.c(this.f23315i, aVar.f23315i) && Intrinsics.c(this.f23316j, aVar.f23316j) && Intrinsics.c(this.f23317k, aVar.f23317k) && Intrinsics.c(this.l, aVar.l);
    }

    public final d.EnumC0052d f() {
        return this.f23313f;
    }

    public final List<c.g> g() {
        List<c> listH = this.g.h();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listH) {
            if (obj instanceof c.g) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        List<c> listH2 = this.g.h();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listH2) {
            if (obj2 instanceof c.C0050c) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size = arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj3 = arrayList3.get(i2);
            i2++;
            List<c.b> listP = ((c.C0050c) obj3).p();
            ArrayList arrayList5 = new ArrayList();
            for (Object obj4 : listP) {
                if (obj4 instanceof c.g) {
                    arrayList5.add(obj4);
                }
            }
            CollectionsKt.j(arrayList4, arrayList5);
        }
        arrayList2.addAll(arrayList4);
        return CollectionsKt.y0(arrayList2);
    }

    public final d.i h() {
        return this.f23314h;
    }

    public int hashCode() {
        int iHashCode = (this.f23314h.hashCode() + ((this.g.hashCode() + (this.f23313f.hashCode() * 31)) * 31)) * 31;
        b bVar = this.f23315i;
        return this.l.hashCode() + ((this.f23317k.hashCode() + ((this.f23316j.hashCode() + ((iHashCode + (bVar != null ? bVar.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    public final f i() {
        return this.g;
    }

    public final Map<String, String> j() {
        return this.f23316j;
    }

    public final Map<String, String> k() {
        return this.f23317k;
    }

    public final c.k l() {
        List<c> listH = this.g.h();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listH) {
            if (obj instanceof c.k) {
                arrayList.add(obj);
            }
        }
        return (c.k) CollectionsKt.firstOrNull(arrayList);
    }

    public final boolean m() {
        return this.f23313f == d.EnumC0052d.MODAL && this.f23314h == d.i.BOTTOM && this.g.i().d();
    }

    public final boolean n() {
        return t() && this.g.i().d();
    }

    public final boolean o() {
        if (this.f23313f != d.EnumC0052d.MODAL) {
            return false;
        }
        d.i iVar = this.f23314h;
        return iVar == d.i.BOTTOM || iVar == d.i.TOP;
    }

    public final boolean p() {
        return this.f23313f == d.EnumC0052d.MODAL && this.f23314h == d.i.CENTER;
    }

    public final boolean q() {
        return this.f23313f == d.EnumC0052d.FULLSCREEN;
    }

    public final boolean r() {
        return this.g.h().size() == 1 && (this.g.h().get(0) instanceof c.g);
    }

    public final boolean s() {
        return this.f23313f == d.EnumC0052d.MODAL;
    }

    public final boolean t() {
        return this.f23313f == d.EnumC0052d.MODAL && this.f23314h == d.i.TOP;
    }

    public final boolean u() {
        return this.f23313f == d.EnumC0052d.WEBVIEW;
    }

    public final boolean v() {
        return (q() || m() || n()) ? false : true;
    }

    public final void a(d.i iVar) {
        iVar.getClass();
        this.f23314h = iVar;
    }
}
