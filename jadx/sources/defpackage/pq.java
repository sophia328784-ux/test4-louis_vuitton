package defpackage;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.input.ImeAction;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pq implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoreTextFieldSemanticsModifierNode f78910c;

    public /* synthetic */ pq(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, int i2) {
        this.f78909b = i2;
        this.f78910c = coreTextFieldSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        SoftwareKeyboardController softwareKeyboardController;
        int i2 = this.f78909b;
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.f78910c;
        switch (i2) {
            case 0:
                LayoutNode layoutNodeF = DelegatableNodeKt.f(coreTextFieldSemanticsModifierNode);
                if (!layoutNodeF.v) {
                    LayoutNodeKt.a(layoutNodeF).p(layoutNodeF);
                }
                return Unit.f71739a;
            case 1:
                coreTextFieldSemanticsModifierNode.y.h(true);
                break;
            case 2:
                coreTextFieldSemanticsModifierNode.y.d(true);
                break;
            case 3:
                coreTextFieldSemanticsModifierNode.y.f();
                break;
            case 4:
                LayoutNode layoutNodeF2 = DelegatableNodeKt.f(coreTextFieldSemanticsModifierNode);
                if (!layoutNodeF2.v) {
                    LayoutNodeKt.a(layoutNodeF2).p(layoutNodeF2);
                }
                return Unit.f71739a;
            case 5:
                coreTextFieldSemanticsModifierNode.y.q();
                break;
            case 6:
                coreTextFieldSemanticsModifierNode.t.w.invoke(new ImeAction(coreTextFieldSemanticsModifierNode.z.f10798e));
                break;
            default:
                LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.t;
                FocusRequester focusRequester = coreTextFieldSemanticsModifierNode.A;
                boolean z = coreTextFieldSemanticsModifierNode.u;
                if (!legacyTextFieldState.b()) {
                    FocusRequester.a(focusRequester);
                } else if (!z && (softwareKeyboardController = legacyTextFieldState.f5927c) != null) {
                    softwareKeyboardController.a();
                }
                return Boolean.TRUE;
        }
        return Boolean.TRUE;
    }
}
