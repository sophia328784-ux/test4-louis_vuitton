package coil3;

import coil3.request.ImageRequest;
import coil3.request.RequestDelegate;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.RealImageLoader", f = "RealImageLoader.kt", l = {118, 130, 134}, m = "execute", v = 1)
final class RealImageLoader$execute$3 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RequestDelegate f21252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageRequest f21253c;
    public EventListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Image f21254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f21255f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RealImageLoader f21256h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f21257i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$3(RealImageLoader realImageLoader, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f21256h = realImageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f21257i |= Integer.MIN_VALUE;
        int i2 = RealImageLoader.f21234f;
        return this.f21256h.f(null, 0, this);
    }
}
