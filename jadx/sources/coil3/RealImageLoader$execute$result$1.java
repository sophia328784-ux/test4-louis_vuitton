package coil3;

import coil3.intercept.RealInterceptorChain;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.size.Size;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil3/request/ImageResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.RealImageLoader$execute$result$1", f = "RealImageLoader.kt", l = {143}, m = "invokeSuspend", v = 1)
final class RealImageLoader$execute$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImageRequest f21259c;
    public final /* synthetic */ RealImageLoader d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Size f21260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ EventListener f21261f;
    public final /* synthetic */ Image g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$result$1(ImageRequest imageRequest, RealImageLoader realImageLoader, Size size, EventListener eventListener, Image image, Continuation continuation) {
        super(2, continuation);
        this.f21259c = imageRequest;
        this.d = realImageLoader;
        this.f21260e = size;
        this.f21261f = eventListener;
        this.g = image;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RealImageLoader$execute$result$1(this.f21259c, this.d, this.f21260e, this.f21261f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RealImageLoader$execute$result$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f21258b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        List list = this.d.d.f21205a;
        boolean z = this.g != null;
        ImageRequest imageRequest = this.f21259c;
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(imageRequest, list, 0, imageRequest, this.f21260e, this.f21261f, z);
        this.f21258b = 1;
        Object objB = realInterceptorChain.b(this);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}
