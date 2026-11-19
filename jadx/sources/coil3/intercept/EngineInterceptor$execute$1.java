package coil3.intercept;

import coil3.EventListener;
import coil3.request.ImageRequest;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {126, 130, 148}, m = "execute", v = 1)
final class EngineInterceptor$execute$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageRequest f21462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f21463c;
    public EventListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Ref$ObjectRef f21464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Ref$ObjectRef f21465f;
    public Ref$ObjectRef g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Ref$ObjectRef f21466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f21467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ EngineInterceptor f21468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f21469k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$execute$1(EngineInterceptor engineInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f21468j = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21467i = obj;
        this.f21469k |= Integer.MIN_VALUE;
        return EngineInterceptor.c(this.f21468j, null, null, null, null, this);
    }
}
