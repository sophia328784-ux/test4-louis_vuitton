package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import defpackage.md;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B\u0011\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/collection/LruCache;", "", "K", "V", "", "maxSize", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class LruCache<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LruHashMap f3291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lock f3292c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3294f;

    public LruCache(int i2) {
        this.f3290a = i2;
        if (!(i2 > 0)) {
            md.n("maxSize <= 0");
            throw null;
        }
        this.f3291b = new LruHashMap(0, 0.75f);
        this.f3292c = new Lock();
    }

    public Object a(Object obj) {
        obj.getClass();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object b(Object obj) {
        Object objPut;
        obj.getClass();
        synchronized (this.f3292c) {
            LruHashMap lruHashMap = this.f3291b;
            lruHashMap.getClass();
            Object obj2 = lruHashMap.f3402a.get(obj);
            if (obj2 != null) {
                this.f3293e++;
                return obj2;
            }
            this.f3294f++;
            Object objA = a(obj);
            if (objA == null) {
                return null;
            }
            synchronized (this.f3292c) {
                try {
                    LruHashMap lruHashMap2 = this.f3291b;
                    lruHashMap2.getClass();
                    objPut = lruHashMap2.f3402a.put(obj, objA);
                    if (objPut != null) {
                        LruHashMap lruHashMap3 = this.f3291b;
                        lruHashMap3.getClass();
                        lruHashMap3.f3402a.put(obj, objPut);
                    } else {
                        this.d++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objPut != null) {
                return objPut;
            }
            e(this.f3290a);
            return objA;
        }
    }

    public final Object c(Object obj, Object obj2) {
        Object objPut;
        obj.getClass();
        obj2.getClass();
        synchronized (this.f3292c) {
            this.d++;
            LruHashMap lruHashMap = this.f3291b;
            lruHashMap.getClass();
            objPut = lruHashMap.f3402a.put(obj, obj2);
            if (objPut != null) {
                this.d--;
            }
        }
        e(this.f3290a);
        return objPut;
    }

    public final Object d(Object obj) {
        Object objRemove;
        obj.getClass();
        synchronized (this.f3292c) {
            LruHashMap lruHashMap = this.f3291b;
            lruHashMap.getClass();
            objRemove = lruHashMap.f3402a.remove(obj);
            if (objRemove != null) {
                this.d--;
            }
        }
        return objRemove;
    }

    public final void e(int i2) {
        while (true) {
            synchronized (this.f3292c) {
                try {
                    if (this.d < 0 || (this.f3291b.f3402a.isEmpty() && this.d != 0)) {
                        break;
                    }
                    if (this.d > i2 && !this.f3291b.f3402a.isEmpty()) {
                        Set<Map.Entry<K, V>> setEntrySet = this.f3291b.f3402a.entrySet();
                        setEntrySet.getClass();
                        Map.Entry entry = (Map.Entry) CollectionsKt.C(setEntrySet);
                        if (entry == null) {
                            return;
                        }
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        LruHashMap lruHashMap = this.f3291b;
                        lruHashMap.getClass();
                        key.getClass();
                        lruHashMap.f3402a.remove(key);
                        int i3 = this.d;
                        value.getClass();
                        this.d = i3 - 1;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
    }

    public final String toString() {
        String str;
        synchronized (this.f3292c) {
            try {
                int i2 = this.f3293e;
                int i3 = this.f3294f + i2;
                str = "LruCache[maxSize=" + this.f3290a + ",hits=" + this.f3293e + ",misses=" + this.f3294f + ",hitRate=" + (i3 != 0 ? (i2 * 100) / i3 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
