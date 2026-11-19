package com.google.android.gms.internal.clearcut;

import defpackage.ct0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcw extends zzav<String> implements zzcx, RandomAccess {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f29679c;

    static {
        new zzcw().f29648b = false;
    }

    public zzcw(int i2) {
        this(new ArrayList(i2));
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    public final zzcx K1() {
        return this.f29648b ? new zzfa(this) : this;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    public final List X0() {
        return Collections.unmodifiableList(this.f29679c);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        f();
        this.f29679c.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.clearcut.zzav, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        f();
        if (collection instanceof zzcx) {
            collection = ((zzcx) collection).X0();
        }
        boolean zAddAll = this.f29679c.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.clearcut.zzav, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        f();
        this.f29679c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        String str;
        ArrayList arrayList = this.f29679c;
        Object obj = arrayList.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof zzbb)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, zzci.f29677a);
            if (zzff.f29751a.b(0, bArr.length, bArr)) {
                arrayList.set(i2, str2);
            }
            return str2;
        }
        zzbb zzbbVar = (zzbb) obj;
        Charset charset = zzci.f29677a;
        if (zzbbVar.size() == 0) {
            str = "";
        } else {
            zzbi zzbiVar = (zzbi) zzbbVar;
            str = new String(zzbiVar.f29658e, zzbiVar.f(), zzbiVar.size(), charset);
        }
        zzbi zzbiVar2 = (zzbi) zzbbVar;
        int iF = zzbiVar2.f();
        byte[] bArr2 = zzbiVar2.f29658e;
        if (zzff.f29751a.b(iF, zzbiVar2.size() + iF, bArr2)) {
            arrayList.set(i2, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.clearcut.zzav, com.google.android.gms.internal.clearcut.zzcn
    public final boolean o0() {
        return this.f29648b;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        f();
        Object objRemove = this.f29679c.remove(i2);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof zzbb)) {
            return new String((byte[]) objRemove, zzci.f29677a);
        }
        zzbb zzbbVar = (zzbb) objRemove;
        Charset charset = zzci.f29677a;
        if (zzbbVar.size() == 0) {
            return "";
        }
        zzbi zzbiVar = (zzbi) zzbbVar;
        return new String(zzbiVar.f29658e, zzbiVar.f(), zzbiVar.size(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        Object obj2 = this.f29679c.set(i2, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof zzbb)) {
            return new String((byte[]) obj2, zzci.f29677a);
        }
        zzbb zzbbVar = (zzbb) obj2;
        Charset charset = zzci.f29677a;
        if (zzbbVar.size() == 0) {
            return "";
        }
        zzbi zzbiVar = (zzbi) zzbbVar;
        return new String(zzbiVar.f29658e, zzbiVar.f(), zzbiVar.size(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29679c.size();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    public final zzcn v0(int i2) {
        ArrayList arrayList = this.f29679c;
        if (i2 < arrayList.size()) {
            ct0.c();
            return null;
        }
        ArrayList arrayList2 = new ArrayList(i2);
        arrayList2.addAll(arrayList);
        return new zzcw(arrayList2);
    }

    public zzcw() {
        this(10);
    }

    public zzcw(ArrayList arrayList) {
        this.f29679c = arrayList;
    }

    @Override // com.google.android.gms.internal.clearcut.zzav, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f29679c.size(), collection);
    }
}
