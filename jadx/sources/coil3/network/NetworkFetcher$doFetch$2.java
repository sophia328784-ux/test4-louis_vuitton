package coil3.network;

import coil3.fetch.SourceFetchResult;
import coil3.graphics.DataSource;
import coil3.graphics.ImageSource;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcoil3/fetch/SourceFetchResult;", Payload.RESPONSE, "Lcoil3/network/NetworkResponse;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.network.NetworkFetcher$doFetch$2", f = "NetworkFetcher.kt", l = {141}, m = "invokeSuspend", v = 1)
final class NetworkFetcher$doFetch$2 extends SuspendLambda implements Function2<NetworkResponse, Continuation<? super SourceFetchResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21558c;
    public final /* synthetic */ NetworkFetcher d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$2(NetworkFetcher networkFetcher, Continuation continuation) {
        super(2, continuation);
        this.d = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NetworkFetcher$doFetch$2 networkFetcher$doFetch$2 = new NetworkFetcher$doFetch$2(this.d, continuation);
        networkFetcher$doFetch$2.f21558c = obj;
        return networkFetcher$doFetch$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NetworkFetcher$doFetch$2) create((NetworkResponse) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NetworkResponse networkResponse = (NetworkResponse) this.f21558c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f21557b;
        NetworkFetcher networkFetcher = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            NetworkResponseBody networkResponseBody = networkResponse.f21582e;
            if (networkResponseBody == null) {
                md.k("body == null");
                return null;
            }
            this.f21558c = networkResponse;
            this.f21557b = 1;
            obj = NetworkFetcher.c(networkFetcher, networkResponseBody, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return new SourceFetchResult((ImageSource) obj, NetworkFetcher.f(networkFetcher.f21543a, networkResponse.d.a()), DataSource.NETWORK);
    }
}
