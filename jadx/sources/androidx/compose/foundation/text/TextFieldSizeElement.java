package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/text/TextFieldSizeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/TextFieldSizeNode;", "Landroidx/compose/ui/text/TextStyle;", "style", "<init>", "(Landroidx/compose/ui/text/TextStyle;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TextFieldSizeElement extends ModifierNodeElement<TextFieldSizeNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f6010b;

    public TextFieldSizeElement(TextStyle textStyle) {
        this.f6010b = textStyle;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new TextFieldSizeNode(this.f6010b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldSizeElement)) {
            return false;
        }
        return Intrinsics.c(this.f6010b, ((TextFieldSizeElement) obj).f6010b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        TextFieldSizeNode textFieldSizeNode = (TextFieldSizeNode) node;
        textFieldSizeNode.getClass();
        TextStyle textStyleA = TextStyleKt.a(this.f6010b, DelegatableNodeKt.f(textFieldSizeNode).B);
        textFieldSizeNode.h2(textStyleA, (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(textFieldSizeNode, CompositionLocalsKt.f10034k));
        TextFieldSize textFieldSize = textFieldSizeNode.r;
        if (textFieldSize == null) {
            throw o60.u("Min size state is not set.");
        }
        TextFieldSize.a(textFieldSize, null, null, textStyleA, 23);
        DelegatableNodeKt.f(textFieldSizeNode).X();
    }

    public final int hashCode() {
        return this.f6010b.hashCode();
    }
}
