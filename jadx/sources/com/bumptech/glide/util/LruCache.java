package com.bumptech.glide.util;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LruCache<T, Y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f24988a = new LinkedHashMap(100, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f24989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f24990c;

    public static final class Entry<Y> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f24991a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f24992b;

        public Entry(Object obj, int i2) {
            this.f24991a = obj;
            this.f24992b = i2;
        }
    }

    public LruCache(long j2) {
        this.f24989b = j2;
    }

    public final void b() {
        j(0L);
    }

    public /* bridge */ /* synthetic */ Resource c(Key key, Resource resource) {
        return (Resource) i(key, resource);
    }

    public Resource d(Key key) {
        Object obj;
        synchronized (this) {
            Entry entry = (Entry) this.f24988a.remove(key);
            if (entry == null) {
                obj = null;
            } else {
                this.f24990c -= (long) entry.f24992b;
                obj = entry.f24991a;
            }
        }
        return (Resource) obj;
    }

    public final synchronized Object f(Object obj) {
        Entry entry;
        entry = (Entry) this.f24988a.get(obj);
        return entry != null ? entry.f24991a : null;
    }

    public int g(Object obj) {
        return 1;
    }

    public void h(Object obj, Object obj2) {
    }

    public final synchronized Object i(Object obj, Object obj2) {
        int iG = g(obj2);
        long j2 = iG;
        if (j2 >= this.f24989b) {
            h(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f24990c += j2;
        }
        Entry entry = (Entry) this.f24988a.put(obj, obj2 == null ? null : new Entry(obj2, iG));
        if (entry != null) {
            this.f24990c -= (long) entry.f24992b;
            if (!entry.f24991a.equals(obj2)) {
                h(obj, entry.f24991a);
            }
        }
        j(this.f24989b);
        return entry != null ? entry.f24991a : null;
    }

    public final synchronized void j(long j2) {
        while (this.f24990c > j2) {
            Iterator it = this.f24988a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            Entry entry2 = (Entry) entry.getValue();
            this.f24990c -= (long) entry2.f24992b;
            Object key = entry.getKey();
            it.remove();
            h(key, entry2.f24991a);
        }
    }
}
