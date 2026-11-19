package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;", "Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;", "serviceAdapter", "Landroidx/compose/foundation/text/LegacyTextFieldState;", "legacyTextFieldState", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "textFieldSelectionManager", "<init>", "(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class LegacyAdaptingPlatformTextInputModifier extends ModifierNodeElement<LegacyAdaptingPlatformTextInputModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LegacyPlatformTextInputServiceAdapter f6210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LegacyTextFieldState f6211c;
    public final TextFieldSelectionManager d;

    public LegacyAdaptingPlatformTextInputModifier(LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter, LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager) {
        this.f6210b = legacyPlatformTextInputServiceAdapter;
        this.f6211c = legacyTextFieldState;
        this.d = textFieldSelectionManager;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new LegacyAdaptingPlatformTextInputModifierNode(this.f6210b, this.f6211c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LegacyAdaptingPlatformTextInputModifier)) {
            return false;
        }
        LegacyAdaptingPlatformTextInputModifier legacyAdaptingPlatformTextInputModifier = (LegacyAdaptingPlatformTextInputModifier) obj;
        return Intrinsics.c(this.f6210b, legacyAdaptingPlatformTextInputModifier.f6210b) && Intrinsics.c(this.f6211c, legacyAdaptingPlatformTextInputModifier.f6211c) && Intrinsics.c(this.d, legacyAdaptingPlatformTextInputModifier.d);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) throws Throwable {
        LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = (LegacyAdaptingPlatformTextInputModifierNode) node;
        if (legacyAdaptingPlatformTextInputModifierNode.o) {
            ((AndroidLegacyPlatformTextInputServiceAdapter) legacyAdaptingPlatformTextInputModifierNode.p).b();
            legacyAdaptingPlatformTextInputModifierNode.p.j(legacyAdaptingPlatformTextInputModifierNode);
        }
        LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter = this.f6210b;
        legacyAdaptingPlatformTextInputModifierNode.p = legacyPlatformTextInputServiceAdapter;
        if (legacyAdaptingPlatformTextInputModifierNode.o) {
            if (legacyPlatformTextInputServiceAdapter.f6223a != null) {
                InlineClassHelperKt.c("Expected textInputModifierNode to be null");
            }
            legacyPlatformTextInputServiceAdapter.f6223a = legacyAdaptingPlatformTextInputModifierNode;
        }
        legacyAdaptingPlatformTextInputModifierNode.q = this.f6211c;
        legacyAdaptingPlatformTextInputModifierNode.r = this.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f6211c.hashCode() + (this.f6210b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "LegacyAdaptingPlatformTextInputModifier(serviceAdapter=" + this.f6210b + ", legacyTextFieldState=" + this.f6211c + ", textFieldSelectionManager=" + this.d + ')';
    }
}
