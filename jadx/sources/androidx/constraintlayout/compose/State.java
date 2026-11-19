package androidx.constraintlayout.compose;

import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ln0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/constraintlayout/compose/State;", "Landroidx/constraintlayout/core/state/State;", "Landroidx/constraintlayout/compose/SolverState;", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/ui/unit/Density;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class State extends androidx.constraintlayout.core.state.State {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Density f11276k;
    public long l = ConstraintsKt.b(0, 0, 0, 0, 15);

    public State(Density density) {
        this.f11276k = density;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        this.f11446a = new ln0(this, 14);
    }

    @Override // androidx.constraintlayout.core.state.State
    public final int c(Float f2) {
        return super.c(f2);
    }
}
