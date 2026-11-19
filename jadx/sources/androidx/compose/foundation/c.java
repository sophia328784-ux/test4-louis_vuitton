package androidx.compose.foundation;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier.Node f4312c;

    public /* synthetic */ c(Modifier.Node node, int i2) {
        this.f4311b = i2;
        this.f4312c = node;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f4311b;
        Modifier.Node node = this.f4312c;
        switch (i2) {
            case 0:
                Function0 function0 = ((CombinedClickableNode) node).N;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Boolean.TRUE;
            case 1:
                MarqueeModifierNode marqueeModifierNode = (MarqueeModifierNode) node;
                MutableIntState mutableIntState = marqueeModifierNode.t;
                if (((SnapshotMutableIntStateImpl) mutableIntState).f() <= ((SnapshotMutableIntStateImpl) marqueeModifierNode.u).f()) {
                    return null;
                }
                int i3 = ((MarqueeAnimationMode) ((SnapshotMutableStateImpl) marqueeModifierNode.z).getF10755b()).f4248a;
                MarqueeAnimationMode.f4246b.getClass();
                if (i3 != MarqueeAnimationMode.f4247c || ((Boolean) ((SnapshotMutableStateImpl) marqueeModifierNode.v).getF10755b()).booleanValue()) {
                    return Float.valueOf(((SnapshotMutableIntStateImpl) mutableIntState).f() + marqueeModifierNode.h2());
                }
                return null;
            default:
                ScrollableAreaNode scrollableAreaNode = (ScrollableAreaNode) node;
                OverscrollFactory overscrollFactory = (OverscrollFactory) CompositionLocalConsumerModifierNodeKt.a(scrollableAreaNode, OverscrollKt.f4285a);
                scrollableAreaNode.C = overscrollFactory;
                scrollableAreaNode.D = overscrollFactory != null ? overscrollFactory.a() : null;
                return Unit.f71739a;
        }
    }
}
