package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002\u0082\u0001\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/animation/core/TransitionState;", "S", "", "Landroidx/compose/animation/core/MutableTransitionState;", "Landroidx/compose/animation/core/SeekableTransitionState;", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class TransitionState<S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f4030a = SnapshotStateKt.g(Boolean.FALSE);

    public TransitionState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract Object a();

    public abstract Object b();

    public abstract void c(Object obj);

    public abstract void d(Transition transition);

    public abstract void e();
}
