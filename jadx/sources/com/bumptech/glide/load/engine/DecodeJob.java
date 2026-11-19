package com.bumptech.glide.load.engine;

import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.util.Pools$Pool;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import defpackage.az;
import defpackage.ct0;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class DecodeJob<R> implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable<DecodeJob<?>>, FactoryPools.Poolable {
    public static final Option<Supplier<Integer>> GLIDE_THREAD_PRIORITY_OVERRIDE = new Option<>("glide_thread_priority_override", null, Option.f24396e);
    private static final String TAG = "DecodeJob";
    private Callback<R> callback;
    private Key currentAttemptingKey;
    private Object currentData;
    private DataSource currentDataSource;
    private DataFetcher<?> currentFetcher;
    private volatile DataFetcherGenerator currentGenerator;
    private Key currentSourceKey;
    private Thread currentThread;
    private final DiskCacheProvider diskCacheProvider;
    private DiskCacheStrategy diskCacheStrategy;
    private GlideExperiments experiments;
    private GlideContext glideContext;
    private Supplier<Integer> glideThreadPriorityOverride;
    private int height;
    private volatile boolean isCallbackNotified;
    private volatile boolean isCancelled;
    private boolean isLoadingFromAlternateCacheKey;
    private EngineKey loadKey;
    private Object model;
    private boolean onlyRetrieveFromCache;
    private Options options;
    private int order;
    private final Pools$Pool<DecodeJob<?>> pool;
    private Priority priority;
    private RunReason runReason;
    private Key signature;
    private Stage stage;
    private long startFetchTime;
    private int width;
    private final DecodeHelper<R> decodeHelper = new DecodeHelper<>();
    private final List<Throwable> throwables = new ArrayList();
    private final StateVerifier stateVerifier = StateVerifier.a();
    private final DeferredEncodeManager<?> deferredEncodeManager = new DeferredEncodeManager<>();
    private final ReleaseManager releaseManager = new ReleaseManager();

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.DecodeJob$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f24462a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f24463b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f24464c;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            f24464c = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24464c[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Stage.values().length];
            f24463b = iArr2;
            try {
                iArr2[Stage.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f24463b[Stage.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f24463b[Stage.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f24463b[Stage.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f24463b[Stage.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[RunReason.values().length];
            f24462a = iArr3;
            try {
                iArr3[RunReason.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f24462a[RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f24462a[RunReason.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public interface Callback<R> {
        void c(Resource resource, DataSource dataSource, boolean z);

        void d(GlideException glideException);

        void e(DecodeJob decodeJob);
    }

    public final class DecodeCallback<Z> implements DecodePath.DecodeCallback<Z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DataSource f24465a;

        public DecodeCallback(DataSource dataSource) {
            this.f24465a = dataSource;
        }
    }

    public static class DeferredEncodeManager<Z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Key f24467a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ResourceEncoder f24468b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LockedResource f24469c;
    }

    public interface DiskCacheProvider {
        DiskCache a();
    }

    public static class ReleaseManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f24470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f24471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f24472c;

        public final boolean a(boolean z) {
            return (this.f24472c || z || this.f24471b) && this.f24470a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RunReason {
        private static final /* synthetic */ RunReason[] $VALUES;
        public static final RunReason DECODE_DATA;
        public static final RunReason INITIALIZE;
        public static final RunReason SWITCH_TO_SOURCE_SERVICE;

        static {
            RunReason runReason = new RunReason("INITIALIZE", 0);
            INITIALIZE = runReason;
            RunReason runReason2 = new RunReason("SWITCH_TO_SOURCE_SERVICE", 1);
            SWITCH_TO_SOURCE_SERVICE = runReason2;
            RunReason runReason3 = new RunReason("DECODE_DATA", 2);
            DECODE_DATA = runReason3;
            $VALUES = new RunReason[]{runReason, runReason2, runReason3};
        }

        public static RunReason valueOf(String str) {
            return (RunReason) Enum.valueOf(RunReason.class, str);
        }

        public static RunReason[] values() {
            return (RunReason[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Stage {
        private static final /* synthetic */ Stage[] $VALUES;
        public static final Stage DATA_CACHE;
        public static final Stage ENCODE;
        public static final Stage FINISHED;
        public static final Stage INITIALIZE;
        public static final Stage RESOURCE_CACHE;
        public static final Stage SOURCE;

        static {
            Stage stage = new Stage("INITIALIZE", 0);
            INITIALIZE = stage;
            Stage stage2 = new Stage("RESOURCE_CACHE", 1);
            RESOURCE_CACHE = stage2;
            Stage stage3 = new Stage("DATA_CACHE", 2);
            DATA_CACHE = stage3;
            Stage stage4 = new Stage("SOURCE", 3);
            SOURCE = stage4;
            Stage stage5 = new Stage("ENCODE", 4);
            ENCODE = stage5;
            Stage stage6 = new Stage("FINISHED", 5);
            FINISHED = stage6;
            $VALUES = new Stage[]{stage, stage2, stage3, stage4, stage5, stage6};
        }

        public static Stage valueOf(String str) {
            return (Stage) Enum.valueOf(Stage.class, str);
        }

        public static Stage[] values() {
            return (Stage[]) $VALUES.clone();
        }
    }

    public DecodeJob(DiskCacheProvider diskCacheProvider, Pools$Pool<DecodeJob<?>> pools$Pool) {
        this.diskCacheProvider = diskCacheProvider;
        this.pool = pools$Pool;
    }

    private <Data> Resource<R> decodeFromData(DataFetcher<?> dataFetcher, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            dataFetcher.b();
            return null;
        }
        try {
            int i2 = LogTime.f24987a;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            Resource<R> resourceDecodeFromFetcher = decodeFromFetcher(data, dataSource);
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Decoded result " + resourceDecodeFromFetcher, jElapsedRealtimeNanos);
            }
            return resourceDecodeFromFetcher;
        } finally {
            dataFetcher.b();
        }
    }

    private <Data> Resource<R> decodeFromFetcher(Data data, DataSource dataSource) throws GlideException {
        return runLoadPath(data, dataSource, this.decodeHelper.c(data.getClass()));
    }

    private void decodeFromRetrievedData() {
        Supplier<Integer> supplier;
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Retrieved data", this.startFetchTime, "data: " + this.currentData + ", cache key: " + this.currentSourceKey + ", fetcher: " + this.currentFetcher);
        }
        Resource<R> resourceDecodeFromData = null;
        if (this.experiments.f24300a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class) && (supplier = this.glideThreadPriorityOverride) != null && supplier.get() != null) {
            try {
                Process.setThreadPriority(Process.myTid(), this.glideThreadPriorityOverride.get().intValue());
            } catch (IllegalArgumentException | SecurityException unused) {
                this.glideThreadPriorityOverride = null;
                Log.isLoggable(TAG, 2);
            }
        }
        try {
            resourceDecodeFromData = decodeFromData(this.currentFetcher, this.currentData, this.currentDataSource);
        } catch (GlideException e2) {
            Key key = this.currentAttemptingKey;
            DataSource dataSource = this.currentDataSource;
            e2.f24525c = key;
            e2.d = dataSource;
            e2.f24526e = null;
            this.throwables.add(e2);
        }
        if (resourceDecodeFromData != null) {
            notifyEncodeAndRelease(resourceDecodeFromData, this.currentDataSource, this.isLoadingFromAlternateCacheKey);
        } else {
            runGenerators();
        }
    }

    private DataFetcherGenerator getNextGenerator() {
        int i2 = AnonymousClass1.f24463b[this.stage.ordinal()];
        if (i2 == 1) {
            return new ResourceCacheGenerator(this.decodeHelper, this);
        }
        if (i2 == 2) {
            DecodeHelper<R> decodeHelper = this.decodeHelper;
            return new DataCacheGenerator(decodeHelper.a(), decodeHelper, this);
        }
        if (i2 == 3) {
            return new SourceGenerator(this.decodeHelper, this);
        }
        if (i2 == 4) {
            return null;
        }
        ct0.o(this.stage, "Unrecognized stage: ");
        return null;
    }

    private Stage getNextStage(Stage stage) {
        int i2 = AnonymousClass1.f24463b[stage.ordinal()];
        if (i2 == 1) {
            return this.diskCacheStrategy.a() ? Stage.DATA_CACHE : getNextStage(Stage.DATA_CACHE);
        }
        if (i2 == 2) {
            return this.onlyRetrieveFromCache ? Stage.FINISHED : Stage.SOURCE;
        }
        if (i2 == 3 || i2 == 4) {
            return Stage.FINISHED;
        }
        if (i2 == 5) {
            return this.diskCacheStrategy.b() ? Stage.RESOURCE_CACHE : getNextStage(Stage.RESOURCE_CACHE);
        }
        az.m(stage, "Unrecognized stage: ");
        return null;
    }

    private Options getOptionsWithHardwareConfig(DataSource dataSource) {
        Options options = this.options;
        boolean z = dataSource == DataSource.RESOURCE_DISK_CACHE || this.decodeHelper.r;
        Option option = Downsampler.f24775i;
        Boolean bool = (Boolean) options.c(option);
        if (bool != null && (!bool.booleanValue() || z)) {
            return options;
        }
        Options options2 = new Options();
        CachedHashCodeArrayMap cachedHashCodeArrayMap = this.options.f24400b;
        CachedHashCodeArrayMap cachedHashCodeArrayMap2 = options2.f24400b;
        cachedHashCodeArrayMap2.h(cachedHashCodeArrayMap);
        cachedHashCodeArrayMap2.put(option, Boolean.valueOf(z));
        return options2;
    }

    private int getPriority() {
        return this.priority.ordinal();
    }

    private void logWithTimeAndKey(String str, long j2, String str2) {
        int i2 = LogTime.f24987a;
        SystemClock.elapsedRealtimeNanos();
        Objects.toString(this.loadKey);
        if (str2 != null) {
            ", ".concat(str2);
        }
        Thread.currentThread().getName();
    }

    private void notifyComplete(Resource<R> resource, DataSource dataSource, boolean z) {
        if (this.experiments.f24300a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class)) {
            restoreThreadPriority();
        }
        setNotifiedOrThrow();
        this.callback.c(resource, dataSource, z);
    }

    private void notifyEncodeAndRelease(Resource<R> resource, DataSource dataSource, boolean z) {
        LockedResource lockedResource;
        if (resource instanceof Initializable) {
            ((Initializable) resource).n();
        }
        boolean z2 = true;
        if (this.deferredEncodeManager.f24469c != null) {
            lockedResource = (LockedResource) LockedResource.f24534f.acquire();
            Preconditions.c(lockedResource, "Argument must not be null");
            lockedResource.f24537e = false;
            lockedResource.d = true;
            lockedResource.f24536c = resource;
            resource = lockedResource;
        } else {
            lockedResource = null;
        }
        notifyComplete(resource, dataSource, z);
        this.stage = Stage.ENCODE;
        try {
            DeferredEncodeManager<?> deferredEncodeManager = this.deferredEncodeManager;
            if (deferredEncodeManager.f24469c == null) {
                z2 = false;
            }
            if (z2) {
                DiskCacheProvider diskCacheProvider = this.diskCacheProvider;
                Options options = this.options;
                deferredEncodeManager.getClass();
                try {
                    diskCacheProvider.a().a(deferredEncodeManager.f24467a, new DataCacheWriter(deferredEncodeManager.f24468b, deferredEncodeManager.f24469c, options));
                    deferredEncodeManager.f24469c.c();
                } catch (Throwable th) {
                    deferredEncodeManager.f24469c.c();
                    throw th;
                }
            }
            if (lockedResource != null) {
                lockedResource.c();
            }
            onEncodeComplete();
        } catch (Throwable th2) {
            if (lockedResource != null) {
                lockedResource.c();
            }
            throw th2;
        }
    }

    private void notifyFailed() {
        if (this.experiments.f24300a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class)) {
            restoreThreadPriority();
        }
        setNotifiedOrThrow();
        this.callback.d(new GlideException("Failed to load resource", new ArrayList(this.throwables)));
        onLoadFailed();
    }

    private void onEncodeComplete() {
        boolean zA;
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.f24471b = true;
            zA = releaseManager.a(false);
        }
        if (zA) {
            releaseInternal();
        }
    }

    private void onLoadFailed() {
        boolean zA;
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.f24472c = true;
            zA = releaseManager.a(false);
        }
        if (zA) {
            releaseInternal();
        }
    }

    private void releaseInternal() {
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.f24471b = false;
            releaseManager.f24470a = false;
            releaseManager.f24472c = false;
        }
        DeferredEncodeManager<?> deferredEncodeManager = this.deferredEncodeManager;
        deferredEncodeManager.f24467a = null;
        deferredEncodeManager.f24468b = null;
        deferredEncodeManager.f24469c = null;
        DecodeHelper<R> decodeHelper = this.decodeHelper;
        decodeHelper.f24455c = null;
        decodeHelper.d = null;
        decodeHelper.n = null;
        decodeHelper.g = null;
        decodeHelper.f24461k = null;
        decodeHelper.f24459i = null;
        decodeHelper.o = null;
        decodeHelper.f24460j = null;
        decodeHelper.p = null;
        decodeHelper.f24453a.clear();
        decodeHelper.l = false;
        decodeHelper.f24454b.clear();
        decodeHelper.m = false;
        this.isCallbackNotified = false;
        this.glideContext = null;
        this.signature = null;
        this.options = null;
        this.priority = null;
        this.loadKey = null;
        this.callback = null;
        this.stage = null;
        this.currentGenerator = null;
        this.currentThread = null;
        this.currentSourceKey = null;
        this.currentData = null;
        this.currentDataSource = null;
        this.currentFetcher = null;
        this.startFetchTime = 0L;
        this.isCancelled = false;
        this.model = null;
        this.throwables.clear();
        this.pool.release(this);
    }

    private void reschedule(RunReason runReason) {
        this.runReason = runReason;
        this.callback.e(this);
    }

    private void restoreThreadPriority() {
        if (!this.experiments.f24300a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class)) {
            md.k("OverrideGlideThreadPriority experiment is not enabled.");
            return;
        }
        Supplier<Integer> supplier = this.glideThreadPriorityOverride;
        if (supplier == null || supplier.get() == null) {
            return;
        }
        try {
            Process.setThreadPriority(Process.myTid(), 9);
        } catch (IllegalArgumentException | SecurityException unused) {
            this.glideThreadPriorityOverride = null;
            Log.isLoggable(TAG, 2);
        }
    }

    private void runGenerators() {
        this.currentThread = Thread.currentThread();
        int i2 = LogTime.f24987a;
        this.startFetchTime = SystemClock.elapsedRealtimeNanos();
        boolean zA = false;
        while (!this.isCancelled && this.currentGenerator != null && !(zA = this.currentGenerator.a())) {
            this.stage = getNextStage(this.stage);
            this.currentGenerator = getNextGenerator();
            if (this.stage == Stage.SOURCE) {
                reschedule(RunReason.SWITCH_TO_SOURCE_SERVICE);
                return;
            }
        }
        if ((this.stage == Stage.FINISHED || this.isCancelled) && !zA) {
            notifyFailed();
        }
    }

    private <Data, ResourceType> Resource<R> runLoadPath(Data data, DataSource dataSource, LoadPath<Data, ResourceType, R> loadPath) throws GlideException {
        Options optionsWithHardwareConfig = getOptionsWithHardwareConfig(dataSource);
        DataRewinder dataRewinderC = this.glideContext.a().c(data);
        try {
            int i2 = this.width;
            int i3 = this.height;
            DecodeCallback decodeCallback = new DecodeCallback(dataSource);
            Pools$Pool pools$Pool = loadPath.f24531a;
            List list = (List) pools$Pool.acquire();
            Preconditions.c(list, "Argument must not be null");
            List list2 = list;
            try {
                Resource<R> resourceA = loadPath.a(dataRewinderC, optionsWithHardwareConfig, i2, i3, decodeCallback, list2);
                pools$Pool.release(list2);
                dataRewinderC.b();
                return resourceA;
            } catch (Throwable th) {
                pools$Pool.release(list2);
                throw th;
            }
        } catch (Throwable th2) {
            dataRewinderC.b();
            throw th2;
        }
    }

    private void runWrapped() {
        int i2 = AnonymousClass1.f24462a[this.runReason.ordinal()];
        if (i2 == 1) {
            this.stage = getNextStage(Stage.INITIALIZE);
            this.currentGenerator = getNextGenerator();
            runGenerators();
        } else if (i2 == 2) {
            runGenerators();
        } else if (i2 == 3) {
            decodeFromRetrievedData();
        } else {
            ct0.o(this.runReason, "Unrecognized run reason: ");
        }
    }

    private void setNotifiedOrThrow() {
        this.stateVerifier.b();
        if (this.isCallbackNotified) {
            az.s("Already notified", this.throwables.isEmpty() ? null : (Throwable) fc.e(1, this.throwables));
        } else {
            this.isCallbackNotified = true;
        }
    }

    public void cancel() {
        this.isCancelled = true;
        DataFetcherGenerator dataFetcherGenerator = this.currentGenerator;
        if (dataFetcherGenerator != null) {
            dataFetcherGenerator.cancel();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(DecodeJob<?> decodeJob) {
        int priority = getPriority() - decodeJob.getPriority();
        return priority == 0 ? this.order - decodeJob.order : priority;
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public StateVerifier getVerifier() {
        return this.stateVerifier;
    }

    public DecodeJob<R> init(GlideContext glideContext, Object obj, EngineKey engineKey, Key key, int i2, int i3, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, Options options, Callback<R> callback, int i4) {
        DecodeHelper<R> decodeHelper = this.decodeHelper;
        DiskCacheProvider diskCacheProvider = this.diskCacheProvider;
        decodeHelper.f24455c = glideContext;
        decodeHelper.d = obj;
        decodeHelper.n = key;
        decodeHelper.f24456e = i2;
        decodeHelper.f24457f = i3;
        decodeHelper.p = diskCacheStrategy;
        decodeHelper.g = cls;
        decodeHelper.f24458h = diskCacheProvider;
        decodeHelper.f24461k = cls2;
        decodeHelper.o = priority;
        decodeHelper.f24459i = options;
        decodeHelper.f24460j = map;
        decodeHelper.q = z;
        decodeHelper.r = z2;
        this.glideContext = glideContext;
        this.signature = key;
        this.priority = priority;
        this.loadKey = engineKey;
        this.width = i2;
        this.height = i3;
        this.diskCacheStrategy = diskCacheStrategy;
        this.onlyRetrieveFromCache = z3;
        this.options = options;
        this.callback = callback;
        this.order = i4;
        this.runReason = RunReason.INITIALIZE;
        this.model = obj;
        this.experiments = glideContext.f24297h;
        this.glideThreadPriorityOverride = (Supplier) options.c(GLIDE_THREAD_PRIORITY_OVERRIDE);
        return this;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        dataFetcher.b();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        Class clsA = dataFetcher.a();
        glideException.f24525c = key;
        glideException.d = dataSource;
        glideException.f24526e = clsA;
        this.throwables.add(glideException);
        if (Thread.currentThread() != this.currentThread) {
            reschedule(RunReason.SWITCH_TO_SOURCE_SERVICE);
        } else {
            runGenerators();
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.currentSourceKey = key;
        this.currentData = obj;
        this.currentFetcher = dataFetcher;
        this.currentDataSource = dataSource;
        this.currentAttemptingKey = key2;
        this.isLoadingFromAlternateCacheKey = key != this.decodeHelper.a().get(0);
        if (Thread.currentThread() != this.currentThread) {
            reschedule(RunReason.DECODE_DATA);
        } else {
            decodeFromRetrievedData();
        }
    }

    public <Z> Resource<Z> onResourceDecoded(DataSource dataSource, Resource<Z> resource) {
        Resource resourceA;
        Transformation transformation;
        EncodeStrategy encodeStrategyB;
        ResourceEncoder resourceEncoderB;
        boolean z;
        Key dataCacheKey;
        Class<?> cls = resource.get().getClass();
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            Transformation transformationD = this.decodeHelper.d(cls);
            transformation = transformationD;
            resourceA = transformationD.a(this.glideContext, resource, this.width, this.height);
        } else {
            resourceA = resource;
            transformation = null;
        }
        if (!resource.equals(resourceA)) {
            resource.a();
        }
        if (this.decodeHelper.f24455c.a().d.b(resourceA.b()) != null) {
            resourceEncoderB = this.decodeHelper.f24455c.a().d.b(resourceA.b());
            if (resourceEncoderB == null) {
                throw new Registry.NoResultEncoderAvailableException(resourceA.b());
            }
            encodeStrategyB = resourceEncoderB.b(this.options);
        } else {
            encodeStrategyB = EncodeStrategy.NONE;
            resourceEncoderB = null;
        }
        DecodeHelper<R> decodeHelper = this.decodeHelper;
        Key key = this.currentSourceKey;
        ArrayList arrayListB = decodeHelper.b();
        int size = arrayListB.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            if (((ModelLoader.LoadData) arrayListB.get(i2)).f24674a.equals(key)) {
                z = true;
                break;
            }
            i2++;
        }
        if (!this.diskCacheStrategy.d(!z, dataSource, encodeStrategyB)) {
            return resourceA;
        }
        if (resourceEncoderB == null) {
            throw new Registry.NoResultEncoderAvailableException(resourceA.get().getClass());
        }
        int i3 = AnonymousClass1.f24464c[encodeStrategyB.ordinal()];
        if (i3 == 1) {
            dataCacheKey = new DataCacheKey(this.currentSourceKey, this.signature);
        } else {
            if (i3 != 2) {
                az.m(encodeStrategyB, "Unknown strategy: ");
                return null;
            }
            dataCacheKey = new ResourceCacheKey(this.decodeHelper.f24455c.f24292a, this.currentSourceKey, this.signature, this.width, this.height, transformation, cls, this.options);
        }
        LockedResource lockedResource = (LockedResource) LockedResource.f24534f.acquire();
        Preconditions.c(lockedResource, "Argument must not be null");
        lockedResource.f24537e = false;
        lockedResource.d = true;
        lockedResource.f24536c = resourceA;
        DeferredEncodeManager<?> deferredEncodeManager = this.deferredEncodeManager;
        deferredEncodeManager.f24467a = dataCacheKey;
        deferredEncodeManager.f24468b = resourceEncoderB;
        deferredEncodeManager.f24469c = lockedResource;
        return lockedResource;
    }

    public void release(boolean z) {
        boolean zA;
        ReleaseManager releaseManager = this.releaseManager;
        synchronized (releaseManager) {
            releaseManager.f24470a = true;
            zA = releaseManager.a(z);
        }
        if (zA) {
            releaseInternal();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        DataFetcher<?> dataFetcher = this.currentFetcher;
        try {
            try {
                if (this.isCancelled) {
                    notifyFailed();
                    if (dataFetcher != null) {
                        dataFetcher.b();
                        return;
                    }
                    return;
                }
                runWrapped();
                if (dataFetcher != null) {
                    dataFetcher.b();
                }
            } catch (Throwable th) {
                if (dataFetcher != null) {
                    dataFetcher.b();
                }
                throw th;
            }
        } catch (CallbackException e2) {
            throw e2;
        } catch (Throwable th2) {
            if (Log.isLoggable(TAG, 3)) {
                Objects.toString(this.stage);
            }
            if (this.stage != Stage.ENCODE) {
                this.throwables.add(th2);
                notifyFailed();
            }
            if (!this.isCancelled) {
                throw th2;
            }
            throw th2;
        }
    }

    public boolean willDecodeFromCache() {
        Stage nextStage = getNextStage(Stage.INITIALIZE);
        return nextStage == Stage.RESOURCE_CACHE || nextStage == Stage.DATA_CACHE;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void reschedule() {
        reschedule(RunReason.SWITCH_TO_SOURCE_SERVICE);
    }

    private void logWithTimeAndKey(String str, long j2) {
        logWithTimeAndKey(str, j2, null);
    }
}
