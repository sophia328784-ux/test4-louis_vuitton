package androidx.compose.ui.viewinterop;

import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class FocusTargetInteropNode$retrievePinnableContainer$1 extends Lambda implements Function0<Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f11100c;
    public final /* synthetic */ FocusTargetInteropNode d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusTargetInteropNode$retrievePinnableContainer$1(Ref$ObjectRef ref$ObjectRef, FocusTargetInteropNode focusTargetInteropNode) {
        super(0);
        this.f11100c = ref$ObjectRef;
        this.d = focusTargetInteropNode;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        this.f11100c.f71921b = CompositionLocalConsumerModifierNodeKt.a(this.d, PinnableContainerKt.f9546a);
        return Unit.f71739a;
    }
}
