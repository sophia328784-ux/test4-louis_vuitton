package coil3.intercept;

import coil3.EventListener;
import coil3.request.ImageRequest;
import coil3.request.Options;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.intercept.EngineInterceptorKt", f = "EngineInterceptor.kt", l = {259}, m = "transform", v = 1)
final class EngineInterceptorKt$transform$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EngineInterceptor.ExecuteResult f21493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageRequest f21494c;
    public Options d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EventListener f21495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f21496f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f21498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f21499j;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21498i = obj;
        this.f21499j |= Integer.MIN_VALUE;
        return EngineInterceptorKt.a(null, null, null, null, null, this);
    }
}
