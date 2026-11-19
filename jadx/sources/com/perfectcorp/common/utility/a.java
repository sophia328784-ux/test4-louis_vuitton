package com.perfectcorp.common.utility;

import android.content.SharedPreferences;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheBuilder;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements SharedPreferences {
    public static final LoadingCache g = CacheBuilder.b().a(new com.perfectcorp.common.utility.b());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ExecutorService f39442h = Executors.newSingleThreadExecutor(NamedThreadFactory.b("AsyncSharedPreferences"));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f39443i = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lock f39444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lock f39445c;
    public final HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f39446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SharedPreferences f39447f;

    /* JADX INFO: renamed from: com.perfectcorp.common.utility.a$a, reason: collision with other inner class name */
    public static final class CallableC0124a implements Callable<Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SharedPreferences f39448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f39449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Map<String, Object> f39450c;

        public CallableC0124a(SharedPreferences sharedPreferences, boolean z, Map<String, Object> map) {
            this.f39448a = sharedPreferences;
            this.f39449b = z;
            this.f39450c = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            try {
                SharedPreferences.Editor editorEdit = this.f39448a.edit();
                if (this.f39449b) {
                    editorEdit.clear();
                }
                for (Map.Entry<String, Object> entry : this.f39450c.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value == a.f39443i) {
                        editorEdit.remove(key);
                    } else if (value instanceof String) {
                        editorEdit.putString(key, (String) value);
                    } else if (value instanceof Set) {
                        editorEdit.putStringSet(key, (Set) value);
                    } else if (value instanceof Integer) {
                        editorEdit.putInt(key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        editorEdit.putLong(key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        editorEdit.putFloat(key, ((Float) value).floatValue());
                    } else {
                        if (!(value instanceof Boolean)) {
                            throw new AssertionError();
                        }
                        editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
                    }
                }
                return Boolean.valueOf(editorEdit.commit());
            } catch (Throwable th) {
                Log.e("AsyncSharedPreferences", "CommitCallable#call()", th);
                return Boolean.FALSE;
            }
        }
    }

    public final class b implements SharedPreferences.Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f39451a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f39452b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f39453c;

        public b() {
        }

        public final ListenableFutureTask a() {
            boolean z;
            ImmutableMap immutableMapD;
            a.this.f39445c.lock();
            try {
                synchronized (this.f39451a) {
                    try {
                        z = this.f39453c;
                        if (z) {
                            a.this.d.clear();
                            a.this.f39446e = true;
                            this.f39453c = false;
                        }
                        immutableMapD = ImmutableMap.d(this.f39452b);
                        a.this.d.putAll(immutableMapD);
                        this.f39452b.clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                a.this.f39445c.unlock();
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new CallableC0124a(a.this.f39447f, z, immutableMapD));
                a.f39442h.execute(listenableFutureTaskCreate);
                return listenableFutureTaskCreate;
            } catch (Throwable th2) {
                a.this.f39445c.unlock();
                throw th2;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public final void apply() {
            a();
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor clear() {
            synchronized (this.f39451a) {
                this.f39453c = true;
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final boolean commit() {
            return ((Boolean) MoreFutures.b(a())).booleanValue();
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putBoolean(String str, boolean z) {
            synchronized (this.f39451a) {
                this.f39452b.put(str, Boolean.valueOf(z));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putFloat(String str, float f2) {
            synchronized (this.f39451a) {
                this.f39452b.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putInt(String str, int i2) {
            synchronized (this.f39451a) {
                this.f39452b.put(str, Integer.valueOf(i2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putLong(String str, long j2) {
            synchronized (this.f39451a) {
                this.f39452b.put(str, Long.valueOf(j2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putString(String str, String str2) {
            synchronized (this.f39451a) {
                this.f39452b.put(str, str2 != null ? str2 : a.f39443i);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor putStringSet(String str, Set set) {
            synchronized (this.f39451a) {
                try {
                    this.f39452b.put(str, set != null ? ImmutableSet.q(set) : a.f39443i);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public final SharedPreferences.Editor remove(String str) {
            synchronized (this.f39451a) {
                this.f39452b.put(str, a.f39443i);
            }
            return this;
        }
    }

    public a(SharedPreferences sharedPreferences) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(true);
        this.f39444b = reentrantReadWriteLock.readLock();
        this.f39445c = reentrantReadWriteLock.writeLock();
        this.d = new HashMap();
        Objects.requireNonNull(sharedPreferences, "basePreferences can't be null");
        this.f39447f = sharedPreferences;
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            boolean z2 = false;
            Object obj = f39443i;
            HashMap map = this.d;
            if (!z) {
                if (map.containsKey(str)) {
                    return map.get(str) != obj;
                }
                return this.f39447f.contains(str);
            }
            if (map.containsKey(str) && map.get(str) != obj) {
                z2 = true;
            }
            return z2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        return new b();
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            HashMap map = this.d;
            if (z) {
                HashMap map2 = new HashMap(map);
                lock.unlock();
                return map2;
            }
            HashMap map3 = new HashMap(this.f39447f.getAll());
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value == f39443i) {
                    map3.remove(str);
                } else {
                    map3.put(str, value);
                }
            }
            lock.unlock();
            return map3;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z2 = this.f39446e;
            HashMap map = this.d;
            if (z2 && !map.containsKey(str)) {
                return z;
            }
            if (!map.containsKey(str)) {
                return this.f39447f.getBoolean(str, z);
            }
            Object obj = map.get(str);
            if (obj != f39443i) {
                Objects.requireNonNull(obj);
                z = ((Boolean) obj).booleanValue();
            }
            return z;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f2) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            HashMap map = this.d;
            if (z && !map.containsKey(str)) {
                return f2;
            }
            if (!map.containsKey(str)) {
                return this.f39447f.getFloat(str, f2);
            }
            Object obj = map.get(str);
            if (obj != f39443i) {
                Objects.requireNonNull(obj);
                f2 = ((Float) obj).floatValue();
            }
            return f2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i2) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            HashMap map = this.d;
            if (z && !map.containsKey(str)) {
                return i2;
            }
            if (!map.containsKey(str)) {
                return this.f39447f.getInt(str, i2);
            }
            Object obj = map.get(str);
            if (obj != f39443i) {
                Objects.requireNonNull(obj);
                i2 = ((Integer) obj).intValue();
            }
            return i2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j2) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            HashMap map = this.d;
            if (z && !map.containsKey(str)) {
                return j2;
            }
            if (!map.containsKey(str)) {
                return this.f39447f.getLong(str, j2);
            }
            Object obj = map.get(str);
            if (obj != f39443i) {
                Objects.requireNonNull(obj);
                j2 = ((Long) obj).longValue();
            }
            return j2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            HashMap map = this.d;
            if (z && !map.containsKey(str)) {
                return str2;
            }
            if (!map.containsKey(str)) {
                return this.f39447f.getString(str, str2);
            }
            Object obj = map.get(str);
            if (obj != f39443i) {
                str2 = (String) obj;
            }
            return str2;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        Lock lock = this.f39444b;
        lock.lock();
        try {
            boolean z = this.f39446e;
            HashMap map = this.d;
            if (z && !map.containsKey(str)) {
                return set;
            }
            if (!map.containsKey(str)) {
                return this.f39447f.getStringSet(str, set);
            }
            Object obj = map.get(str);
            if (obj != f39443i) {
                set = (Set) obj;
            }
            return set;
        } finally {
            lock.unlock();
        }
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException();
    }
}
