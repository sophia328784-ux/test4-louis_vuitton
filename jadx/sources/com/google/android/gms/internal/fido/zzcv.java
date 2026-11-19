package com.google.android.gms.internal.fido;

import defpackage.b21;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzcv extends zzck {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzcv f29870h;
    public final transient zzcc g;

    static {
        zzdd zzddVar = zzcc.f29848c;
        f29870h = new zzcv(zzct.f29862f, zzcq.f29861b);
    }

    public zzcv(zzcc zzccVar, Comparator comparator) {
        super(comparator);
        this.g = zzccVar;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        return this.g.a(objArr);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int iX = x(obj, true);
        zzcc zzccVar = this.g;
        if (iX == zzccVar.size()) {
            return null;
        }
        return zzccVar.get(iX);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.g, obj, this.f29857e) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof zzcp) {
            collection = ((zzcp) collection).d0();
        }
        Comparator comparator = this.f29857e;
        if (!zzdb.a(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        zzdd zzddVarListIterator = this.g.listIterator(0);
        Iterator it = collection.iterator();
        zzbu zzbuVar = (zzbu) zzddVarListIterator;
        if (zzbuVar.hasNext()) {
            Object next = it.next();
            Object next2 = zzbuVar.next();
            while (true) {
                try {
                    int iCompare = comparator.compare(next2, next);
                    if (iCompare >= 0) {
                        if (iCompare != 0) {
                            break;
                        }
                        if (!it.hasNext()) {
                            return true;
                        }
                        next = it.next();
                    } else {
                        if (!zzbuVar.hasNext()) {
                            break;
                        }
                        next2 = zzbuVar.next();
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
        }
        return false;
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return this.g.n().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        Object next;
        Object next2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            zzcc zzccVar = this.g;
            if (zzccVar.size() == set.size()) {
                if (isEmpty()) {
                    return true;
                }
                Comparator comparator = this.f29857e;
                if (!zzdb.a(comparator, set)) {
                    return containsAll(set);
                }
                Iterator it = set.iterator();
                try {
                    zzdd zzddVarListIterator = zzccVar.listIterator(0);
                    do {
                        zzbu zzbuVar = (zzbu) zzddVarListIterator;
                        if (!zzbuVar.hasNext()) {
                            return true;
                        }
                        next = zzbuVar.next();
                        next2 = it.next();
                        if (next2 == null) {
                            break;
                        }
                    } while (comparator.compare(next, next2) == 0);
                } catch (ClassCastException | NoSuchElementException unused) {
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int f() {
        return this.g.f();
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.g.get(0);
        }
        b21.x();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        int iV = v(obj, true) - 1;
        if (iV == -1) {
            return null;
        }
        return this.g.get(iV);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int h() {
        return this.g.h();
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        int iX = x(obj, false);
        zzcc zzccVar = this.g;
        if (iX == zzccVar.size()) {
            return null;
        }
        return zzccVar.get(iX);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final zzdc i() {
        return this.g.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final /* synthetic */ Iterator iterator() {
        return this.g.listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            b21.x();
            return null;
        }
        zzcc zzccVar = this.g;
        return zzccVar.get(zzccVar.size() - 1);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        int iV = v(obj, false) - 1;
        if (iV == -1) {
            return null;
        }
        return this.g.get(iV);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] m() {
        return this.g.m();
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc q() {
        return this.g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.g.size();
    }

    public final int v(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.g, obj, this.f29857e);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    public final int x(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.g, obj, this.f29857e);
        if (iBinarySearch >= 0) {
            return z ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    public final zzcv z(int i2, int i3) {
        zzcc zzccVar = this.g;
        if (i2 == 0) {
            if (i3 == zzccVar.size()) {
                return this;
            }
            i2 = 0;
        }
        Comparator comparator = this.f29857e;
        return i2 < i3 ? new zzcv(zzccVar.subList(i2, i3), comparator) : zzck.u(comparator);
    }
}
