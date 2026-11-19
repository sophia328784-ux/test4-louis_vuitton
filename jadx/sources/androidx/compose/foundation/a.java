package androidx.compose.foundation;

import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4308c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f4307b = i2;
        this.f4308c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f4307b;
        Object obj = this.d;
        Object obj2 = this.f4308c;
        switch (i2) {
            case 0:
                BackgroundNode backgroundNode = (BackgroundNode) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                backgroundNode.x = backgroundNode.s.a(layoutNodeDrawScope.f9701b.b(), layoutNodeDrawScope.getLayoutDirection(), layoutNodeDrawScope);
                return Unit.f71739a;
            default:
                MarqueeModifierNode marqueeModifierNode = (MarqueeModifierNode) obj;
                Density density = DelegatableNodeKt.f(marqueeModifierNode).A;
                ((SnapshotMutableIntStateImpl) marqueeModifierNode.t).f();
                return Integer.valueOf(((MarqueeSpacing) obj2).d(density, ((SnapshotMutableIntStateImpl) marqueeModifierNode.u).f()));
        }
    }
}
