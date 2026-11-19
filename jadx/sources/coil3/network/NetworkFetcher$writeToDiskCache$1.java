package coil3.network;

import coil3.disk.DiskCache;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {184, 199}, m = "writeToDiskCache", v = 1)
final class NetworkFetcher$writeToDiskCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DiskCache.Snapshot f21567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NetworkResponse f21568c;
    public NetworkResponse d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DiskCache.Editor f21569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f21570f;
    public final /* synthetic */ NetworkFetcher g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21571h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$writeToDiskCache$1(NetworkFetcher networkFetcher, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21570f = obj;
        this.f21571h |= Integer.MIN_VALUE;
        return NetworkFetcher.d(this.g, null, null, null, null, this);
    }
}
