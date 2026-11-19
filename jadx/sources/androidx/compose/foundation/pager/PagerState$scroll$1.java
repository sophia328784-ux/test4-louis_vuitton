package androidx.compose.foundation.pager;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState", f = "PagerState.kt", l = {691, 696}, m = "scroll$suspendImpl", v = 1)
final class PagerState$scroll$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PagerState f5778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutatePriority f5779c;
    public SuspendLambda d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PagerState f5781f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$scroll$1(PagerState pagerState, Continuation continuation) {
        super(continuation);
        this.f5781f = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f5780e = obj;
        this.g |= Integer.MIN_VALUE;
        return PagerState.u(this.f5781f, null, null, this);
    }
}
