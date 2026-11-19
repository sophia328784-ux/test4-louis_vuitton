package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import defpackage.o60;
import defpackage.pq;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BW\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;", "Landroidx/compose/ui/text/input/TransformedText;", "transformedText", "Landroidx/compose/ui/text/input/TextFieldValue;", "value", "Landroidx/compose/foundation/text/LegacyTextFieldState;", "state", "", "readOnly", "enabled", "isPassword", "Landroidx/compose/ui/text/input/OffsetMapping;", "offsetMapping", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "manager", "Landroidx/compose/ui/text/input/ImeOptions;", "imeOptions", "Landroidx/compose/ui/focus/FocusRequester;", "focusRequester", "<init>", "(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/focus/FocusRequester;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CoreTextFieldSemanticsModifier extends ModifierNodeElement<CoreTextFieldSemanticsModifierNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TransformedText f6192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextFieldValue f6193c;
    public final LegacyTextFieldState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6195f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OffsetMapping f6196h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextFieldSelectionManager f6197i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImeOptions f6198j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FocusRequester f6199k;

    public CoreTextFieldSemanticsModifier(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, boolean z3, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        this.f6192b = transformedText;
        this.f6193c = textFieldValue;
        this.d = legacyTextFieldState;
        this.f6194e = z;
        this.f6195f = z2;
        this.g = z3;
        this.f6196h = offsetMapping;
        this.f6197i = textFieldSelectionManager;
        this.f6198j = imeOptions;
        this.f6199k = focusRequester;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new CoreTextFieldSemanticsModifierNode(this.f6192b, this.f6193c, this.d, this.f6194e, this.f6195f, this.g, this.f6196h, this.f6197i, this.f6198j, this.f6199k);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CoreTextFieldSemanticsModifier)) {
            return false;
        }
        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier = (CoreTextFieldSemanticsModifier) obj;
        return Intrinsics.c(this.f6192b, coreTextFieldSemanticsModifier.f6192b) && Intrinsics.c(this.f6193c, coreTextFieldSemanticsModifier.f6193c) && Intrinsics.c(this.d, coreTextFieldSemanticsModifier.d) && this.f6194e == coreTextFieldSemanticsModifier.f6194e && this.f6195f == coreTextFieldSemanticsModifier.f6195f && this.g == coreTextFieldSemanticsModifier.g && Intrinsics.c(this.f6196h, coreTextFieldSemanticsModifier.f6196h) && Intrinsics.c(this.f6197i, coreTextFieldSemanticsModifier.f6197i) && Intrinsics.c(this.f6198j, coreTextFieldSemanticsModifier.f6198j) && Intrinsics.c(this.f6199k, coreTextFieldSemanticsModifier.f6199k);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) node;
        boolean z = coreTextFieldSemanticsModifierNode.v;
        int i2 = 0;
        boolean z2 = z && !coreTextFieldSemanticsModifierNode.u;
        boolean z3 = coreTextFieldSemanticsModifierNode.w;
        ImeOptions imeOptions = coreTextFieldSemanticsModifierNode.z;
        TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.y;
        boolean z4 = this.f6194e;
        boolean z5 = this.f6195f;
        boolean z6 = z5 && !z4;
        coreTextFieldSemanticsModifierNode.r = this.f6192b;
        TextFieldValue textFieldValue = this.f6193c;
        coreTextFieldSemanticsModifierNode.s = textFieldValue;
        coreTextFieldSemanticsModifierNode.t = this.d;
        coreTextFieldSemanticsModifierNode.u = z4;
        coreTextFieldSemanticsModifierNode.v = z5;
        coreTextFieldSemanticsModifierNode.x = this.f6196h;
        TextFieldSelectionManager textFieldSelectionManager2 = this.f6197i;
        coreTextFieldSemanticsModifierNode.y = textFieldSelectionManager2;
        ImeOptions imeOptions2 = this.f6198j;
        coreTextFieldSemanticsModifierNode.z = imeOptions2;
        coreTextFieldSemanticsModifierNode.A = this.f6199k;
        if (z5 != z || z6 != z2 || !Intrinsics.c(imeOptions2, imeOptions) || this.g != z3 || !TextRange.c(textFieldValue.f10841b)) {
            SemanticsModifierNodeKt.b(coreTextFieldSemanticsModifierNode);
        }
        if (Intrinsics.c(textFieldSelectionManager2, textFieldSelectionManager)) {
            return;
        }
        textFieldSelectionManager2.g = new pq(coreTextFieldSemanticsModifierNode, i2);
    }

    public final int hashCode() {
        return this.f6199k.hashCode() + ((this.f6198j.hashCode() + ((this.f6197i.hashCode() + ((this.f6196h.hashCode() + o60.b(o60.b(o60.b((this.d.hashCode() + ((this.f6193c.hashCode() + (this.f6192b.hashCode() * 31)) * 31)) * 31, 31, this.f6194e), 31, this.f6195f), 31, this.g)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CoreTextFieldSemanticsModifier(transformedText=" + this.f6192b + ", value=" + this.f6193c + ", state=" + this.d + ", readOnly=" + this.f6194e + ", enabled=" + this.f6195f + ", isPassword=" + this.g + ", offsetMapping=" + this.f6196h + ", manager=" + this.f6197i + ", imeOptions=" + this.f6198j + ", focusRequester=" + this.f6199k + ')';
    }
}
