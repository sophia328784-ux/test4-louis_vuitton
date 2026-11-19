package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/HeightInLinesElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/HeightInLinesNode;", "Landroidx/compose/ui/text/TextStyle;", "textStyle", "", "minLines", "maxLines", "<init>", "(Landroidx/compose/ui/text/TextStyle;II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class HeightInLinesElement extends ModifierNodeElement<HeightInLinesNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f5893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5894c;
    public final int d;

    public HeightInLinesElement(TextStyle textStyle, int i2, int i3) {
        this.f5893b = textStyle;
        this.f5894c = i2;
        this.d = i3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new HeightInLinesNode(this.f5893b, this.f5894c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeightInLinesElement)) {
            return false;
        }
        HeightInLinesElement heightInLinesElement = (HeightInLinesElement) obj;
        return Intrinsics.c(this.f5893b, heightInLinesElement.f5893b) && this.f5894c == heightInLinesElement.f5894c && this.d == heightInLinesElement.d;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        HeightInLinesNode heightInLinesNode = (HeightInLinesNode) node;
        TextStyle textStyle = heightInLinesNode.p;
        TextStyle textStyle2 = this.f5893b;
        boolean zC = Intrinsics.c(textStyle, textStyle2);
        int i2 = this.f5894c;
        int i3 = this.d;
        if (zC && heightInLinesNode.q == i2 && heightInLinesNode.r == i3) {
            return;
        }
        heightInLinesNode.p = textStyle2;
        heightInLinesNode.q = i2;
        heightInLinesNode.r = i3;
        heightInLinesNode.v = TextStyleKt.a(textStyle2, DelegatableNodeKt.f(heightInLinesNode).B);
        heightInLinesNode.s = true;
        DelegatableNodeKt.f(heightInLinesNode).X();
    }

    public final int hashCode() {
        return (((this.f5893b.hashCode() * 31) + this.f5894c) * 31) + this.d;
    }
}
