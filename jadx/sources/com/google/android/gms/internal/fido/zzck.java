package com.google.android.gms.internal.fido;

import defpackage.ct0;
import java.util.Collections;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzck extends zzcf implements NavigableSet, zzda {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Comparator f29857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient zzck f29858f;

    public zzck(Comparator comparator) {
        this.f29857e = comparator;
    }

    public static zzcv u(Comparator comparator) {
        if (zzcq.f29861b == comparator) {
            return zzcv.f29870h;
        }
        zzdd zzddVar = zzcc.f29848c;
        return new zzcv(zzct.f29862f, comparator);
    }

    public final void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final void addLast(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet, com.google.android.gms.internal.fido.zzda
    public final Comparator comparator() {
        return this.f29857e;
    }

    @Override // java.util.SortedSet
    public abstract Object first();

    public final Object getFirst() {
        return first();
    }

    public final Object getLast() {
        return last();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        zzcv zzcvVar = (zzcv) this;
        return zzcvVar.z(0, zzcvVar.v(obj, false));
    }

    @Override // java.util.SortedSet
    public abstract Object last();

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    public final Object removeFirst() {
        throw new UnsupportedOperationException();
    }

    public final Object removeLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final zzck descendingSet() {
        zzck zzckVarU = this.f29858f;
        if (zzckVarU == null) {
            zzcv zzcvVar = (zzcv) this;
            Comparator comparatorReverseOrder = Collections.reverseOrder(zzcvVar.f29857e);
            zzckVarU = zzcvVar.isEmpty() ? u(comparatorReverseOrder) : new zzcv(zzcvVar.g.n(), comparatorReverseOrder);
            this.f29858f = zzckVarU;
            zzckVarU.f29858f = this;
        }
        return zzckVarU;
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final zzck subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.f29857e.compare(obj, obj2) > 0) {
            ct0.c();
            return null;
        }
        zzcv zzcvVar = (zzcv) this;
        zzcv zzcvVarZ = zzcvVar.z(zzcvVar.x(obj, z), zzcvVar.g.size());
        return zzcvVarZ.z(0, zzcvVarZ.v(obj2, z2));
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        zzcv zzcvVar = (zzcv) this;
        return zzcvVar.z(zzcvVar.x(obj, true), zzcvVar.g.size());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        zzcv zzcvVar = (zzcv) this;
        return zzcvVar.z(0, zzcvVar.v(obj, z));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        zzcv zzcvVar = (zzcv) this;
        return zzcvVar.z(zzcvVar.x(obj, z), zzcvVar.g.size());
    }
}
