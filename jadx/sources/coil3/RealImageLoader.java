package coil3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.lifecycle.Lifecycle;
import coil3.disk.DiskCache;
import coil3.fetch.AssetUriFetcher;
import coil3.fetch.BitmapFetcher;
import coil3.fetch.ByteArrayFetcher;
import coil3.fetch.ByteBufferFetcher;
import coil3.fetch.ContentUriFetcher;
import coil3.fetch.DataUriFetcher;
import coil3.fetch.DrawableFetcher;
import coil3.fetch.FileUriFetcher;
import coil3.fetch.JarFileFetcher;
import coil3.fetch.ResourceUriFetcher;
import coil3.graphics.BitmapFactoryDecoder;
import coil3.graphics.DataSource;
import coil3.graphics.ExifOrientationStrategy;
import coil3.graphics.StaticImageDecoder;
import coil3.intercept.EngineInterceptor;
import coil3.key.AndroidResourceUriKeyer;
import coil3.key.FileUriKeyer;
import coil3.key.UriKeyer;
import coil3.map.AndroidUriMapper;
import coil3.map.FileMapper;
import coil3.map.PathMapper;
import coil3.map.ResourceIntMapper;
import coil3.map.StringMapper;
import coil3.memory.MemoryCache;
import coil3.request.AndroidRequestService;
import coil3.request.Disposable;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.SuccessResult;
import coil3.size.ViewSizeResolver;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.transition.NoneTransition;
import coil3.transition.Transition;
import coil3.transition.TransitionTarget;
import coil3.util.AndroidSystemCallbacks;
import coil3.util.Logger;
import coil3.util.UtilsKt;
import defpackage.jn;
import defpackage.v40;
import defpackage.wq0;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u000b\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¨\u0006\t"}, d2 = {"Lcoil3/RealImageLoader;", "Lcoil3/ImageLoader;", "Lcoil3/RealImageLoader$Options;", "options", "<init>", "(Lcoil3/RealImageLoader$Options;)V", "Lkotlinx/atomicfu/AtomicBoolean;", "shutdown", "Options", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealImageLoader implements ImageLoader {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f21234f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Options f21235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContextScope f21236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AndroidRequestService f21237c;
    public final ComponentRegistry d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile /* synthetic */ int f21238e;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bc\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcoil3/RealImageLoader$Options;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "application", "Lcoil3/request/ImageRequest$Defaults;", "defaults", "Lkotlin/Lazy;", "Lkotlin/coroutines/CoroutineContext;", "mainCoroutineContextLazy", "Lcoil3/memory/MemoryCache;", "memoryCacheLazy", "Lcoil3/disk/DiskCache;", "diskCacheLazy", "Lcoil3/EventListener$Factory;", "eventListenerFactory", "Lcoil3/ComponentRegistry;", "componentRegistry", "Lcoil3/util/Logger;", "logger", "<init>", "(Landroid/content/Context;Lcoil3/request/ImageRequest$Defaults;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/EventListener$Factory;Lcoil3/ComponentRegistry;Lcoil3/util/Logger;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Options {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f21239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImageRequest.Defaults f21240b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Lazy f21241c;
        public final Lazy d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Lazy f21242e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final EventListener.Factory f21243f;
        public final ComponentRegistry g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Logger f21244h;

        public Options(Context context, ImageRequest.Defaults defaults, Lazy<? extends CoroutineContext> lazy, Lazy<? extends MemoryCache> lazy2, Lazy<? extends DiskCache> lazy3, EventListener.Factory factory, ComponentRegistry componentRegistry, Logger logger) {
            this.f21239a = context;
            this.f21240b = defaults;
            this.f21241c = lazy;
            this.d = lazy2;
            this.f21242e = lazy3;
            this.f21243f = factory;
            this.g = componentRegistry;
            this.f21244h = logger;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Options)) {
                return false;
            }
            Options options = (Options) obj;
            return Intrinsics.c(this.f21239a, options.f21239a) && Intrinsics.c(this.f21240b, options.f21240b) && Intrinsics.c(this.f21241c, options.f21241c) && Intrinsics.c(this.d, options.d) && Intrinsics.c(this.f21242e, options.f21242e) && Intrinsics.c(this.f21243f, options.f21243f) && Intrinsics.c(this.g, options.g) && Intrinsics.c(this.f21244h, options.f21244h);
        }

        public final int hashCode() {
            int iHashCode = (this.g.hashCode() + ((this.f21243f.hashCode() + ((this.f21242e.hashCode() + ((this.d.hashCode() + ((this.f21241c.hashCode() + ((this.f21240b.hashCode() + (this.f21239a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            Logger logger = this.f21244h;
            return iHashCode + (logger == null ? 0 : logger.hashCode());
        }

        public final String toString() {
            return "Options(application=" + this.f21239a + ", defaults=" + this.f21240b + ", mainCoroutineContextLazy=" + this.f21241c + ", memoryCacheLazy=" + this.d + ", diskCacheLazy=" + this.f21242e + ", eventListenerFactory=" + this.f21243f + ", componentRegistry=" + this.g + ", logger=" + this.f21244h + ")";
        }
    }

    static {
        AtomicIntegerFieldUpdater.newUpdater(RealImageLoader.class, "e");
    }

    public RealImageLoader(Options options) {
        this.f21235a = options;
        this.f21236b = CoroutineScopeKt.a(SupervisorKt.b().plus(new RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key.f74649b, options.f21244h)));
        AndroidSystemCallbacks androidSystemCallbacks = new AndroidSystemCallbacks(this);
        Logger logger = options.f21244h;
        AndroidRequestService androidRequestService = new AndroidRequestService(this, androidSystemCallbacks, logger);
        this.f21237c = androidRequestService;
        ComponentRegistry componentRegistry = options.g;
        componentRegistry.getClass();
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(componentRegistry);
        Extras.Key key = ImageLoadersKt.f21230a;
        ImageRequest.Defaults defaults = options.f21240b;
        Extras extras = defaults.n;
        Extras.Key key2 = ImageLoadersKt.f21230a;
        Object obj = extras.f21218a.get(key2);
        boolean zBooleanValue = ((Boolean) (obj == null ? key2.f21221a : obj)).booleanValue();
        ArrayList arrayList = builder.f21213e;
        if (zBooleanValue) {
            builder.d.add(new wq0(5));
            arrayList.add(new wq0(6));
        }
        AndroidUriMapper androidUriMapper = new AndroidUriMapper();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        builder.b(androidUriMapper, reflectionFactory.b(android.net.Uri.class));
        builder.b(new ResourceIntMapper(), reflectionFactory.b(Integer.class));
        Pair pair = new Pair(new AndroidResourceUriKeyer(), reflectionFactory.b(Uri.class));
        ArrayList arrayList2 = builder.f21212c;
        arrayList2.add(pair);
        builder.a(new AssetUriFetcher.Factory(), reflectionFactory.b(Uri.class));
        builder.a(new ContentUriFetcher.Factory(), reflectionFactory.b(Uri.class));
        builder.a(new ResourceUriFetcher.Factory(), reflectionFactory.b(Uri.class));
        builder.a(new DrawableFetcher.Factory(), reflectionFactory.b(Drawable.class));
        Extras.Key key3 = ImageLoaders_androidKt.f21231a;
        Extras extras2 = defaults.n;
        Extras.Key key4 = ImageLoaders_androidKt.f21231a;
        Object obj2 = extras2.f21218a.get(key4);
        Semaphore semaphoreA = SemaphoreKt.a(((Number) (obj2 == null ? key4.f21221a : obj2)).intValue());
        Extras extras3 = defaults.n;
        Extras.Key key5 = ImageLoaders_androidKt.f21233c;
        Object obj3 = extras3.f21218a.get(key5);
        obj3 = obj3 == null ? key5.f21221a : obj3;
        int i2 = 1;
        if (((Boolean) obj3).booleanValue()) {
            Extras extras4 = defaults.n;
            Extras.Key key6 = ImageLoaders_androidKt.f21232b;
            Object obj4 = extras4.f21218a.get(key6);
            if (Intrinsics.c((ExifOrientationStrategy) (obj4 == null ? key6.f21221a : obj4), ExifOrientationStrategy.f21363a)) {
                arrayList.add(new jn(new StaticImageDecoder.Factory(semaphoreA), i2));
            }
        }
        Extras extras5 = defaults.n;
        Extras.Key key7 = ImageLoaders_androidKt.f21232b;
        Object obj5 = extras5.f21218a.get(key7);
        arrayList.add(new jn(new BitmapFactoryDecoder.Factory(semaphoreA, (ExifOrientationStrategy) (obj5 == null ? key7.f21221a : obj5)), i2));
        builder.b(new FileMapper(), reflectionFactory.b(File.class));
        builder.a(new JarFileFetcher.Factory(), reflectionFactory.b(Uri.class));
        builder.a(new ByteBufferFetcher.Factory(), reflectionFactory.b(ByteBuffer.class));
        builder.b(new StringMapper(), reflectionFactory.b(String.class));
        builder.b(new PathMapper(), reflectionFactory.b(Path.class));
        arrayList2.add(new Pair(new FileUriKeyer(), reflectionFactory.b(Uri.class)));
        arrayList2.add(new Pair(new UriKeyer(), reflectionFactory.b(Uri.class)));
        builder.a(new FileUriFetcher.Factory(), reflectionFactory.b(Uri.class));
        builder.a(new ByteArrayFetcher.Factory(), reflectionFactory.b(byte[].class));
        builder.a(new DataUriFetcher.Factory(), reflectionFactory.b(Uri.class));
        builder.a(new BitmapFetcher.Factory(), reflectionFactory.b(Bitmap.class));
        builder.f21210a.add(new EngineInterceptor(this, androidSystemCallbacks, androidRequestService, logger));
        this.d = builder.c();
    }

    @Override // coil3.ImageLoader
    public final DiskCache a() {
        return (DiskCache) this.f21235a.f21242e.getF71699b();
    }

    @Override // coil3.ImageLoader
    public final Object b(ImageRequest imageRequest, ContinuationImpl continuationImpl) {
        return ((imageRequest.f21614c instanceof ViewTarget) || (imageRequest.u instanceof ViewSizeResolver) || ((Lifecycle) ExtrasKt.a(imageRequest, ImageRequests_androidKt.f21654e)) != null) ? CoroutineScopeKt.d(new RealImageLoader$execute$2(this, imageRequest, null), continuationImpl) : f(imageRequest, 1, continuationImpl);
    }

    @Override // coil3.ImageLoader
    public final ImageRequest.Defaults c() {
        return this.f21235a.f21240b;
    }

    @Override // coil3.ImageLoader
    public final Disposable d(ImageRequest imageRequest) {
        return RealImageLoader_androidKt.a(imageRequest, BuildersKt.a(this.f21236b, (CoroutineContext) this.f21235a.f21241c.getF71699b(), new RealImageLoader$enqueue$job$1(this, imageRequest, null), 2));
    }

    @Override // coil3.ImageLoader
    public final MemoryCache e() {
        return (MemoryCache) this.f21235a.d.getF71699b();
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0189  */
    /* JADX WARN: Code duplicated, block: B:125:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:128:0x01d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x01d7 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:15:0x003c, B:144:0x0239, B:146:0x023f, B:147:0x0248, B:149:0x024c, B:152:0x0258, B:153:0x025d, B:28:0x006c, B:118:0x01bd, B:120:0x01c1, B:122:0x01c7, B:124:0x01cd, B:126:0x01d1, B:129:0x01d7, B:131:0x01e1, B:133:0x01ed, B:134:0x01f0), top: B:178:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:131:0x01e1 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:15:0x003c, B:144:0x0239, B:146:0x023f, B:147:0x0248, B:149:0x024c, B:152:0x0258, B:153:0x025d, B:28:0x006c, B:118:0x01bd, B:120:0x01c1, B:122:0x01c7, B:124:0x01cd, B:126:0x01d1, B:129:0x01d7, B:131:0x01e1, B:133:0x01ed, B:134:0x01f0), top: B:178:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:132:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:137:0x0208  */
    /* JADX WARN: Code duplicated, block: B:143:0x0235  */
    /* JADX WARN: Code duplicated, block: B:146:0x023f A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:15:0x003c, B:144:0x0239, B:146:0x023f, B:147:0x0248, B:149:0x024c, B:152:0x0258, B:153:0x025d, B:28:0x006c, B:118:0x01bd, B:120:0x01c1, B:122:0x01c7, B:124:0x01cd, B:126:0x01d1, B:129:0x01d7, B:131:0x01e1, B:133:0x01ed, B:134:0x01f0), top: B:178:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0248 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:15:0x003c, B:144:0x0239, B:146:0x023f, B:147:0x0248, B:149:0x024c, B:152:0x0258, B:153:0x025d, B:28:0x006c, B:118:0x01bd, B:120:0x01c1, B:122:0x01c7, B:124:0x01cd, B:126:0x01d1, B:129:0x01d7, B:131:0x01e1, B:133:0x01ed, B:134:0x01f0), top: B:178:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:149:0x024c A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {all -> 0x0041, blocks: (B:15:0x003c, B:144:0x0239, B:146:0x023f, B:147:0x0248, B:149:0x024c, B:152:0x0258, B:153:0x025d, B:28:0x006c, B:118:0x01bd, B:120:0x01c1, B:122:0x01c7, B:124:0x01cd, B:126:0x01d1, B:129:0x01d7, B:131:0x01e1, B:133:0x01ed, B:134:0x01f0), top: B:178:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:152:0x0258 A[Catch: all -> 0x0041, TRY_ENTER, TryCatch #0 {all -> 0x0041, blocks: (B:15:0x003c, B:144:0x0239, B:146:0x023f, B:147:0x0248, B:149:0x024c, B:152:0x0258, B:153:0x025d, B:28:0x006c, B:118:0x01bd, B:120:0x01c1, B:122:0x01c7, B:124:0x01cd, B:126:0x01d1, B:129:0x01d7, B:131:0x01e1, B:133:0x01ed, B:134:0x01f0), top: B:178:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0270 A[Catch: all -> 0x027d, TRY_LEAVE, TryCatch #3 {all -> 0x027d, blocks: (B:160:0x026c, B:162:0x0270, B:167:0x027f, B:169:0x0283, B:171:0x028f, B:172:0x0297, B:174:0x029e, B:175:0x02a1), top: B:182:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:167:0x027f A[Catch: all -> 0x027d, TRY_ENTER, TryCatch #3 {all -> 0x027d, blocks: (B:160:0x026c, B:162:0x0270, B:167:0x027f, B:169:0x0283, B:171:0x028f, B:172:0x0297, B:174:0x029e, B:175:0x02a1), top: B:182:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:169:0x0283 A[Catch: all -> 0x027d, TryCatch #3 {all -> 0x027d, blocks: (B:160:0x026c, B:162:0x0270, B:167:0x027f, B:169:0x0283, B:171:0x028f, B:172:0x0297, B:174:0x029e, B:175:0x02a1), top: B:182:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:171:0x028f A[Catch: all -> 0x027d, TryCatch #3 {all -> 0x027d, blocks: (B:160:0x026c, B:162:0x0270, B:167:0x027f, B:169:0x0283, B:171:0x028f, B:172:0x0297, B:174:0x029e, B:175:0x02a1), top: B:182:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:174:0x029e A[Catch: all -> 0x027d, TryCatch #3 {all -> 0x027d, blocks: (B:160:0x026c, B:162:0x0270, B:167:0x027f, B:169:0x0283, B:171:0x028f, B:172:0x0297, B:174:0x029e, B:175:0x02a1), top: B:182:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b4, code lost:
    
        if (r1.g(r9) == r10) goto L142;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [coil3.RealImageLoader] */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v31, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r3v11, types: [coil3.EventListener, coil3.EventListener$Companion$NONE$1] */
    /* JADX WARN: Type inference failed for: r3v25, types: [coil3.EventListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v26, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [coil3.EventListener] */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v4, types: [coil3.EventListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r4v13, types: [coil3.request.ImageRequest, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15, types: [coil3.EventListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r4v2, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r5v0, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r5v1, types: [coil3.request.RequestDelegate] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r7v19, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(coil3.request.ImageRequest r18, int r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader.f(coil3.request.ImageRequest, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0038  */
    public final void g(ErrorResult errorResult, Target target, EventListener eventListener) {
        ImageRequest imageRequest = errorResult.f21610b;
        Image image = errorResult.f21609a;
        Logger logger = this.f21235a.f21244h;
        if (logger != null && logger.a().compareTo(Logger.Level.Error) <= 0) {
            Objects.toString(imageRequest.f21613b);
            logger.b();
        }
        if (target instanceof TransitionTarget) {
            Transition transitionA = ((Transition.Factory) ExtrasKt.a(imageRequest, ImageRequests_androidKt.f21651a)).a((TransitionTarget) target, errorResult);
            if (transitionA instanceof NoneTransition) {
                target.b(image);
            } else {
                eventListener.getClass();
                transitionA.transition();
            }
        } else if (target != null) {
            target.b(image);
        }
        eventListener.getClass();
        ImageRequest.Listener listener = imageRequest.d;
        if (listener != null) {
            listener.b(errorResult);
        }
    }

    @Override // coil3.ImageLoader
    /* JADX INFO: renamed from: getComponents, reason: from getter */
    public final ComponentRegistry getD() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0058  */
    public final void h(SuccessResult successResult, Target target, EventListener eventListener) {
        ImageRequest imageRequest = successResult.f21669b;
        Image image = successResult.f21668a;
        DataSource dataSource = successResult.f21670c;
        Logger logger = this.f21235a.f21244h;
        if (logger != null) {
            if (logger.a().compareTo(Logger.Level.Info) <= 0) {
                Function1 function1 = UtilsKt.f21734a;
                int i2 = UtilsKt.WhenMappings.f21736a[dataSource.ordinal()];
                if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
                    v40.g();
                    return;
                } else {
                    dataSource.name();
                    Objects.toString(imageRequest.f21613b);
                    logger.b();
                }
            }
        }
        if (target instanceof TransitionTarget) {
            Transition transitionA = ((Transition.Factory) ExtrasKt.a(imageRequest, ImageRequests_androidKt.f21651a)).a((TransitionTarget) target, successResult);
            if (transitionA instanceof NoneTransition) {
                target.e(image);
            } else {
                eventListener.getClass();
                transitionA.transition();
            }
        } else if (target != null) {
            target.e(image);
        }
        eventListener.getClass();
        ImageRequest.Listener listener = imageRequest.d;
        if (listener != null) {
            listener.a(successResult);
        }
    }
}
