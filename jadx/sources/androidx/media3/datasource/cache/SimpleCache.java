package androidx.media3.datasource.cache;

import android.database.SQLException;
import android.os.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.database.DatabaseIOException;
import androidx.media3.database.DatabaseProvider;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import defpackage.a61;
import defpackage.cj;
import defpackage.d21;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleCache implements Cache {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final HashSet f14519k = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f14520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CacheEvictor f14521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CachedContentIndex f14522c;
    public final CacheFileMetadataIndex d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f14523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Random f14524f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Cache.CacheException f14527j;

    public SimpleCache(File file, CacheEvictor cacheEvictor, DatabaseProvider databaseProvider, byte[] bArr, boolean z, boolean z2) {
        boolean zAdd;
        CachedContentIndex cachedContentIndex = new CachedContentIndex(databaseProvider, file, bArr, z, z2);
        CacheFileMetadataIndex cacheFileMetadataIndex = (databaseProvider == null || z2) ? null : new CacheFileMetadataIndex(databaseProvider);
        synchronized (SimpleCache.class) {
            zAdd = f14519k.add(file.getAbsoluteFile());
        }
        if (!zAdd) {
            a61.q(file, "Another SimpleCache instance uses the folder: ");
            throw null;
        }
        this.f14520a = file;
        this.f14521b = cacheEvictor;
        this.f14522c = cachedContentIndex;
        this.d = cacheFileMetadataIndex;
        this.f14523e = new HashMap();
        this.f14524f = new Random();
        cacheEvictor.getClass();
        this.g = true;
        this.f14525h = -1L;
        final ConditionVariable conditionVariable = new ConditionVariable();
        new Thread("ExoPlayer:SimpleCacheInit") { // from class: androidx.media3.datasource.cache.SimpleCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (SimpleCache.this) {
                    conditionVariable.open();
                    SimpleCache.k(SimpleCache.this);
                    SimpleCache.this.f14521b.getClass();
                }
            }
        }.start();
        conditionVariable.block();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void k(SimpleCache simpleCache) {
        long j2;
        CacheFileMetadataIndex cacheFileMetadataIndex = simpleCache.d;
        CachedContentIndex cachedContentIndex = simpleCache.f14522c;
        File file = simpleCache.f14520a;
        if (!file.exists()) {
            try {
                n(file);
            } catch (Cache.CacheException e2) {
                simpleCache.f14527j = e2;
                return;
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + file;
            Log.d(str);
            simpleCache.f14527j = new Cache.CacheException(str);
            return;
        }
        int length = fileArrListFiles.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                j2 = -1;
                break;
            }
            File file2 = fileArrListFiles[i2];
            String name = file2.getName();
            if (name.endsWith(".uid")) {
                try {
                    j2 = Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                    break;
                } catch (NumberFormatException unused) {
                    Log.d("Malformed UID file: " + file2);
                    file2.delete();
                }
            }
            i2++;
        }
        simpleCache.f14525h = j2;
        if (j2 == -1) {
            try {
                long jNextLong = new SecureRandom().nextLong();
                long j3 = 0;
                long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
                File file3 = new File(file, d21.j(Long.toString(jAbs, 16), ".uid"));
                if (file3.createNewFile()) {
                    j3 = jAbs;
                } else {
                    a61.n(file3, "Failed to create UID file: ");
                }
                simpleCache.f14525h = j3;
            } catch (IOException e3) {
                String str2 = "Failed to create cache UID: " + file;
                Log.e(str2, e3);
                simpleCache.f14527j = new Cache.CacheException(str2, e3);
                return;
            }
        }
        try {
            cachedContentIndex.e(simpleCache.f14525h);
            if (cacheFileMetadataIndex != null) {
                cacheFileMetadataIndex.b(simpleCache.f14525h);
                HashMap mapA = cacheFileMetadataIndex.a();
                simpleCache.o(file, true, fileArrListFiles, mapA);
                cacheFileMetadataIndex.c(mapA.keySet());
            } else {
                simpleCache.o(file, true, fileArrListFiles, null);
            }
            UnmodifiableIterator it = ImmutableSet.s(cachedContentIndex.f14496a.keySet()).iterator();
            while (it.hasNext()) {
                cachedContentIndex.f((String) it.next());
            }
            try {
                cachedContentIndex.g();
            } catch (IOException e4) {
                Log.e("Storing index file failed", e4);
            }
        } catch (IOException e5) {
            String str3 = "Failed to initialize cache indices: " + file;
            Log.e(str3, e5);
            simpleCache.f14527j = new Cache.CacheException(str3, e5);
        }
    }

    public static void n(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        Log.d(str);
        throw new Cache.CacheException(str);
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized DefaultContentMetadata a(String str) {
        CachedContent cachedContentC;
        cachedContentC = this.f14522c.c(str);
        return cachedContentC != null ? cachedContentC.f14493e : DefaultContentMetadata.f14512c;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized long b() {
        return this.f14526i;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized long c(long j2, long j3, String str) {
        CachedContent cachedContentC;
        if (j3 == -1) {
            j3 = Long.MAX_VALUE;
        }
        cachedContentC = this.f14522c.c(str);
        return cachedContentC != null ? cachedContentC.a(j2, j3) : -j3;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized CacheSpan d(long j2, long j3, String str) {
        CacheSpan cacheSpanE;
        m();
        while (true) {
            cacheSpanE = e(j2, j3, str);
            if (cacheSpanE == null) {
                wait();
            }
        }
        return cacheSpanE;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized CacheSpan e(long j2, long j3, String str) {
        long j4;
        SimpleCacheSpan simpleCacheSpanB;
        m();
        CachedContent cachedContentC = this.f14522c.c(str);
        if (cachedContentC != null) {
            j4 = j2;
            while (true) {
                simpleCacheSpanB = cachedContentC.b(j4, j3);
                if (!simpleCacheSpanB.f14481e) {
                    break;
                }
                File file = simpleCacheSpanB.f14482f;
                file.getClass();
                if (file.length() == simpleCacheSpanB.d) {
                    break;
                }
                q();
            }
        } else {
            j4 = j2;
            simpleCacheSpanB = new SimpleCacheSpan(str, j4, j3, -9223372036854775807L, null);
        }
        if (simpleCacheSpanB.f14481e) {
            return r(str, simpleCacheSpanB);
        }
        CachedContent cachedContentD = this.f14522c.d(str);
        long j5 = simpleCacheSpanB.d;
        ArrayList arrayList = cachedContentD.d;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            CachedContent.Range range = (CachedContent.Range) arrayList.get(i2);
            long j6 = range.f14494a;
            if (j6 <= j4) {
                long j7 = range.f14495b;
                if (j7 == -1 || j6 + j7 > j4) {
                    return null;
                }
            } else {
                if (j5 == -1 || j4 + j5 > j6) {
                    return null;
                }
            }
        }
        arrayList.add(new CachedContent.Range(j4, j5));
        return simpleCacheSpanB;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized void f(CacheSpan cacheSpan) {
        CachedContent cachedContentC = this.f14522c.c(cacheSpan.f14479b);
        cachedContentC.getClass();
        long j2 = cacheSpan.f14480c;
        ArrayList arrayList = cachedContentC.d;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((CachedContent.Range) arrayList.get(i2)).f14494a == j2) {
                arrayList.remove(i2);
                this.f14522c.f(cachedContentC.f14491b);
                notifyAll();
            }
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized long g(long j2, long j3, String str) {
        long j4;
        long j5 = j3 == -1 ? Long.MAX_VALUE : j3 + j2;
        long j6 = j5 >= 0 ? j5 : Long.MAX_VALUE;
        j4 = 0;
        while (j2 < j6) {
            long jC = c(j2, j6 - j2, str);
            if (jC > 0) {
                j4 += jC;
            } else {
                jC = -jC;
            }
            j2 += jC;
        }
        return j4;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized File h(long j2, long j3, String str) {
        CachedContent cachedContentC;
        File file;
        try {
            m();
            cachedContentC = this.f14522c.c(str);
            cachedContentC.getClass();
            Preconditions.q(cachedContentC.c(j2, j3));
            if (!this.f14520a.exists()) {
                n(this.f14520a);
                q();
            }
            this.f14521b.b(this, j3);
            file = new File(this.f14520a, Integer.toString(this.f14524f.nextInt(10)));
            if (!file.exists()) {
                n(file);
            }
        } catch (Throwable th) {
            throw th;
        }
        return SimpleCacheSpan.c(file, cachedContentC.f14490a, j2, System.currentTimeMillis());
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized void i(File file, long j2) {
        if (file.exists()) {
            if (j2 == 0) {
                file.delete();
                return;
            }
            SimpleCacheSpan simpleCacheSpanB = SimpleCacheSpan.b(file, j2, -9223372036854775807L, this.f14522c);
            simpleCacheSpanB.getClass();
            CachedContent cachedContentC = this.f14522c.c(simpleCacheSpanB.f14479b);
            cachedContentC.getClass();
            Preconditions.q(cachedContentC.c(simpleCacheSpanB.f14480c, simpleCacheSpanB.d));
            long jB = cachedContentC.f14493e.b();
            if (jB != -1) {
                Preconditions.q(simpleCacheSpanB.f14480c + simpleCacheSpanB.d <= jB);
            }
            if (this.d == null) {
                l(simpleCacheSpanB);
                this.f14522c.g();
                notifyAll();
                return;
            }
            try {
                this.d.d(simpleCacheSpanB.d, simpleCacheSpanB.g, file.getName());
                l(simpleCacheSpanB);
                try {
                    this.f14522c.g();
                    notifyAll();
                    return;
                } catch (IOException e2) {
                    throw new Cache.CacheException(e2);
                }
            } catch (IOException e3) {
                throw new Cache.CacheException(e3);
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public final synchronized void j(String str, ContentMetadataMutations contentMetadataMutations) {
        m();
        CachedContentIndex cachedContentIndex = this.f14522c;
        CachedContent cachedContentD = cachedContentIndex.d(str);
        DefaultContentMetadata defaultContentMetadata = cachedContentD.f14493e;
        DefaultContentMetadata defaultContentMetadataA = defaultContentMetadata.a(contentMetadataMutations);
        cachedContentD.f14493e = defaultContentMetadataA;
        if (!defaultContentMetadataA.equals(defaultContentMetadata)) {
            cachedContentIndex.f14499e.f(cachedContentD);
        }
        try {
            this.f14522c.g();
        } catch (IOException e2) {
            throw new Cache.CacheException(e2);
        }
    }

    public final void l(SimpleCacheSpan simpleCacheSpan) {
        String str = simpleCacheSpan.f14479b;
        this.f14522c.d(str).f14492c.add(simpleCacheSpan);
        this.f14526i += simpleCacheSpan.d;
        ArrayList arrayList = (ArrayList) this.f14523e.get(str);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.Listener) arrayList.get(size)).d(this, simpleCacheSpan);
            }
        }
        this.f14521b.d(this, simpleCacheSpan);
    }

    public final synchronized void m() {
        Cache.CacheException cacheException = this.f14527j;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    public final void o(File file, boolean z, File[] fileArr, Map map) {
        long j2;
        long j3;
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                o(file2, false, file2.listFiles(), map);
            } else if (!z || (!name.startsWith("cached_content_index.exi") && !name.endsWith(".uid"))) {
                CacheFileMetadata cacheFileMetadata = map != null ? (CacheFileMetadata) map.remove(name) : null;
                if (cacheFileMetadata != null) {
                    j2 = cacheFileMetadata.f14474a;
                    j3 = cacheFileMetadata.f14475b;
                } else {
                    j2 = -1;
                    j3 = -9223372036854775807L;
                }
                SimpleCacheSpan simpleCacheSpanB = SimpleCacheSpan.b(file2, j2, j3, this.f14522c);
                if (simpleCacheSpanB != null) {
                    l(simpleCacheSpanB);
                } else {
                    file2.delete();
                }
            }
        }
    }

    public final void p(CacheSpan cacheSpan) {
        String str = cacheSpan.f14479b;
        File file = cacheSpan.f14482f;
        CachedContentIndex cachedContentIndex = this.f14522c;
        CachedContent cachedContentC = cachedContentIndex.c(str);
        if (cachedContentC == null || !cachedContentC.f14492c.remove(cacheSpan)) {
            return;
        }
        if (file != null) {
            file.delete();
        }
        this.f14526i -= cacheSpan.d;
        CacheFileMetadataIndex cacheFileMetadataIndex = this.d;
        if (cacheFileMetadataIndex != null) {
            file.getClass();
            String name = file.getName();
            try {
                cacheFileMetadataIndex.f14478b.getClass();
                try {
                    cacheFileMetadataIndex.f14477a.getWritableDatabase().delete(cacheFileMetadataIndex.f14478b, "name = ?", new String[]{name});
                } catch (SQLException e2) {
                    throw new DatabaseIOException(e2);
                }
            } catch (IOException unused) {
                cj.y("Failed to remove file index entry for: ", name);
            }
        }
        cachedContentIndex.f(cachedContentC.f14491b);
        ArrayList arrayList = (ArrayList) this.f14523e.get(cacheSpan.f14479b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.Listener) arrayList.get(size)).a(cacheSpan);
            }
        }
        this.f14521b.a(cacheSpan);
    }

    public final void q() {
        ArrayList arrayList = new ArrayList();
        Iterator it = Collections.unmodifiableCollection(this.f14522c.f14496a.values()).iterator();
        while (it.hasNext()) {
            for (CacheSpan cacheSpan : ((CachedContent) it.next()).f14492c) {
                File file = cacheSpan.f14482f;
                file.getClass();
                if (file.length() != cacheSpan.d) {
                    arrayList.add(cacheSpan);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            p((CacheSpan) arrayList.get(i2));
        }
    }

    public final SimpleCacheSpan r(String str, SimpleCacheSpan simpleCacheSpan) {
        boolean z;
        File file;
        File file2 = simpleCacheSpan.f14482f;
        if (!this.g) {
            return simpleCacheSpan;
        }
        file2.getClass();
        String name = file2.getName();
        long j2 = simpleCacheSpan.d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        CacheFileMetadataIndex cacheFileMetadataIndex = this.d;
        if (cacheFileMetadataIndex != null) {
            try {
                cacheFileMetadataIndex.d(j2, jCurrentTimeMillis, name);
            } catch (IOException unused) {
                jCurrentTimeMillis = jCurrentTimeMillis;
                Log.g("Failed to update index with new touch timestamp.");
            }
            z = false;
        } else {
            z = true;
        }
        CachedContent cachedContentC = this.f14522c.c(str);
        cachedContentC.getClass();
        TreeSet treeSet = cachedContentC.f14492c;
        Preconditions.q(treeSet.remove(simpleCacheSpan));
        file2.getClass();
        if (z) {
            File parentFile = file2.getParentFile();
            parentFile.getClass();
            File fileC = SimpleCacheSpan.c(parentFile, cachedContentC.f14490a, simpleCacheSpan.f14480c, jCurrentTimeMillis);
            if (file2.renameTo(fileC)) {
                file = fileC;
            } else {
                Log.g("Failed to rename " + file2 + " to " + fileC);
                file = file2;
            }
        } else {
            file = file2;
        }
        Preconditions.q(simpleCacheSpan.f14481e);
        SimpleCacheSpan simpleCacheSpan2 = new SimpleCacheSpan(simpleCacheSpan.f14479b, simpleCacheSpan.f14480c, simpleCacheSpan.d, jCurrentTimeMillis, file);
        treeSet.add(simpleCacheSpan2);
        ArrayList arrayList = (ArrayList) this.f14523e.get(simpleCacheSpan.f14479b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.Listener) arrayList.get(size)).c(this, simpleCacheSpan, simpleCacheSpan2);
            }
        }
        this.f14521b.c(this, simpleCacheSpan, simpleCacheSpan2);
        return simpleCacheSpan2;
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, DatabaseProvider databaseProvider) {
        this(file, cacheEvictor, databaseProvider, null, false, false);
    }

    @Deprecated
    public SimpleCache(File file, CacheEvictor cacheEvictor) {
        this(file, cacheEvictor, null, null, false, true);
    }
}
