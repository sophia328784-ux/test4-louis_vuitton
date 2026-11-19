package androidx.compose.foundation.text;

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
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import defpackage.a2;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/text/HeightInLinesNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/text/TextStyle;", "textStyle", "", "minLines", "maxLines", "<init>", "(Landroidx/compose/ui/text/TextStyle;II)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class HeightInLinesNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode, ObserverModifierNode {
    public TextStyle p;
    public int q;
    public int r;
    public boolean s;
    public int t = -1;
    public int u = -1;
    public TextStyle v;
    public State w;

    public HeightInLinesNode(TextStyle textStyle, int i2, int i3) {
        this.p = textStyle;
        this.q = i2;
        this.r = i3;
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        this.s = true;
        DelegatableNodeKt.f(this).X();
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        int i2;
        int i3;
        FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.f10034k);
        this.v = TextStyleKt.a(this.p, DelegatableNodeKt.f(this).B);
        FontFamily fontFamily = h2().f10568a.fontFamily;
        FontWeight fontWeight = h2().f10568a.fontWeight;
        if (fontWeight == null) {
            FontWeight.f10727c.getClass();
            fontWeight = FontWeight.f10730h;
        }
        FontStyle fontStyle = h2().f10568a.fontStyle;
        if (fontStyle != null) {
            i2 = fontStyle.f10717a;
        } else {
            FontStyle.f10715b.getClass();
            i2 = 0;
        }
        FontSynthesis fontSynthesis = h2().f10568a.fontSynthesis;
        if (fontSynthesis != null) {
            i3 = fontSynthesis.f10721a;
        } else {
            FontSynthesis.f10718b.getClass();
            i3 = FontSynthesis.f10720e;
        }
        this.w = resolver.a(fontFamily, fontWeight, i2, i3);
        ObserverModifierNodeKt.a(this, new e(this, 0));
        this.s = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.v = null;
        this.w = null;
        this.s = false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        if (this.s) {
            TextStyle textStyleH2 = h2();
            FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.f10034k);
            String str = TextFieldDelegateKt.f5964a;
            int iA = (int) (TextFieldDelegateKt.a(textStyleH2, measureScope, resolver, str, 1) & BodyPartID.bodyIdMax);
            int iA2 = ((int) (TextFieldDelegateKt.a(textStyleH2, measureScope, resolver, str + '\n' + str, 2) & BodyPartID.bodyIdMax)) - iA;
            int i2 = this.q;
            this.t = i2 == 1 ? -1 : ((i2 - 1) * iA2) + iA;
            int i3 = this.r;
            this.u = i3 == Integer.MAX_VALUE ? -1 : ((i3 - 1) * iA2) + iA;
            this.s = false;
        }
        int i4 = this.t;
        int iD = i4 != -1 ? RangesKt.d(i4, Constraints.i(j2), Constraints.g(j2)) : Constraints.i(j2);
        int i5 = this.u;
        Placeable placeableT = measurable.T(Constraints.a(j2, 0, 0, iD, i5 != -1 ? RangesKt.d(i5, Constraints.i(j2), Constraints.g(j2)) : Constraints.g(j2), 3));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 6));
    }

    public final TextStyle h2() {
        TextStyle textStyle = this.v;
        if (textStyle != null) {
            return textStyle;
        }
        throw o60.u("Resolved style is not set.");
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void p0() {
        this.v = TextStyleKt.a(this.p, DelegatableNodeKt.f(this).B);
        this.s = true;
        DelegatableNodeKt.f(this).X();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        if (this.w != null) {
            ObserverModifierNodeKt.a(this, new e(this, 1));
        }
        this.s = true;
        DelegatableNodeKt.f(this).X();
    }
}
