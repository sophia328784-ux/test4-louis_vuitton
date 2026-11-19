package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.grid.LazyGridState", f = "LazyGridState.kt", l = {496, 498}, m = "scroll", v = 1)
final class LazyGridState$scroll$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutatePriority f5367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SuspendLambda f5368c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LazyGridState f5369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5370f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridState$scroll$1(LazyGridState lazyGridState, Continuation continuation) {
        super(continuation);
        this.f5369e = lazyGridState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f5370f |= Integer.MIN_VALUE;
        return this.f5369e.c(null, null, this);
    }
}
