package coil3.intercept;

import coil3.EventListener;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.graphics.DataSource;
import coil3.map.Mapper;
import coil3.memory.MemoryCache;
import coil3.memory.MemoryCacheService;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.RequestService;
import coil3.request.SuccessResult;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.Logger;
import coil3.util.SystemCallbacks;
import coil3.util.UtilsKt;
import defpackage.md;
import defpackage.o60;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\f\rB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcoil3/intercept/EngineInterceptor;", "Lcoil3/intercept/Interceptor;", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/util/SystemCallbacks;", "systemCallbacks", "Lcoil3/request/RequestService;", "requestService", "Lcoil3/util/Logger;", "logger", "<init>", "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V", "ExecuteResult", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class EngineInterceptor implements Interceptor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f21446f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageLoader f21447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SystemCallbacks f21448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequestService f21449c;
    public final Logger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MemoryCacheService f21450e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/intercept/EngineInterceptor$Companion;", "", "", "TAG", "Ljava/lang/String;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcoil3/intercept/EngineInterceptor$ExecuteResult;", "", "Lcoil3/Image;", "image", "", "isSampled", "Lcoil3/decode/DataSource;", "dataSource", "", "diskCacheKey", "<init>", "(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class ExecuteResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Image f21451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f21452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DataSource f21453c;
        public final String d;

        public ExecuteResult(Image image, boolean z, DataSource dataSource, String str) {
            this.f21451a = image;
            this.f21452b = z;
            this.f21453c = dataSource;
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExecuteResult)) {
                return false;
            }
            ExecuteResult executeResult = (ExecuteResult) obj;
            return Intrinsics.c(this.f21451a, executeResult.f21451a) && this.f21452b == executeResult.f21452b && this.f21453c == executeResult.f21453c && Intrinsics.c(this.d, executeResult.d);
        }

        public final int hashCode() {
            int iHashCode = (this.f21453c.hashCode() + o60.b(this.f21451a.hashCode() * 31, 31, this.f21452b)) * 31;
            String str = this.d;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "ExecuteResult(image=" + this.f21451a + ", isSampled=" + this.f21452b + ", dataSource=" + this.f21453c + ", diskCacheKey=" + this.d + ")";
        }
    }

    static {
        new Companion(null);
    }

    public EngineInterceptor(ImageLoader imageLoader, SystemCallbacks systemCallbacks, RequestService requestService, Logger logger) {
        this.f21447a = imageLoader;
        this.f21448b = systemCallbacks;
        this.f21449c = requestService;
        this.d = logger;
        this.f21450e = new MemoryCacheService(imageLoader, requestService, logger);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0054  */
    /* JADX WARN: Code duplicated, block: B:20:0x0072 A[LOOP:0: B:16:0x0052->B:20:0x0072, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a1 -> B:27:0x00a4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object b(coil3.intercept.EngineInterceptor r6, coil3.fetch.SourceFetchResult r7, coil3.ComponentRegistry r8, coil3.request.ImageRequest r9, java.lang.Object r10, coil3.request.Options r11, coil3.EventListener r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.b(coil3.intercept.EngineInterceptor, coil3.fetch.SourceFetchResult, coil3.ComponentRegistry, coil3.request.ImageRequest, java.lang.Object, coil3.request.Options, coil3.EventListener, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:58:0x015d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0160  */
    /* JADX WARN: Code duplicated, block: B:61:0x0163  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0196, code lost:
    
        if (r1 == r9) goto L70;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [coil3.intercept.EngineInterceptor] */
    /* JADX WARN: Type inference failed for: r2v0, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [coil3.intercept.EngineInterceptor] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(coil3.intercept.EngineInterceptor r16, coil3.request.ImageRequest r17, java.lang.Object r18, coil3.request.Options r19, coil3.EventListener r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instruction units count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.c(coil3.intercept.EngineInterceptor, coil3.request.ImageRequest, java.lang.Object, coil3.request.Options, coil3.EventListener, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    @Override // coil3.intercept.Interceptor
    public final Object a(RealInterceptorChain realInterceptorChain, ContinuationImpl continuationImpl) throws Throwable {
        EngineInterceptor$intercept$1 engineInterceptor$intercept$1;
        RealInterceptorChain realInterceptorChain2 = realInterceptorChain;
        MemoryCacheService memoryCacheService = this.f21450e;
        if (continuationImpl instanceof EngineInterceptor$intercept$1) {
            engineInterceptor$intercept$1 = (EngineInterceptor$intercept$1) continuationImpl;
            int i2 = engineInterceptor$intercept$1.f21486e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                engineInterceptor$intercept$1.f21486e = i2 - Integer.MIN_VALUE;
            } else {
                engineInterceptor$intercept$1 = new EngineInterceptor$intercept$1(this, continuationImpl);
            }
        } else {
            engineInterceptor$intercept$1 = new EngineInterceptor$intercept$1(this, continuationImpl);
        }
        EngineInterceptor$intercept$1 engineInterceptor$intercept$2 = engineInterceptor$intercept$1;
        Object obj = engineInterceptor$intercept$2.f21485c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = engineInterceptor$intercept$2.f21486e;
        if (i3 == 0) {
            ResultKt.b(obj);
            try {
                ImageRequest imageRequest = realInterceptorChain2.d;
                Object obj2 = imageRequest.f21613b;
                Size size = realInterceptorChain2.f21503e;
                Function1 function1 = UtilsKt.f21734a;
                EventListener eventListener = realInterceptorChain2.f21504f;
                Options optionsB = this.f21449c.b(imageRequest, size);
                Scale scale = optionsB.f21662c;
                eventListener.getClass();
                List list = this.f21447a.getD().f21206b;
                int size2 = list.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Pair pair = (Pair) list.get(i4);
                    Mapper mapper = (Mapper) pair.f71705b;
                    if (((KClass) pair.f71706c).t(obj2)) {
                        mapper.getClass();
                        Uri uriA = mapper.a(obj2, optionsB);
                        if (uriA != null) {
                            obj2 = uriA;
                        }
                    }
                }
                MemoryCache.Key keyB = memoryCacheService.b(imageRequest, obj2, optionsB, eventListener);
                MemoryCache.Value valueA = keyB != null ? memoryCacheService.a(imageRequest, keyB, size, scale) : null;
                if (valueA == null) {
                    CoroutineContext coroutineContext = imageRequest.l;
                    EngineInterceptor$intercept$2 engineInterceptor$intercept$3 = new EngineInterceptor$intercept$2(this, imageRequest, obj2, optionsB, eventListener, keyB, realInterceptorChain2, null);
                    engineInterceptor$intercept$2.f21484b = realInterceptorChain2;
                    engineInterceptor$intercept$2.f21486e = 1;
                    Object objF = BuildersKt.f(coroutineContext, engineInterceptor$intercept$3, engineInterceptor$intercept$2);
                    return objF == coroutineSingletons ? coroutineSingletons : objF;
                }
                Map map = valueA.f21512b;
                Image image = valueA.f21511a;
                DataSource dataSource = DataSource.MEMORY_CACHE;
                Object obj3 = map.get("coil#disk_cache_key");
                String str = obj3 instanceof String ? (String) obj3 : null;
                Object obj4 = map.get("coil#is_sampled");
                Boolean bool = obj4 instanceof Boolean ? (Boolean) obj4 : null;
                return new SuccessResult(image, imageRequest, dataSource, keyB, str, bool != null ? bool.booleanValue() : false, realInterceptorChain2.g);
            } catch (Throwable th) {
                th = th;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            RealInterceptorChain realInterceptorChain3 = engineInterceptor$intercept$2.f21484b;
            try {
                ResultKt.b(obj);
                return obj;
            } catch (Throwable th2) {
                th = th2;
                realInterceptorChain2 = realInterceptorChain3;
            }
        }
        if (th instanceof CancellationException) {
            throw th;
        }
        return UtilsKt.a(realInterceptorChain2.getD(), th);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056  */
    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    /* JADX WARN: Code duplicated, block: B:25:0x008d  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:53:0x008a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x007d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b1 -> B:28:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object d(coil3.ComponentRegistry r9, coil3.request.ImageRequest r10, java.lang.Object r11, coil3.request.Options r12, coil3.EventListener r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.EngineInterceptor.d(coil3.ComponentRegistry, coil3.request.ImageRequest, java.lang.Object, coil3.request.Options, coil3.EventListener, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
