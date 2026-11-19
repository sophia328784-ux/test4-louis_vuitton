package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.UnbatchedFlowCombiner", f = "FlowExt.kt", l = {190, 230, 207}, m = "onNext")
final class UnbatchedFlowCombiner$onNext$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public UnbatchedFlowCombiner f18989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f18990c;
    public MutexImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f18992f;
    public final /* synthetic */ UnbatchedFlowCombiner g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18993h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbatchedFlowCombiner$onNext$1(UnbatchedFlowCombiner unbatchedFlowCombiner, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = unbatchedFlowCombiner;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f18992f = obj;
        this.f18993h |= Integer.MIN_VALUE;
        return this.g.a(0, null, this);
    }
}
