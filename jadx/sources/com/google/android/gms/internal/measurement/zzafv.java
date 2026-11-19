package com.google.android.gms.internal.measurement;

import defpackage.x1;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzafv extends AbstractMap {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f30464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30465c;
    public Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile zzafu f30467f;
    public Map g;

    public /* synthetic */ zzafv() {
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    public final Map.Entry a(int i2) {
        if (i2 < this.f30465c) {
            return (zzafs) this.f30464b[i2];
        }
        throw new ArrayIndexOutOfBoundsException(i2);
    }

    public final Set c() {
        return this.d.isEmpty() ? Collections.EMPTY_SET : this.d.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (this.f30465c != 0) {
            this.f30464b = null;
            this.f30465c = 0;
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return f(comparable) >= 0 || this.d.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int iF = f(comparable);
        if (iF >= 0) {
            return ((zzafs) this.f30464b[iF]).setValue(obj);
        }
        g();
        if (this.f30464b == null) {
            this.f30464b = new Object[16];
        }
        int i2 = -(iF + 1);
        if (i2 >= 16) {
            return h().put(comparable, obj);
        }
        if (this.f30465c == 16) {
            zzafs zzafsVar = (zzafs) this.f30464b[15];
            this.f30465c = 15;
            h().put(zzafsVar.f30458b, zzafsVar.f30459c);
        }
        Object[] objArr = this.f30464b;
        int length = objArr.length;
        System.arraycopy(objArr, i2, objArr, i2 + 1, 15 - i2);
        this.f30464b[i2] = new zzafs(this, comparable, obj);
        this.f30465c++;
        return null;
    }

    public final Object e(int i2) {
        g();
        Object[] objArr = this.f30464b;
        Object obj = ((zzafs) objArr[i2]).f30459c;
        System.arraycopy(objArr, i2 + 1, objArr, i2, (this.f30465c - i2) - 1);
        this.f30465c--;
        if (!this.d.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            Object[] objArr2 = this.f30464b;
            int i3 = this.f30465c;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i3] = new zzafs(this, (Comparable) entry.getKey(), entry.getValue());
            this.f30465c++;
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f30467f == null) {
            this.f30467f = new zzafu(this);
        }
        return this.f30467f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzafv)) {
            return super.equals(obj);
        }
        zzafv zzafvVar = (zzafv) obj;
        int size = size();
        if (size != zzafvVar.size()) {
            return false;
        }
        int i2 = this.f30465c;
        if (i2 != zzafvVar.f30465c) {
            return entrySet().equals(zzafvVar.entrySet());
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (!a(i3).equals(zzafvVar.a(i3))) {
                return false;
            }
        }
        if (i2 != size) {
            return this.d.equals(zzafvVar.d);
        }
        return true;
    }

    public final int f(Comparable comparable) {
        int i2 = this.f30465c;
        int i3 = i2 - 1;
        int i4 = 0;
        if (i3 >= 0) {
            int iCompareTo = comparable.compareTo(((zzafs) this.f30464b[i3]).f30458b);
            if (iCompareTo > 0) {
                return -(i2 + 1);
            }
            if (iCompareTo == 0) {
                return i3;
            }
        }
        while (i4 <= i3) {
            int i5 = (i4 + i3) / 2;
            int iCompareTo2 = comparable.compareTo(((zzafs) this.f30464b[i5]).f30458b);
            if (iCompareTo2 < 0) {
                i3 = i5 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i5;
                }
                i4 = i5 + 1;
            }
        }
        return -(i4 + 1);
    }

    public final void g() {
        if (this.f30466e) {
            x1.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        return iF >= 0 ? ((zzafs) this.f30464b[iF]).f30459c : this.d.get(comparable);
    }

    public final SortedMap h() {
        g();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i2 = this.f30465c;
        int iHashCode = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iHashCode += this.f30464b[i3].hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        if (iF >= 0) {
            return e(iF);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.f30465c;
    }
}
