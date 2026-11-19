package androidx.compose.ui.focus;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;", "Landroidx/compose/ui/focus/FocusEnterExitScope;", "Landroidx/compose/ui/focus/FocusDirection;", "requestedFocusDirection", "<init>", "(ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CancelIndicatingFocusBoundaryScope implements FocusEnterExitScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f8729b;

    public CancelIndicatingFocusBoundaryScope(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8728a = i2;
    }

    @Override // androidx.compose.ui.focus.FocusEnterExitScope
    public final void a() {
        this.f8729b = true;
    }

    @Override // androidx.compose.ui.focus.FocusEnterExitScope
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF8728a() {
        return this.f8728a;
    }
}
