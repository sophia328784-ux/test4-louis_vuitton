package com.bumptech.glide;

import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.request.RequestOptions;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class GlideBuilder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Engine f24284c;
    public BitmapPool d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LruArrayPool f24285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LruResourceCache f24286f;
    public GlideExecutor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public GlideExecutor f24287h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InternalCacheDiskCacheFactory f24288i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MemorySizeCalculator f24289j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DefaultConnectivityMonitorFactory f24290k;
    public GlideExecutor n;
    public List o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayMap f24282a = new ArrayMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GlideExperiments.Builder f24283b = new GlideExperiments.Builder();
    public final int l = 4;
    public final Glide.RequestOptionsFactory m = new AnonymousClass1();

    /* JADX INFO: renamed from: com.bumptech.glide.GlideBuilder$1, reason: invalid class name */
    public class AnonymousClass1 implements Glide.RequestOptionsFactory {
        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        public final RequestOptions build() {
            return new RequestOptions();
        }
    }

    public static final class EnableImageDecoderForBitmaps implements GlideExperiments.Experiment {
    }

    public static final class LogRequestOrigins implements GlideExperiments.Experiment {
    }

    public static final class OverrideGlideThreadPriority implements GlideExperiments.Experiment {
    }

    public static final class UseMediaStoreOpenFileApisIfPossible implements GlideExperiments.Experiment {
    }
}
