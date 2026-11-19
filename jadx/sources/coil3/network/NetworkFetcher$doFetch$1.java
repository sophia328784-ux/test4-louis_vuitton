package coil3.network;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {84, 108, 139}, m = "doFetch", v = 1)
final class NetworkFetcher$doFetch$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f21553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$ObjectRef f21554c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NetworkFetcher f21555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f21556f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$1(NetworkFetcher networkFetcher, Continuation continuation) {
        super(continuation);
        this.f21555e = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f21556f |= Integer.MIN_VALUE;
        return NetworkFetcher.b(this.f21555e, this);
    }
}
