package coil3.network.okhttp.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.network.okhttp.internal.CallFactoryNetworkClient", f = "CallFactoryNetworkClient.kt", l = {24, 24, 25}, m = "executeRequest-impl", v = 1)
final class CallFactoryNetworkClient$executeRequest$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function2 f21593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f21594c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21595e;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f21595e |= Integer.MIN_VALUE;
        return CallFactoryNetworkClient.b(null, null, null, this);
    }
}
