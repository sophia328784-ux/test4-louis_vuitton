package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a2;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/text/TextFieldSizeNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/text/TextStyle;", "style", "<init>", "(Landroidx/compose/ui/text/TextStyle;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TextFieldSizeNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    public final TextStyle p;
    public State q;
    public TextFieldSize r;

    public TextFieldSizeNode(TextStyle textStyle) {
        this.p = textStyle;
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        TextFieldSize textFieldSize = this.r;
        if (textFieldSize != null) {
            TextFieldSize.a(textFieldSize, null, DelegatableNodeKt.f(this).A, null, 29);
        }
        DelegatableNodeKt.f(this).X();
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        TextStyle textStyleA = TextStyleKt.a(this.p, DelegatableNodeKt.f(this).B);
        FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.f10034k);
        h2(textStyleA, resolver);
        LayoutDirection layoutDirection = DelegatableNodeKt.f(this).B;
        Density density = DelegatableNodeKt.f(this).A;
        State state = this.q;
        if (state == null) {
            throw o60.u("Font resolution state is not set.");
        }
        this.r = new TextFieldSize(layoutDirection, density, resolver, textStyleA, state.getF10755b());
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.q = null;
        this.r = null;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        TextFieldSize textFieldSize = this.r;
        if (textFieldSize == null) {
            throw o60.u("Min size state is not set.");
        }
        MutableState mutableState = textFieldSize.f6009f;
        State state = this.q;
        if (state == null) {
            throw o60.u("Font resolution state is not set.");
        }
        Object f10755b = state.getF10755b();
        if (!Intrinsics.c(f10755b, textFieldSize.f6008e)) {
            textFieldSize.f6008e = f10755b;
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
        }
        if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getF10755b()).booleanValue()) {
            textFieldSize.g = TextFieldDelegateKt.a(textFieldSize.d, textFieldSize.f6006b, textFieldSize.f6007c, TextFieldDelegateKt.f5964a, 1);
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
        }
        long j3 = textFieldSize.g;
        Placeable placeableT = measurable.T(ConstraintsKt.e(j2, ConstraintsKt.b((int) (j3 >> 32), 0, (int) (j3 & BodyPartID.bodyIdMax), 0, 10)));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 19));
    }

    public final void h2(TextStyle textStyle, FontFamily.Resolver resolver) {
        int i2;
        int i3;
        SpanStyle spanStyle = textStyle.f10568a;
        FontFamily fontFamily = spanStyle.fontFamily;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            FontWeight.f10727c.getClass();
            fontWeight = FontWeight.f10730h;
        }
        FontStyle fontStyle = spanStyle.fontStyle;
        if (fontStyle != null) {
            i2 = fontStyle.f10717a;
        } else {
            FontStyle.f10715b.getClass();
            i2 = 0;
        }
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        if (fontSynthesis != null) {
            i3 = fontSynthesis.f10721a;
        } else {
            FontSynthesis.f10718b.getClass();
            i3 = FontSynthesis.f10720e;
        }
        this.q = resolver.a(fontFamily, fontWeight, i2, i3);
        DelegatableNodeKt.f(this).X();
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void p0() {
        TextFieldSize textFieldSize = this.r;
        if (textFieldSize != null) {
            TextFieldSize.a(textFieldSize, DelegatableNodeKt.f(this).B, null, null, 30);
        }
        DelegatableNodeKt.f(this).X();
    }
}
