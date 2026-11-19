package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BS\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;", "", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "", "softWrap", "", "maxLines", "minLines", "Landroidx/compose/ui/graphics/ColorProducer;", "color", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextStringSimpleElement extends ModifierNodeElement<TextStringSimpleNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f6328c;
    public final FontFamily.Resolver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6330f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6331h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ColorProducer f6332i;

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStringSimpleElement(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, ColorProducer colorProducer, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        if ((i5 & 8) != 0) {
            TextOverflow.f10989a.getClass();
            i6 = TextOverflow.f10990b;
        } else {
            i6 = i2;
        }
        this(str, textStyle, resolver, i6, (i5 & 16) != 0 ? true : z, (i5 & 32) != 0 ? Integer.MAX_VALUE : i3, (i5 & 64) != 0 ? 1 : i4, (i5 & 128) != 0 ? null : colorProducer, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new TextStringSimpleNode(this.f6327b, this.f6328c, this.d, this.f6329e, this.f6330f, this.g, this.f6331h, this.f6332i, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStringSimpleElement)) {
            return false;
        }
        TextStringSimpleElement textStringSimpleElement = (TextStringSimpleElement) obj;
        if (!Intrinsics.c(this.f6332i, textStringSimpleElement.f6332i) || !Intrinsics.c(this.f6327b, textStringSimpleElement.f6327b) || !Intrinsics.c(this.f6328c, textStringSimpleElement.f6328c) || !Intrinsics.c(this.d, textStringSimpleElement.d)) {
            return false;
        }
        int i2 = textStringSimpleElement.f6329e;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        return this.f6329e == i2 && this.f6330f == textStringSimpleElement.f6330f && this.g == textStringSimpleElement.g && this.f6331h == textStringSimpleElement.f6331h;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        boolean z;
        TextStringSimpleNode textStringSimpleNode = (TextStringSimpleNode) node;
        ColorProducer colorProducer = textStringSimpleNode.w;
        ColorProducer colorProducer2 = this.f6332i;
        boolean zC = Intrinsics.c(colorProducer2, colorProducer);
        textStringSimpleNode.w = colorProducer2;
        boolean z2 = false;
        boolean z3 = true;
        TextStyle textStyle = this.f6328c;
        if (zC) {
            TextStyle textStyle2 = textStringSimpleNode.q;
            if (textStyle == textStyle2) {
                textStyle.getClass();
            } else if (!textStyle.f10568a.c(textStyle2.f10568a)) {
                z = true;
            }
            z = false;
        } else {
            z = true;
        }
        String str = textStringSimpleNode.p;
        String str2 = this.f6327b;
        if (!Intrinsics.c(str, str2)) {
            textStringSimpleNode.p = str2;
            textStringSimpleNode.A = null;
            z2 = true;
        }
        boolean z4 = !textStringSimpleNode.q.c(textStyle);
        textStringSimpleNode.q = textStyle;
        int i2 = textStringSimpleNode.v;
        int i3 = this.f6331h;
        if (i2 != i3) {
            textStringSimpleNode.v = i3;
            z4 = true;
        }
        int i4 = textStringSimpleNode.u;
        int i5 = this.g;
        if (i4 != i5) {
            textStringSimpleNode.u = i5;
            z4 = true;
        }
        boolean z5 = textStringSimpleNode.t;
        boolean z6 = this.f6330f;
        if (z5 != z6) {
            textStringSimpleNode.t = z6;
            z4 = true;
        }
        FontFamily.Resolver resolver = textStringSimpleNode.r;
        FontFamily.Resolver resolver2 = this.d;
        if (!Intrinsics.c(resolver, resolver2)) {
            textStringSimpleNode.r = resolver2;
            z4 = true;
        }
        int i6 = textStringSimpleNode.s;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        int i7 = this.f6329e;
        if (i6 == i7) {
            z3 = z4;
        } else {
            textStringSimpleNode.s = i7;
        }
        if (z2 || z3) {
            ParagraphLayoutCache paragraphLayoutCacheH2 = textStringSimpleNode.h2();
            String str3 = textStringSimpleNode.p;
            TextStyle textStyle3 = textStringSimpleNode.q;
            FontFamily.Resolver resolver3 = textStringSimpleNode.r;
            int i8 = textStringSimpleNode.s;
            boolean z7 = textStringSimpleNode.t;
            int i9 = textStringSimpleNode.u;
            int i10 = textStringSimpleNode.v;
            paragraphLayoutCacheH2.f6282a = str3;
            paragraphLayoutCacheH2.f6283b = textStyle3;
            paragraphLayoutCacheH2.f6284c = resolver3;
            paragraphLayoutCacheH2.d = i8;
            paragraphLayoutCacheH2.f6285e = z7;
            paragraphLayoutCacheH2.f6286f = i9;
            paragraphLayoutCacheH2.g = i10;
            LayoutCacheOperation.f6258a.getClass();
            paragraphLayoutCacheH2.s = LayoutCacheOperation.f6260c | (paragraphLayoutCacheH2.s << 2);
            paragraphLayoutCacheH2.c();
        }
        if (textStringSimpleNode.o) {
            if (z2 || (z && textStringSimpleNode.z != null)) {
                SemanticsModifierNodeKt.b(textStringSimpleNode);
            }
            if (z2 || z3) {
                DelegatableNodeKt.f(textStringSimpleNode).X();
                DrawModifierNodeKt.a(textStringSimpleNode);
            }
            if (z) {
                DrawModifierNodeKt.a(textStringSimpleNode);
            }
        }
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + pq0.e(this.f6328c, this.f6327b.hashCode() * 31, 31)) * 31;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        int iB = (((o60.b(tr.b(this.f6329e, iHashCode, 31), 31, this.f6330f) + this.g) * 31) + this.f6331h) * 31;
        ColorProducer colorProducer = this.f6332i;
        return iB + (colorProducer != null ? colorProducer.hashCode() : 0);
    }

    public TextStringSimpleElement(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, ColorProducer colorProducer, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6327b = str;
        this.f6328c = textStyle;
        this.d = resolver;
        this.f6329e = i2;
        this.f6330f = z;
        this.g = i3;
        this.f6331h = i4;
        this.f6332i = colorProducer;
    }
}
