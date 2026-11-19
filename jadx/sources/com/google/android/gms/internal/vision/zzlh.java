package com.google.android.gms.internal.vision;

import defpackage.x1;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzlh<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f31267h = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f31269c = Collections.EMPTY_LIST;
    public Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f31270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile zzlo f31271f;
    public Map g;

    public zzlh(int i2) {
        this.f31268b = i2;
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x003b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    public final int a(Comparable comparable) {
        int i2;
        int i3;
        int i4;
        int iCompareTo;
        int size = this.f31269c.size();
        int i5 = size - 1;
        if (i5 < 0) {
            i2 = 0;
            while (i2 <= i5) {
                i4 = (i2 + i5) / 2;
                iCompareTo = comparable.compareTo(((zzlm) this.f31269c.get(i4)).f31274b);
                if (iCompareTo < 0) {
                    i5 = i4 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i4;
                    }
                    i2 = i4 + 1;
                }
            }
            i3 = i2 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((zzlm) this.f31269c.get(i5)).f31274b);
            if (iCompareTo2 > 0) {
                i3 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i5;
                }
                i2 = 0;
                while (i2 <= i5) {
                    i4 = (i2 + i5) / 2;
                    iCompareTo = comparable.compareTo(((zzlm) this.f31269c.get(i4)).f31274b);
                    if (iCompareTo < 0) {
                        i5 = i4 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i4;
                        }
                        i2 = i4 + 1;
                    }
                }
                i3 = i2 + 1;
            }
        }
        return -i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((zzlm) this.f31269c.get(iA)).setValue(obj);
        }
        g();
        boolean zIsEmpty = this.f31269c.isEmpty();
        int i2 = this.f31268b;
        if (zIsEmpty && !(this.f31269c instanceof ArrayList)) {
            this.f31269c = new ArrayList(i2);
        }
        int i3 = -(iA + 1);
        if (i3 >= i2) {
            return h().put(comparable, obj);
        }
        if (this.f31269c.size() == i2) {
            zzlm zzlmVar = (zzlm) this.f31269c.remove(i2 - 1);
            h().put(zzlmVar.f31274b, zzlmVar.f31275c);
        }
        this.f31269c.add(i3, new zzlm(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (!this.f31269c.isEmpty()) {
            this.f31269c.clear();
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.d.containsKey(comparable);
    }

    public final Map.Entry d(int i2) {
        return (Map.Entry) this.f31269c.get(i2);
    }

    public final Object e(int i2) {
        g();
        Object obj = ((zzlm) this.f31269c.remove(i2)).f31275c;
        if (!this.d.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            List list = this.f31269c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzlm(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f31271f == null) {
            this.f31271f = new zzlo(this);
        }
        return this.f31271f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlh)) {
            return super.equals(obj);
        }
        zzlh zzlhVar = (zzlh) obj;
        int size = size();
        if (size == zzlhVar.size()) {
            int size2 = this.f31269c.size();
            if (size2 != zzlhVar.f31269c.size()) {
                return ((AbstractSet) entrySet()).equals(zzlhVar.entrySet());
            }
            for (int i2 = 0; i2 < size2; i2++) {
                if (d(i2).equals(zzlhVar.d(i2))) {
                }
            }
            if (size2 != size) {
                return this.d.equals(zzlhVar.d);
            }
            return true;
        }
        return false;
    }

    public final Iterable f() {
        return this.d.isEmpty() ? zzll.f31273b : this.d.entrySet();
    }

    public final void g() {
        if (this.f31270e) {
            x1.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((zzlm) this.f31269c.get(iA)).f31275c : this.d.get(comparable);
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
        int size = this.f31269c.size();
        int iHashCode = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iHashCode += ((zzlm) this.f31269c.get(i2)).hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return e(iA);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.f31269c.size();
    }
}
