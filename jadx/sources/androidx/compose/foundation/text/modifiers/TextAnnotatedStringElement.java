package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BÓ\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0011\u0012\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0015\u0018\u00010\u0014\u0012\u001e\b\u0002\u0010\u0019\u001a\u0018\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0014\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0016\b\u0002\u0010!\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u000b\u0018\u00010\t¢\u0006\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "", "onTextLayout", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "", "softWrap", "", "maxLines", "minLines", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/ui/geometry/Rect;", "onPlaceholderLayout", "Landroidx/compose/foundation/text/modifiers/SelectionController;", "selectionController", "Landroidx/compose/ui/graphics/ColorProducer;", "color", "Landroidx/compose/foundation/text/TextAutoSize;", "autoSize", "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;", "onShowTranslation", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextAnnotatedStringElement extends ModifierNodeElement<TextAnnotatedStringNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnnotatedString f6316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f6317c;
    public final FontFamily.Resolver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f6318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6319f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f6321i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f6322j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Function1 f6323k;
    public final SelectionController l;
    public final ColorProducer m;
    public final TextAutoSize n;
    public final Function1 o;

    /* JADX WARN: Illegal instructions before constructor call */
    public TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i2, boolean z, int i3, int i4, List list, Function1 function2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, Function1 function3, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        Function1 function4 = (i5 & 8) != 0 ? null : function1;
        if ((i5 & 16) != 0) {
            TextOverflow.f10989a.getClass();
            i6 = TextOverflow.f10990b;
        } else {
            i6 = i2;
        }
        this(annotatedString, textStyle, resolver, function4, i6, (i5 & 32) != 0 ? true : z, (i5 & 64) != 0 ? Integer.MAX_VALUE : i3, (i5 & 128) != 0 ? 1 : i4, (i5 & 256) != 0 ? null : list, (i5 & 512) != 0 ? null : function2, (i5 & 1024) != 0 ? null : selectionController, (i5 & 2048) != 0 ? null : colorProducer, (i5 & 4096) != 0 ? null : textAutoSize, (i5 & 8192) != 0 ? null : function3, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new TextAnnotatedStringNode(this.f6316b, this.f6317c, this.d, this.f6318e, this.f6319f, this.g, this.f6320h, this.f6321i, this.f6322j, this.f6323k, this.l, this.m, this.n, this.o, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextAnnotatedStringElement)) {
            return false;
        }
        TextAnnotatedStringElement textAnnotatedStringElement = (TextAnnotatedStringElement) obj;
        if (!Intrinsics.c(this.m, textAnnotatedStringElement.m) || !Intrinsics.c(this.f6316b, textAnnotatedStringElement.f6316b) || !Intrinsics.c(this.f6317c, textAnnotatedStringElement.f6317c) || !Intrinsics.c(this.f6322j, textAnnotatedStringElement.f6322j) || !Intrinsics.c(this.d, textAnnotatedStringElement.d) || this.f6318e != textAnnotatedStringElement.f6318e || this.o != textAnnotatedStringElement.o) {
            return false;
        }
        int i2 = textAnnotatedStringElement.f6319f;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        return this.f6319f == i2 && this.g == textAnnotatedStringElement.g && this.f6320h == textAnnotatedStringElement.f6320h && this.f6321i == textAnnotatedStringElement.f6321i && this.f6323k == textAnnotatedStringElement.f6323k && Intrinsics.c(this.l, textAnnotatedStringElement.l);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        boolean z;
        TextAnnotatedStringNode textAnnotatedStringNode = (TextAnnotatedStringNode) node;
        ColorProducer colorProducer = textAnnotatedStringNode.A;
        ColorProducer colorProducer2 = this.m;
        boolean zC = Intrinsics.c(colorProducer2, colorProducer);
        textAnnotatedStringNode.A = colorProducer2;
        if (zC) {
            TextStyle textStyle = textAnnotatedStringNode.q;
            TextStyle textStyle2 = this.f6317c;
            if (textStyle2 == textStyle) {
                textStyle2.getClass();
            } else if (!textStyle2.f10568a.c(textStyle.f10568a)) {
                z = true;
            }
            z = false;
        } else {
            z = true;
        }
        textAnnotatedStringNode.h2(z, textAnnotatedStringNode.m2(this.f6316b), textAnnotatedStringNode.l2(this.f6317c, this.f6322j, this.f6321i, this.f6320h, this.g, this.d, this.f6319f, this.n), textAnnotatedStringNode.k2(this.f6318e, this.f6323k, this.l, this.o));
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + pq0.e(this.f6317c, this.f6316b.hashCode() * 31, 31)) * 31;
        Function1 function1 = this.f6318e;
        int iHashCode2 = (iHashCode + (function1 != null ? function1.hashCode() : 0)) * 31;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        int iB = (((o60.b(tr.b(this.f6319f, iHashCode2, 31), 31, this.g) + this.f6320h) * 31) + this.f6321i) * 31;
        List list = this.f6322j;
        int iHashCode3 = (iB + (list != null ? list.hashCode() : 0)) * 31;
        Function1 function2 = this.f6323k;
        int iHashCode4 = (iHashCode3 + (function2 != null ? function2.hashCode() : 0)) * 31;
        SelectionController selectionController = this.l;
        int iHashCode5 = (iHashCode4 + (selectionController != null ? selectionController.hashCode() : 0)) * 31;
        ColorProducer colorProducer = this.m;
        int iHashCode6 = (iHashCode5 + (colorProducer != null ? colorProducer.hashCode() : 0)) * 31;
        Function1 function3 = this.o;
        return iHashCode6 + (function3 != null ? function3.hashCode() : 0);
    }

    public TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i2, boolean z, int i3, int i4, List list, Function1 function2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, Function1 function3, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6316b = annotatedString;
        this.f6317c = textStyle;
        this.d = resolver;
        this.f6318e = function1;
        this.f6319f = i2;
        this.g = z;
        this.f6320h = i3;
        this.f6321i = i4;
        this.f6322j = list;
        this.f6323k = function2;
        this.l = selectionController;
        this.m = colorProducer;
        this.n = textAutoSize;
        this.o = function3;
    }
}
