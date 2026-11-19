package com.google.android.gms.internal.gtm;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzlk extends zzlh {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object[] f30200i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzlk f30201j;
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f30203f;
    public final transient int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f30204h;

    static {
        Object[] objArr = new Object[0];
        f30200i = objArr;
        f30201j = new zzlk(objArr, objArr, 0, 0, 0);
    }

    public zzlk(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        this.d = objArr;
        this.f30202e = i2;
        this.f30203f = objArr2;
        this.g = i3;
        this.f30204h = i4;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.f30204h;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.gtm.zzld, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        Object[] objArr = this.f30203f;
        if (objArr.length == 0) {
            return false;
        }
        int iRotateLeft = (int) (((long) Integer.rotateLeft((int) (((long) obj.hashCode()) * (-862048943)), 15)) * 461845907);
        while (true) {
            int i2 = iRotateLeft & this.g;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iRotateLeft = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int f() {
        return this.f30204h;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.gtm.zzlh, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f30202e;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final Object[] i() {
        return this.d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzlg zzljVar = this.f30195c;
        if (zzljVar == null) {
            zzln zzlnVar = zzlg.f30194c;
            int i2 = this.f30204h;
            zzljVar = i2 == 0 ? zzlj.f30198f : new zzlj(this.d, i2);
            this.f30195c = zzljVar;
        }
        return zzljVar.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f30204h;
    }
}
