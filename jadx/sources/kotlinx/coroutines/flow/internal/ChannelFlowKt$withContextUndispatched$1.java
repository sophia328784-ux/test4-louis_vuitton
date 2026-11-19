package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowKt", f = "ChannelFlow.kt", l = {221}, m = "withContextUndispatched", v = 1)
final class ChannelFlowKt$withContextUndispatched$1<T, V> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CoroutineContext f75035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f75036c;
    public CoroutineContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f75037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f75038f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f75039h;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f75039h |= Integer.MIN_VALUE;
        return ChannelFlowKt.a(null, null, null, null, this);
    }
}
