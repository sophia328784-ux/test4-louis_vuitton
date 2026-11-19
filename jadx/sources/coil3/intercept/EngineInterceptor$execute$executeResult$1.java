package coil3.intercept;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequest;
import coil3.request.Options;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil3/intercept/EngineInterceptor$ExecuteResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {131}, m = "invokeSuspend", v = 1)
final class EngineInterceptor$execute$executeResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super EngineInterceptor.ExecuteResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EngineInterceptor f21471c;
    public final /* synthetic */ Ref$ObjectRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f21472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ImageRequest f21473f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f21474h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ EventListener f21475i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$execute$executeResult$1(EngineInterceptor engineInterceptor, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, ImageRequest imageRequest, Object obj, Ref$ObjectRef ref$ObjectRef3, EventListener eventListener, Continuation continuation) {
        super(2, continuation);
        this.f21471c = engineInterceptor;
        this.d = ref$ObjectRef;
        this.f21472e = ref$ObjectRef2;
        this.f21473f = imageRequest;
        this.g = obj;
        this.f21474h = ref$ObjectRef3;
        this.f21475i = eventListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EngineInterceptor$execute$executeResult$1(this.f21471c, this.d, this.f21472e, this.f21473f, this.g, this.f21474h, this.f21475i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EngineInterceptor$execute$executeResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f21470b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        SourceFetchResult sourceFetchResult = (SourceFetchResult) this.d.f71921b;
        ComponentRegistry componentRegistry = (ComponentRegistry) this.f21472e.f71921b;
        Options options = (Options) this.f21474h.f71921b;
        this.f21470b = 1;
        Object objB = EngineInterceptor.b(this.f21471c, sourceFetchResult, componentRegistry, this.f21473f, this.g, options, this.f21475i, this);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}
