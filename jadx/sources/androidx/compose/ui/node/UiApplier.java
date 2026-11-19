package androidx.compose.ui.node;

import androidx.compose.runtime.AbstractApplier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/UiApplier;", "Landroidx/compose/runtime/AbstractApplier;", "Landroidx/compose/ui/node/LayoutNode;", "root", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UiApplier extends AbstractApplier<LayoutNode> {
    public UiApplier(LayoutNode layoutNode) {
        super(layoutNode);
    }

    @Override // androidx.compose.runtime.Applier
    public final void c(int i2, int i3, int i4) {
        ((LayoutNode) this.f7920c).c0(i2, i3, i4);
    }

    @Override // androidx.compose.runtime.Applier
    public final void d(int i2, int i3) {
        ((LayoutNode) this.f7920c).h0(i2, i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final /* bridge */ /* synthetic */ void e(int i2, Object obj) {
    }

    @Override // androidx.compose.runtime.Applier
    public final void f() {
        Owner owner = ((LayoutNode) this.f7918a).p;
        if (owner != null) {
            owner.F();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public final void g(int i2, Object obj) {
        ((LayoutNode) this.f7920c).U(i2, (LayoutNode) obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void i() {
        ((LayoutNode) this.f7920c).h();
    }

    @Override // androidx.compose.runtime.AbstractApplier
    public final void k() {
        ((LayoutNode) this.f7918a).g0();
    }
}
