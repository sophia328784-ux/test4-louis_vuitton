package coil3.network.okhttp.internal;

import coil3.network.NetworkRequest;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okhttp3.Request;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.network.okhttp.internal.CallFactoryNetworkClientKt", f = "CallFactoryNetworkClient.kt", l = {32}, m = "toRequest", v = 1)
final class CallFactoryNetworkClientKt$toRequest$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NetworkRequest f21598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Request.Builder f21599c;
    public Request.Builder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f21600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f21601f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21601f = obj;
        this.g |= Integer.MIN_VALUE;
        return CallFactoryNetworkClientKt.b(null, this);
    }
}
