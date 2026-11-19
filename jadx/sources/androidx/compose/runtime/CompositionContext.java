package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/CompositionContext;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CompositionContext {
    public abstract void a(ControlledComposition controlledComposition, Function2 function2);

    public abstract ScatterSet b(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, Function2 function2);

    public abstract void c(MovableContentStateReference movableContentStateReference);

    public void d() {
    }

    public abstract boolean e();

    /* JADX INFO: renamed from: f */
    public abstract boolean getF7987b();

    /* JADX INFO: renamed from: g */
    public abstract boolean getF7988c();

    /* JADX INFO: renamed from: h */
    public abstract long getF7986a();

    public abstract Composition i();

    public PersistentCompositionLocalMap j() {
        return CompositionContextKt.f7946a;
    }

    public abstract CoroutineContext k();

    /* JADX INFO: renamed from: l */
    public CompositionObserverHolder getD() {
        return null;
    }

    public abstract boolean m();

    public abstract void n(MovableContentStateReference movableContentStateReference);

    public abstract void o(ControlledComposition controlledComposition);

    public abstract void p(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier applier);

    public MovableContentState q(MovableContentStateReference movableContentStateReference) {
        return null;
    }

    public abstract ScatterSet r(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet);

    public void s(Set set) {
    }

    public void t(GapComposer gapComposer) {
    }

    public abstract void u(RecomposeScopeImpl recomposeScopeImpl);

    public abstract void v(ControlledComposition controlledComposition);

    public abstract CancellationHandle w(Function0 function0);

    public void x() {
    }

    public void y(GapComposer gapComposer) {
    }

    public abstract void z(CompositionImpl compositionImpl);
}
