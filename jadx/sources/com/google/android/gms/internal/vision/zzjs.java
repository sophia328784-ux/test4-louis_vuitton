package com.google.android.gms.internal.vision;

import defpackage.ct0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjs extends zzhj<String> implements zzjv, RandomAccess {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f31227c;

    static {
        new zzjs().f31182b = false;
    }

    public zzjs(int i2) {
        this(new ArrayList(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        f();
        this.f31227c.add(i2, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        f();
        if (collection instanceof zzjv) {
            collection = ((zzjv) collection).g0();
        }
        boolean zAddAll = this.f31227c.addAll(i2, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        f();
        this.f31227c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, com.google.android.gms.internal.vision.zzjl
    public final boolean d0() {
        return this.f31182b;
    }

    @Override // com.google.android.gms.internal.vision.zzjl
    public final zzjl e(int i2) {
        ArrayList arrayList = this.f31227c;
        if (i2 < arrayList.size()) {
            ct0.c();
            return null;
        }
        ArrayList arrayList2 = new ArrayList(i2);
        arrayList2.addAll(arrayList);
        return new zzjs(arrayList2);
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final Object g(int i2) {
        return this.f31227c.get(i2);
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final List g0() {
        return Collections.unmodifiableList(this.f31227c);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        String str;
        ArrayList arrayList = this.f31227c;
        Object obj = arrayList.get(i2);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof zzht)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, zzjf.f31225a);
            if (zzmd.f31295a.c(0, bArr.length, bArr)) {
                arrayList.set(i2, str2);
            }
            return str2;
        }
        zzht zzhtVar = (zzht) obj;
        Charset charset = zzjf.f31225a;
        if (zzhtVar.f() == 0) {
            str = "";
        } else {
            zzid zzidVar = (zzid) zzhtVar;
            str = new String(zzidVar.f31193e, zzidVar.m(), zzidVar.f(), charset);
        }
        zzid zzidVar2 = (zzid) zzhtVar;
        int iM = zzidVar2.m();
        byte[] bArr2 = zzidVar2.f31193e;
        if (zzmd.f31295a.c(iM, zzidVar2.f() + iM, bArr2)) {
            arrayList.set(i2, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final zzjv h0() {
        return this.f31182b ? new zzlz(this) : this;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        f();
        Object objRemove = this.f31227c.remove(i2);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof zzht)) {
            return new String((byte[]) objRemove, zzjf.f31225a);
        }
        zzht zzhtVar = (zzht) objRemove;
        Charset charset = zzjf.f31225a;
        if (zzhtVar.f() == 0) {
            return "";
        }
        zzid zzidVar = (zzid) zzhtVar;
        return new String(zzidVar.f31193e, zzidVar.m(), zzidVar.f(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        Object obj2 = this.f31227c.set(i2, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof zzht)) {
            return new String((byte[]) obj2, zzjf.f31225a);
        }
        zzht zzhtVar = (zzht) obj2;
        Charset charset = zzjf.f31225a;
        if (zzhtVar.f() == 0) {
            return "";
        }
        zzid zzidVar = (zzid) zzhtVar;
        return new String(zzidVar.f31193e, zzidVar.m(), zzidVar.f(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31227c.size();
    }

    @Override // com.google.android.gms.internal.vision.zzjv
    public final void y1(zzht zzhtVar) {
        f();
        this.f31227c.add(zzhtVar);
        ((AbstractList) this).modCount++;
    }

    public zzjs() {
        this(10);
    }

    public zzjs(ArrayList arrayList) {
        this.f31227c = arrayList;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f31227c.size(), collection);
    }
}
