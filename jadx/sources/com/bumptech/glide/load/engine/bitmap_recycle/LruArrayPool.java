package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import com.bumptech.glide.util.Preconditions;
import defpackage.md;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class LruArrayPool implements ArrayPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GroupedLinkedMap f24568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KeyPool f24569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f24570c;
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f24571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24572f;

    public static final class Key implements Poolable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KeyPool f24573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f24574b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Class f24575c;

        public Key(KeyPool keyPool) {
            this.f24573a = keyPool;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void a() {
            this.f24573a.a(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.f24574b == key.f24574b && this.f24575c == key.f24575c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i2 = this.f24574b * 31;
            Class cls = this.f24575c;
            return i2 + (cls != null ? cls.hashCode() : 0);
        }

        public final String toString() {
            return "Key{size=" + this.f24574b + "array=" + this.f24575c + '}';
        }
    }

    public static final class KeyPool extends BaseKeyPool<Key> {
        public final Poolable b() {
            return new Key(this);
        }
    }

    public LruArrayPool() {
        this.f24568a = new GroupedLinkedMap();
        this.f24569b = new KeyPool();
        this.f24570c = new HashMap();
        this.d = new HashMap();
        this.f24571e = 4194304;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized void a(int i2) {
        try {
            if (i2 >= 40) {
                b();
            } else if (i2 >= 20 || i2 == 15) {
                f(this.f24571e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized void b() {
        f(0);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized Object c(int i2, Class cls) {
        Key key;
        int i3;
        try {
            Integer num = (Integer) i(cls).ceilingKey(Integer.valueOf(i2));
            boolean z = num != null && ((i3 = this.f24572f) == 0 || this.f24571e / i3 >= 2 || num.intValue() <= i2 * 8);
            KeyPool keyPool = this.f24569b;
            if (z) {
                int iIntValue = num.intValue();
                Poolable poolableB = (Poolable) keyPool.f24562a.poll();
                if (poolableB == null) {
                    poolableB = keyPool.b();
                }
                key = (Key) poolableB;
                key.f24574b = iIntValue;
                key.f24575c = cls;
            } else {
                Poolable poolableB2 = (Poolable) keyPool.f24562a.poll();
                if (poolableB2 == null) {
                    poolableB2 = keyPool.b();
                }
                key = (Key) poolableB2;
                key.f24574b = i2;
                key.f24575c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return h(key, cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized Object d() {
        Key key;
        KeyPool keyPool = this.f24569b;
        Poolable poolableB = (Poolable) keyPool.f24562a.poll();
        if (poolableB == null) {
            poolableB = keyPool.b();
        }
        key = (Key) poolableB;
        key.f24574b = 8;
        key.f24575c = byte[].class;
        return h(key, byte[].class);
    }

    public final void e(int i2, Class cls) {
        NavigableMap navigableMapI = i(cls);
        Integer num = (Integer) navigableMapI.get(Integer.valueOf(i2));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapI.remove(Integer.valueOf(i2));
                return;
            } else {
                navigableMapI.put(Integer.valueOf(i2), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i2 + ", this: " + this);
    }

    public final void f(int i2) {
        while (this.f24572f > i2) {
            Object objC = this.f24568a.c();
            Preconditions.b(objC);
            ArrayAdapterInterface arrayAdapterInterfaceG = g(objC.getClass());
            this.f24572f -= arrayAdapterInterfaceG.b(objC) * arrayAdapterInterfaceG.a();
            e(arrayAdapterInterfaceG.b(objC), objC.getClass());
            if (Log.isLoggable(arrayAdapterInterfaceG.getTag(), 2)) {
                arrayAdapterInterfaceG.b(objC);
            }
        }
    }

    public final ArrayAdapterInterface g(Class cls) {
        ArrayAdapterInterface byteArrayAdapter;
        HashMap map = this.d;
        ArrayAdapterInterface arrayAdapterInterface = (ArrayAdapterInterface) map.get(cls);
        if (arrayAdapterInterface != null) {
            return arrayAdapterInterface;
        }
        if (cls.equals(int[].class)) {
            byteArrayAdapter = new IntegerArrayAdapter();
        } else {
            if (!cls.equals(byte[].class)) {
                md.n("No array pool found for: ".concat(cls.getSimpleName()));
                return null;
            }
            byteArrayAdapter = new ByteArrayAdapter();
        }
        map.put(cls, byteArrayAdapter);
        return byteArrayAdapter;
    }

    public final Object h(Key key, Class cls) {
        ArrayAdapterInterface arrayAdapterInterfaceG = g(cls);
        Object objA = this.f24568a.a(key);
        if (objA != null) {
            this.f24572f -= arrayAdapterInterfaceG.b(objA) * arrayAdapterInterfaceG.a();
            e(arrayAdapterInterfaceG.b(objA), cls);
        }
        if (objA != null) {
            return objA;
        }
        Log.isLoggable(arrayAdapterInterfaceG.getTag(), 2);
        return arrayAdapterInterfaceG.newArray(key.f24574b);
    }

    public final NavigableMap i(Class cls) {
        HashMap map = this.f24570c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized void put(Object obj) {
        Class<?> cls = obj.getClass();
        ArrayAdapterInterface arrayAdapterInterfaceG = g(cls);
        int iB = arrayAdapterInterfaceG.b(obj);
        int iA = arrayAdapterInterfaceG.a() * iB;
        if (iA <= this.f24571e / 2) {
            KeyPool keyPool = this.f24569b;
            Poolable poolableB = (Poolable) keyPool.f24562a.poll();
            if (poolableB == null) {
                poolableB = keyPool.b();
            }
            Key key = (Key) poolableB;
            key.f24574b = iB;
            key.f24575c = cls;
            this.f24568a.b(key, obj);
            NavigableMap navigableMapI = i(cls);
            Integer num = (Integer) navigableMapI.get(Integer.valueOf(key.f24574b));
            Integer numValueOf = Integer.valueOf(key.f24574b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapI.put(numValueOf, Integer.valueOf(iIntValue));
            this.f24572f += iA;
            f(this.f24571e);
        }
    }

    public LruArrayPool(int i2) {
        this.f24568a = new GroupedLinkedMap();
        this.f24569b = new KeyPool();
        this.f24570c = new HashMap();
        this.d = new HashMap();
        this.f24571e = i2;
    }
}
