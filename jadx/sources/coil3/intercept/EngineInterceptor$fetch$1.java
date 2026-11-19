package coil3.intercept;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {169}, m = "fetch", v = 1)
final class EngineInterceptor$fetch$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ComponentRegistry f21476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageRequest f21477c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Options f21478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EventListener f21479f;
    public Fetcher g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21480h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f21481i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ EngineInterceptor f21482j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f21483k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$fetch$1(EngineInterceptor engineInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f21482j = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21481i = obj;
        this.f21483k |= Integer.MIN_VALUE;
        int i2 = EngineInterceptor.f21446f;
        return this.f21482j.d(null, null, null, null, null, this);
    }
}
