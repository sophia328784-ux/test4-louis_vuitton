package coil3.intercept;

import coil3.EventListener;
import coil3.Image;
import coil3.graphics.DataSource;
import coil3.memory.MemoryCache;
import coil3.memory.MemoryCacheService;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.SuccessResult;
import coil3.util.UtilsKt;
import defpackage.md;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil3/request/SuccessResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend", v = 1)
final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SuccessResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EngineInterceptor f21488c;
    public final /* synthetic */ ImageRequest d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f21489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Options f21490f;
    public final /* synthetic */ EventListener g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MemoryCache.Key f21491h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Interceptor.Chain f21492i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, MemoryCache.Key key, Interceptor.Chain chain, Continuation continuation) {
        super(2, continuation);
        this.f21488c = engineInterceptor;
        this.d = imageRequest;
        this.f21489e = obj;
        this.f21490f = options;
        this.g = eventListener;
        this.f21491h = key;
        this.f21492i = chain;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EngineInterceptor$intercept$2(this.f21488c, this.d, this.f21489e, this.f21490f, this.g, this.f21491h, this.f21492i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EngineInterceptor$intercept$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EngineInterceptor$intercept$2 engineInterceptor$intercept$2;
        boolean z;
        MemoryCache memoryCacheE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f21487b;
        ImageRequest imageRequest = this.d;
        EngineInterceptor engineInterceptor = this.f21488c;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f21487b = 1;
            engineInterceptor$intercept$2 = this;
            obj = EngineInterceptor.c(engineInterceptor, imageRequest, this.f21489e, this.f21490f, this.g, engineInterceptor$intercept$2);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            engineInterceptor$intercept$2 = this;
        }
        EngineInterceptor.ExecuteResult executeResult = (EngineInterceptor.ExecuteResult) obj;
        engineInterceptor.f21448b.a();
        MemoryCacheService memoryCacheService = engineInterceptor.f21450e;
        memoryCacheService.getClass();
        MemoryCache.Key key = engineInterceptor$intercept$2.f21491h;
        if (key == null || !imageRequest.n.getWriteEnabled() || !executeResult.f21451a.getF21215b() || (memoryCacheE = memoryCacheService.f21513a.e()) == null) {
            z = false;
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("coil#is_sampled", Boolean.valueOf(executeResult.f21452b));
            String str = executeResult.d;
            if (str != null) {
                linkedHashMap.put("coil#disk_cache_key", str);
            }
            memoryCacheE.h(key, new MemoryCache.Value(executeResult.f21451a, linkedHashMap));
            z = true;
        }
        Image image = executeResult.f21451a;
        DataSource dataSource = executeResult.f21453c;
        MemoryCache.Key key2 = z ? key : null;
        EngineInterceptor$intercept$2 engineInterceptor$intercept$3 = engineInterceptor$intercept$2;
        String str2 = executeResult.d;
        boolean z2 = executeResult.f21452b;
        Function1 function1 = UtilsKt.f21734a;
        Interceptor.Chain chain = engineInterceptor$intercept$3.f21492i;
        return new SuccessResult(image, imageRequest, dataSource, key2, str2, z2, (chain instanceof RealInterceptorChain) && ((RealInterceptorChain) chain).g);
    }
}
