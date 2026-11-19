package coil3.intercept;

import android.content.Context;
import coil3.EventListener;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.NullRequestData;
import coil3.size.Size;
import defpackage.md;
import defpackage.wp;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcoil3/intercept/RealInterceptorChain;", "Lcoil3/intercept/Interceptor$Chain;", "Lcoil3/request/ImageRequest;", "initialRequest", "", "Lcoil3/intercept/Interceptor;", "interceptors", "", "index", "request", "Lcoil3/size/Size;", "size", "Lcoil3/EventListener;", "eventListener", "", "isPlaceholderCached", "<init>", "(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealInterceptorChain implements Interceptor.Chain {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageRequest f21500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f21501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f21502c;
    public final ImageRequest d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Size f21503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EventListener f21504f;
    public final boolean g;

    public RealInterceptorChain(ImageRequest imageRequest, List<? extends Interceptor> list, int i2, ImageRequest imageRequest2, Size size, EventListener eventListener, boolean z) {
        this.f21500a = imageRequest;
        this.f21501b = list;
        this.f21502c = i2;
        this.d = imageRequest2;
        this.f21503e = size;
        this.f21504f = eventListener;
        this.g = z;
    }

    @Override // coil3.intercept.Interceptor.Chain
    /* JADX INFO: renamed from: a, reason: from getter */
    public final ImageRequest getD() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) {
        RealInterceptorChain$proceed$1 realInterceptorChain$proceed$1;
        Interceptor interceptor;
        if (continuationImpl instanceof RealInterceptorChain$proceed$1) {
            realInterceptorChain$proceed$1 = (RealInterceptorChain$proceed$1) continuationImpl;
            int i2 = realInterceptorChain$proceed$1.f21507e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                realInterceptorChain$proceed$1.f21507e = i2 - Integer.MIN_VALUE;
            } else {
                realInterceptorChain$proceed$1 = new RealInterceptorChain$proceed$1(this, continuationImpl);
            }
        } else {
            realInterceptorChain$proceed$1 = new RealInterceptorChain$proceed$1(this, continuationImpl);
        }
        Object obj = realInterceptorChain$proceed$1.f21506c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = realInterceptorChain$proceed$1.f21507e;
        if (i3 == 0) {
            ResultKt.b(obj);
            List list = this.f21501b;
            int i4 = this.f21502c;
            Interceptor interceptor2 = (Interceptor) list.get(i4);
            EventListener eventListener = this.f21504f;
            boolean z = this.g;
            RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this.f21500a, this.f21501b, i4 + 1, this.d, this.f21503e, eventListener, z);
            realInterceptorChain$proceed$1.f21505b = interceptor2;
            realInterceptorChain$proceed$1.f21507e = 1;
            Object objA = interceptor2.a(realInterceptorChain, realInterceptorChain$proceed$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            interceptor = interceptor2;
            obj = objA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            interceptor = realInterceptorChain$proceed$1.f21505b;
            ResultKt.b(obj);
        }
        ImageResult imageResult = (ImageResult) obj;
        ImageRequest f21669b = imageResult.getF21669b();
        Context context = f21669b.f21612a;
        ImageRequest imageRequest = this.f21500a;
        if (context != imageRequest.f21612a) {
            wp.e("Interceptor '", interceptor, "' cannot modify the request's context.");
            return null;
        }
        if (f21669b.f21613b == NullRequestData.f21658a) {
            wp.e("Interceptor '", interceptor, "' cannot set the request's data to null.");
            return null;
        }
        if (f21669b.f21614c != imageRequest.f21614c) {
            wp.e("Interceptor '", interceptor, "' cannot modify the request's target.");
            return null;
        }
        if (f21669b.u == imageRequest.u) {
            return imageResult;
        }
        wp.e("Interceptor '", interceptor, "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.");
        return null;
    }
}
