package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Trace;
import android.util.Log;
import com.appsflyer.sdk_base.referrer.Payload;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Util;
import defpackage.az;
import defpackage.md;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class Glide implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile Glide f24274j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile boolean f24275k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BitmapPool f24276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MemoryCache f24277c;
    public final GlideContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayPool f24278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequestManagerRetriever f24279f;
    public final ConnectivityMonitorFactory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f24280h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RequestOptionsFactory f24281i;

    public interface RequestOptionsFactory {
        RequestOptions build();
    }

    public Glide(Context context, Engine engine, MemoryCache memoryCache, BitmapPool bitmapPool, ArrayPool arrayPool, RequestManagerRetriever requestManagerRetriever, ConnectivityMonitorFactory connectivityMonitorFactory, int i2, RequestOptionsFactory requestOptionsFactory, Map map, List list, final ArrayList arrayList, final AppGlideModule appGlideModule, GlideExperiments glideExperiments) {
        this.f24276b = bitmapPool;
        this.f24278e = arrayPool;
        this.f24277c = memoryCache;
        this.f24279f = requestManagerRetriever;
        this.g = connectivityMonitorFactory;
        this.f24281i = requestOptionsFactory;
        this.d = new GlideContext(context, arrayPool, new GlideSuppliers.GlideSupplier<Registry>(arrayList, appGlideModule) { // from class: com.bumptech.glide.RegistryFactory.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f24310b;
            public final /* synthetic */ ArrayList d;

            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public final Object get() {
                if (this.f24310b) {
                    md.k("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
                    return null;
                }
                Trace.beginSection(androidx.tracing.Trace.b("Glide registry"));
                this.f24310b = true;
                try {
                    return RegistryFactory.a(this.f24311c, this.d);
                } finally {
                    this.f24310b = false;
                    Trace.endSection();
                }
            }
        }, new ImageViewTargetFactory(), requestOptionsFactory, map, list, engine, glideExperiments, i2);
    }

    public static Glide a(Context context) {
        if (f24274j == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                Log.isLoggable("Glide", 5);
            } catch (IllegalAccessException e2) {
                az.s("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
                return null;
            } catch (InstantiationException e3) {
                az.s("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
                return null;
            } catch (NoSuchMethodException e4) {
                az.s("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
                return null;
            } catch (InvocationTargetException e5) {
                az.s("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e5);
                return null;
            }
            synchronized (Glide.class) {
                if (f24274j == null) {
                    if (f24275k) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f24275k = true;
                    try {
                        b(context, generatedAppGlideModule);
                        f24275k = false;
                    } catch (Throwable th) {
                        f24275k = false;
                        throw th;
                    }
                }
            }
        }
        return f24274j;
    }

    public static void b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        GlideBuilder glideBuilder = new GlideBuilder();
        Context applicationContext = context.getApplicationContext();
        List list = Collections.EMPTY_LIST;
        ManifestParser manifestParser = new ManifestParser(applicationContext);
        Log.isLoggable("ManifestParser", 3);
        ArrayList arrayList = new ArrayList();
        try {
            Context context2 = manifestParser.f24910a;
            ApplicationInfo applicationInfo = context2.getPackageManager().getApplicationInfo(context2.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                Log.isLoggable("ManifestParser", 3);
            } else {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Objects.toString(applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(ManifestParser.a(str));
                        Log.isLoggable("ManifestParser", 3);
                    }
                }
                Log.isLoggable("ManifestParser", 3);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.isLoggable("ManifestParser", 6);
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GlideModule glideModule = (GlideModule) it.next();
                if (hashSet.contains(glideModule.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        glideModule.toString();
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((GlideModule) it2.next()).getClass().toString();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((GlideModule) it3.next()).b();
        }
        if (glideBuilder.g == null) {
            GlideExecutor.Builder builder = new GlideExecutor.Builder(false);
            if (GlideExecutor.f24618c == 0) {
                GlideExecutor.f24618c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i2 = GlideExecutor.f24618c;
            builder.f24621b = i2;
            builder.f24622c = i2;
            builder.f24624f = Payload.SOURCE;
            glideBuilder.g = builder.a();
        }
        if (glideBuilder.f24287h == null) {
            GlideExecutor.Builder builder2 = new GlideExecutor.Builder(true);
            builder2.f24621b = 1;
            builder2.f24622c = 1;
            builder2.f24624f = "disk-cache";
            glideBuilder.f24287h = builder2.a();
        }
        if (glideBuilder.n == null) {
            if (GlideExecutor.f24618c == 0) {
                GlideExecutor.f24618c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i3 = GlideExecutor.f24618c < 4 ? 1 : 2;
            GlideExecutor.Builder builder3 = new GlideExecutor.Builder(true);
            builder3.f24621b = i3;
            builder3.f24622c = i3;
            builder3.f24624f = "animation";
            glideBuilder.n = builder3.a();
        }
        if (glideBuilder.f24289j == null) {
            glideBuilder.f24289j = new MemorySizeCalculator(new MemorySizeCalculator.Builder(applicationContext));
        }
        if (glideBuilder.f24290k == null) {
            glideBuilder.f24290k = new DefaultConnectivityMonitorFactory();
        }
        if (glideBuilder.d == null) {
            int i4 = glideBuilder.f24289j.f24607a;
            if (i4 > 0) {
                glideBuilder.d = new LruBitmapPool(i4);
            } else {
                glideBuilder.d = new BitmapPoolAdapter();
            }
        }
        if (glideBuilder.f24285e == null) {
            glideBuilder.f24285e = new LruArrayPool(glideBuilder.f24289j.f24609c);
        }
        if (glideBuilder.f24286f == null) {
            glideBuilder.f24286f = new LruResourceCache(glideBuilder.f24289j.f24608b);
        }
        if (glideBuilder.f24288i == null) {
            glideBuilder.f24288i = new InternalCacheDiskCacheFactory(applicationContext);
        }
        if (glideBuilder.f24284c == null) {
            glideBuilder.f24284c = new Engine(glideBuilder.f24286f, glideBuilder.f24288i, glideBuilder.f24287h, glideBuilder.g, GlideExecutor.h(), glideBuilder.n, false);
        }
        List list2 = glideBuilder.o;
        if (list2 == null) {
            glideBuilder.o = Collections.EMPTY_LIST;
        } else {
            glideBuilder.o = Collections.unmodifiableList(list2);
        }
        GlideExperiments.Builder builder4 = glideBuilder.f24283b;
        builder4.getClass();
        Glide glide = new Glide(applicationContext, glideBuilder.f24284c, glideBuilder.f24286f, glideBuilder.d, glideBuilder.f24285e, new RequestManagerRetriever(null), glideBuilder.f24290k, glideBuilder.l, glideBuilder.m, glideBuilder.f24282a, glideBuilder.o, arrayList, generatedAppGlideModule, new GlideExperiments(builder4));
        applicationContext.registerComponentCallbacks(glide);
        f24274j = glide;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        Util.a();
        this.f24277c.b();
        this.f24276b.b();
        this.f24278e.b();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        Util.a();
        synchronized (this.f24280h) {
            try {
                Iterator it = this.f24280h.iterator();
                while (it.hasNext()) {
                    ((RequestManager) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f24277c.a(i2);
        this.f24276b.a(i2);
        this.f24278e.a(i2);
    }
}
