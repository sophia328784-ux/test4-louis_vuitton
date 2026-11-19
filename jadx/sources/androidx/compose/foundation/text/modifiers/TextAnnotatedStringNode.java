package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.MultiParagraphLayoutCache;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import defpackage.a2;
import defpackage.a61;
import defpackage.hv0;
import defpackage.o60;
import defpackage.pq0;
import defpackage.x21;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001&BÓ\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0013\u0012\u0016\b\u0002\u0010\u0019\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0017\u0018\u00010\u0016\u0012\u001e\b\u0002\u0010\u001b\u001a\u0018\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 \u0012\u0016\b\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b¢\u0006\u0004\b$\u0010%¨\u0006'"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "", "onTextLayout", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "", "softWrap", "", "maxLines", "minLines", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "placeholders", "Landroidx/compose/ui/geometry/Rect;", "onPlaceholderLayout", "Landroidx/compose/foundation/text/modifiers/SelectionController;", "selectionController", "Landroidx/compose/ui/graphics/ColorProducer;", "overrideColor", "Landroidx/compose/foundation/text/TextAutoSize;", "autoSize", "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;", "onShowTranslation", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "TextSubstitutionValue", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextAnnotatedStringNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public ColorProducer A;
    public TextAutoSize B;
    public Function1 C;
    public Map D;
    public MultiParagraphLayoutCache E;
    public x21 F;
    public TextSubstitutionValue G;
    public AnnotatedString p;
    public TextStyle q;
    public FontFamily.Resolver r;
    public Function1 s;
    public int t;
    public boolean u;
    public int v;
    public int w;
    public List x;
    public Function1 y;
    public SelectionController z;

    /* JADX WARN: Illegal instructions before constructor call */
    public TextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i2, boolean z, int i3, int i4, List list, Function1 function2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, Function1 function3, int i5, DefaultConstructorMarker defaultConstructorMarker) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [x21] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        x21 x21Var = this.F;
        ?? r0 = x21Var;
        if (x21Var == null) {
            final int i2 = 0;
            ?? r1 = new Function1(this) { // from class: x21

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ TextAnnotatedStringNode f81003c;

                {
                    this.f81003c = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    TextLayoutResult textLayoutResult;
                    long jA;
                    boolean z;
                    int i3 = i2;
                    TextAnnotatedStringNode textAnnotatedStringNode = this.f81003c;
                    switch (i3) {
                        case 0:
                            List list = (List) obj;
                            TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.i2().o;
                            if (textLayoutResult2 != null) {
                                TextLayoutInput textLayoutInput = textLayoutResult2.f10552a;
                                AnnotatedString annotatedString = textLayoutInput.f10543a;
                                TextStyle textStyle = textAnnotatedStringNode.q;
                                ColorProducer colorProducer = textAnnotatedStringNode.A;
                                if (colorProducer != null) {
                                    jA = colorProducer.a();
                                } else {
                                    Color.f8866b.getClass();
                                    jA = Color.f8871i;
                                }
                                textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString, TextStyle.e(textStyle, jA, 0L, null, 0L, null, 0, 0L, 16777214), textLayoutInput.f10545c, textLayoutInput.d, textLayoutInput.f10546e, textLayoutInput.f10547f, textLayoutInput.g, textLayoutInput.f10548h, textLayoutInput.f10549i, textLayoutInput.f10550j, (DefaultConstructorMarker) null), textLayoutResult2.f10553b, textLayoutResult2.f10554c, null);
                                list.add(textLayoutResult);
                            } else {
                                textLayoutResult = null;
                            }
                            return Boolean.valueOf(textLayoutResult != null);
                        case 1:
                            AnnotatedString annotatedString2 = (AnnotatedString) obj;
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = textAnnotatedStringNode.G;
                            if (textSubstitutionValue == null) {
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.p, annotatedString2, false, null, 12, null);
                                MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString2, textAnnotatedStringNode.q, textAnnotatedStringNode.r, textAnnotatedStringNode.t, textAnnotatedStringNode.u, textAnnotatedStringNode.v, textAnnotatedStringNode.w, EmptyList.f71768b, textAnnotatedStringNode.B, null);
                                multiParagraphLayoutCache.d(textAnnotatedStringNode.i2().f6278k);
                                textSubstitutionValue2.d = multiParagraphLayoutCache;
                                textAnnotatedStringNode.G = textSubstitutionValue2;
                            } else if (!Intrinsics.c(annotatedString2, textSubstitutionValue.f6325b)) {
                                textSubstitutionValue.f6325b = annotatedString2;
                                MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue.d;
                                if (multiParagraphLayoutCache2 != null) {
                                    multiParagraphLayoutCache2.h(annotatedString2, textAnnotatedStringNode.q, textAnnotatedStringNode.r, textAnnotatedStringNode.t, textAnnotatedStringNode.u, textAnnotatedStringNode.v, textAnnotatedStringNode.w, EmptyList.f71768b, textAnnotatedStringNode.B);
                                }
                            }
                            SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                            DelegatableNodeKt.f(textAnnotatedStringNode).X();
                            DrawModifierNodeKt.a(textAnnotatedStringNode);
                            return Boolean.TRUE;
                        default:
                            boolean zBooleanValue = ((Boolean) obj).booleanValue();
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.G;
                            if (textSubstitutionValue3 == null) {
                                z = false;
                            } else {
                                Function1 function1 = textAnnotatedStringNode.C;
                                if (function1 != null) {
                                    function1.invoke(textSubstitutionValue3);
                                }
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.G;
                                if (textSubstitutionValue4 != null) {
                                    textSubstitutionValue4.f6326c = zBooleanValue;
                                }
                                SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                                DelegatableNodeKt.f(textAnnotatedStringNode).X();
                                DrawModifierNodeKt.a(textAnnotatedStringNode);
                                z = true;
                            }
                            return Boolean.valueOf(z);
                    }
                }
            };
            this.F = r1;
            r0 = r1;
        }
        SemanticsPropertiesKt.t(semanticsPropertyReceiver, this.p);
        TextSubstitutionValue textSubstitutionValue = this.G;
        if (textSubstitutionValue != null) {
            AnnotatedString annotatedString = textSubstitutionValue.f6325b;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.D;
            KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
            KProperty kProperty = kPropertyArr[16];
            semanticsPropertyKey.getClass();
            semanticsPropertyReceiver.a(semanticsPropertyKey, annotatedString);
            boolean z = textSubstitutionValue.f6326c;
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.E;
            KProperty kProperty2 = kPropertyArr[17];
            Boolean boolValueOf = Boolean.valueOf(z);
            semanticsPropertyKey2.getClass();
            semanticsPropertyReceiver.a(semanticsPropertyKey2, boolValueOf);
        }
        final int i3 = 1;
        semanticsPropertyReceiver.a(SemanticsActions.l, new AccessibilityAction(null, new Function1(this) { // from class: x21

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TextAnnotatedStringNode f81003c;

            {
                this.f81003c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TextLayoutResult textLayoutResult;
                long jA;
                boolean z2;
                int i4 = i3;
                TextAnnotatedStringNode textAnnotatedStringNode = this.f81003c;
                switch (i4) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.i2().o;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.f10552a;
                            AnnotatedString annotatedString2 = textLayoutInput.f10543a;
                            TextStyle textStyle = textAnnotatedStringNode.q;
                            ColorProducer colorProducer = textAnnotatedStringNode.A;
                            if (colorProducer != null) {
                                jA = colorProducer.a();
                            } else {
                                Color.f8866b.getClass();
                                jA = Color.f8871i;
                            }
                            textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString2, TextStyle.e(textStyle, jA, 0L, null, 0L, null, 0, 0L, 16777214), textLayoutInput.f10545c, textLayoutInput.d, textLayoutInput.f10546e, textLayoutInput.f10547f, textLayoutInput.g, textLayoutInput.f10548h, textLayoutInput.f10549i, textLayoutInput.f10550j, (DefaultConstructorMarker) null), textLayoutResult2.f10553b, textLayoutResult2.f10554c, null);
                            list.add(textLayoutResult);
                        } else {
                            textLayoutResult = null;
                        }
                        return Boolean.valueOf(textLayoutResult != null);
                    case 1:
                        AnnotatedString annotatedString3 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.G;
                        if (textSubstitutionValue2 == null) {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.p, annotatedString3, false, null, 12, null);
                            MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString3, textAnnotatedStringNode.q, textAnnotatedStringNode.r, textAnnotatedStringNode.t, textAnnotatedStringNode.u, textAnnotatedStringNode.v, textAnnotatedStringNode.w, EmptyList.f71768b, textAnnotatedStringNode.B, null);
                            multiParagraphLayoutCache.d(textAnnotatedStringNode.i2().f6278k);
                            textSubstitutionValue3.d = multiParagraphLayoutCache;
                            textAnnotatedStringNode.G = textSubstitutionValue3;
                        } else if (!Intrinsics.c(annotatedString3, textSubstitutionValue2.f6325b)) {
                            textSubstitutionValue2.f6325b = annotatedString3;
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue2.d;
                            if (multiParagraphLayoutCache2 != null) {
                                multiParagraphLayoutCache2.h(annotatedString3, textAnnotatedStringNode.q, textAnnotatedStringNode.r, textAnnotatedStringNode.t, textAnnotatedStringNode.u, textAnnotatedStringNode.v, textAnnotatedStringNode.w, EmptyList.f71768b, textAnnotatedStringNode.B);
                            }
                        }
                        SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                        DelegatableNodeKt.f(textAnnotatedStringNode).X();
                        DrawModifierNodeKt.a(textAnnotatedStringNode);
                        return Boolean.TRUE;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.G;
                        if (textSubstitutionValue4 == null) {
                            z2 = false;
                        } else {
                            Function1 function1 = textAnnotatedStringNode.C;
                            if (function1 != null) {
                                function1.invoke(textSubstitutionValue4);
                            }
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue5 = textAnnotatedStringNode.G;
                            if (textSubstitutionValue5 != null) {
                                textSubstitutionValue5.f6326c = zBooleanValue;
                            }
                            SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                            DelegatableNodeKt.f(textAnnotatedStringNode).X();
                            DrawModifierNodeKt.a(textAnnotatedStringNode);
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        final int i4 = 2;
        semanticsPropertyReceiver.a(SemanticsActions.m, new AccessibilityAction(null, new Function1(this) { // from class: x21

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TextAnnotatedStringNode f81003c;

            {
                this.f81003c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TextLayoutResult textLayoutResult;
                long jA;
                boolean z2;
                int i5 = i4;
                TextAnnotatedStringNode textAnnotatedStringNode = this.f81003c;
                switch (i5) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.i2().o;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.f10552a;
                            AnnotatedString annotatedString2 = textLayoutInput.f10543a;
                            TextStyle textStyle = textAnnotatedStringNode.q;
                            ColorProducer colorProducer = textAnnotatedStringNode.A;
                            if (colorProducer != null) {
                                jA = colorProducer.a();
                            } else {
                                Color.f8866b.getClass();
                                jA = Color.f8871i;
                            }
                            textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString2, TextStyle.e(textStyle, jA, 0L, null, 0L, null, 0, 0L, 16777214), textLayoutInput.f10545c, textLayoutInput.d, textLayoutInput.f10546e, textLayoutInput.f10547f, textLayoutInput.g, textLayoutInput.f10548h, textLayoutInput.f10549i, textLayoutInput.f10550j, (DefaultConstructorMarker) null), textLayoutResult2.f10553b, textLayoutResult2.f10554c, null);
                            list.add(textLayoutResult);
                        } else {
                            textLayoutResult = null;
                        }
                        return Boolean.valueOf(textLayoutResult != null);
                    case 1:
                        AnnotatedString annotatedString3 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.G;
                        if (textSubstitutionValue2 == null) {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.p, annotatedString3, false, null, 12, null);
                            MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString3, textAnnotatedStringNode.q, textAnnotatedStringNode.r, textAnnotatedStringNode.t, textAnnotatedStringNode.u, textAnnotatedStringNode.v, textAnnotatedStringNode.w, EmptyList.f71768b, textAnnotatedStringNode.B, null);
                            multiParagraphLayoutCache.d(textAnnotatedStringNode.i2().f6278k);
                            textSubstitutionValue3.d = multiParagraphLayoutCache;
                            textAnnotatedStringNode.G = textSubstitutionValue3;
                        } else if (!Intrinsics.c(annotatedString3, textSubstitutionValue2.f6325b)) {
                            textSubstitutionValue2.f6325b = annotatedString3;
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue2.d;
                            if (multiParagraphLayoutCache2 != null) {
                                multiParagraphLayoutCache2.h(annotatedString3, textAnnotatedStringNode.q, textAnnotatedStringNode.r, textAnnotatedStringNode.t, textAnnotatedStringNode.u, textAnnotatedStringNode.v, textAnnotatedStringNode.w, EmptyList.f71768b, textAnnotatedStringNode.B);
                            }
                        }
                        SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                        DelegatableNodeKt.f(textAnnotatedStringNode).X();
                        DrawModifierNodeKt.a(textAnnotatedStringNode);
                        return Boolean.TRUE;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.G;
                        if (textSubstitutionValue4 == null) {
                            z2 = false;
                        } else {
                            Function1 function1 = textAnnotatedStringNode.C;
                            if (function1 != null) {
                                function1.invoke(textSubstitutionValue4);
                            }
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue5 = textAnnotatedStringNode.G;
                            if (textSubstitutionValue5 != null) {
                                textSubstitutionValue5.f6326c = zBooleanValue;
                            }
                            SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                            DelegatableNodeKt.f(textAnnotatedStringNode).X();
                            DrawModifierNodeKt.a(textAnnotatedStringNode);
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        semanticsPropertyReceiver.a(SemanticsActions.n, new AccessibilityAction(null, new hv0(this, 10)));
        SemanticsPropertiesKt.c(semanticsPropertyReceiver, r0);
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        Trace.beginSection("TextAnnotatedStringNode:measure");
        try {
            MultiParagraphLayoutCache multiParagraphLayoutCacheJ2 = j2(measureScope);
            boolean zC = multiParagraphLayoutCacheJ2.c(j2, measureScope.getF9421c());
            TextLayoutResult textLayoutResult = multiParagraphLayoutCacheJ2.o;
            if (textLayoutResult == null) {
                throw new IllegalStateException("Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: " + multiParagraphLayoutCacheJ2);
            }
            long j3 = textLayoutResult.f10554c;
            textLayoutResult.f10553b.f10461a.a();
            if (zC) {
                DelegatableNodeKt.d(this, 2).H1();
                Function1 function1 = this.s;
                if (function1 != null) {
                    function1.invoke(textLayoutResult);
                }
                SelectionController selectionController = this.z;
                if (selectionController != null) {
                    TextLayoutResult textLayoutResult2 = selectionController.f6301e.f6315b;
                    if (textLayoutResult2 != null && !Intrinsics.c(textLayoutResult2.f10552a.f10543a, textLayoutResult.f10552a.f10543a)) {
                        selectionController.f6300c.d();
                    }
                    selectionController.f6301e = StaticTextSelectionParams.a(selectionController.f6301e, null, textLayoutResult, 1);
                }
                Map linkedHashMap = this.D;
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap(2);
                }
                linkedHashMap.put(AlignmentLineKt.f9416a, Integer.valueOf(Math.round(textLayoutResult.d)));
                linkedHashMap.put(AlignmentLineKt.f9417b, Integer.valueOf(Math.round(textLayoutResult.f10555e)));
                this.D = linkedHashMap;
            }
            Function1 function2 = this.y;
            if (function2 != null) {
                function2.invoke(textLayoutResult.f10556f);
            }
            Constraints.Companion companion = Constraints.f10998b;
            int i2 = (int) (j3 >> 32);
            int i3 = (int) (j3 & BodyPartID.bodyIdMax);
            companion.getClass();
            Placeable placeableT = measurable.T(Constraints.Companion.b(i2, i2, i3, i3));
            Map map = this.D;
            map.getClass();
            MeasureResult measureResultV0 = measureScope.V0(i2, i3, map, new a2(placeableT, 17));
            Trace.endSection();
            return measureResultV0;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return TextDelegateKt.a(j2(lookaheadCapablePlaceable).e(lookaheadCapablePlaceable.getF9421c()).c());
    }

    public final void h2(boolean z, boolean z2, boolean z3, boolean z4) {
        if (z2 || z3 || z4) {
            i2().h(this.p, this.q, this.r, this.t, this.u, this.v, this.w, this.x, this.B);
        }
        if (this.o) {
            if (z2 || (z && this.F != null)) {
                SemanticsModifierNodeKt.b(this);
            }
            if (z2 || z3 || z4) {
                DelegatableNodeKt.f(this).X();
                DrawModifierNodeKt.a(this);
            }
            if (z) {
                DrawModifierNodeKt.a(this);
            }
        }
    }

    public final MultiParagraphLayoutCache i2() {
        if (this.E == null) {
            this.E = new MultiParagraphLayoutCache(this.p, this.q, this.r, this.t, this.u, this.v, this.w, this.x, this.B, null);
        }
        MultiParagraphLayoutCache multiParagraphLayoutCache = this.E;
        multiParagraphLayoutCache.getClass();
        return multiParagraphLayoutCache;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f8  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) throws Throwable {
        boolean z;
        long jB;
        List list;
        Selection selection;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1;
        long j2;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        if (this.o) {
            SelectionController selectionController = this.z;
            boolean zD = false;
            if (selectionController != null && (selection = (Selection) selectionController.f6300c.e().b(selectionController.f6299b)) != null) {
                Selection.AnchorInfo anchorInfo = selection.f6392b;
                Selection.AnchorInfo anchorInfo2 = selection.f6391a;
                boolean z2 = selection.f6393c;
                int i2 = !z2 ? anchorInfo2.f6395b : anchorInfo.f6395b;
                int i3 = !z2 ? anchorInfo.f6395b : anchorInfo2.f6395b;
                if (i2 != i3) {
                    Selectable selectable = selectionController.f6302f;
                    int iA = selectable != null ? selectable.a() : 0;
                    if (i2 > iA) {
                        i2 = iA;
                    }
                    if (i3 > iA) {
                        i3 = iA;
                    }
                    TextLayoutResult textLayoutResult = selectionController.f6301e.f6315b;
                    AndroidPath androidPathJ = textLayoutResult != null ? textLayoutResult.j(i2, i3) : null;
                    if (androidPathJ != null) {
                        TextLayoutResult textLayoutResult2 = selectionController.f6301e.f6315b;
                        if (textLayoutResult2 != null) {
                            int i4 = textLayoutResult2.f10552a.f10547f;
                            TextOverflow.f10989a.getClass();
                            if (i4 != TextOverflow.d && textLayoutResult2.e()) {
                                float fIntBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.b() >> 32));
                                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax));
                                ClipOp.f8864a.getClass();
                                int i5 = ClipOp.f8865b;
                                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$2 = canvasDrawScope.f8996c;
                                long jD = canvasDrawScope$drawContext$2.d();
                                canvasDrawScope$drawContext$2.a().p();
                                try {
                                    canvasDrawScope$drawContext$2.f9001a.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat, fIntBitsToFloat2, i5);
                                    canvasDrawScope$drawContext$1 = canvasDrawScope$drawContext$2;
                                    try {
                                        j2 = jD;
                                        try {
                                            DrawScope.U(layoutNodeDrawScope, androidPathJ, selectionController.d, null, 60);
                                            pq0.y(canvasDrawScope$drawContext$1, j2);
                                        } catch (Throwable th) {
                                            th = th;
                                            pq0.y(canvasDrawScope$drawContext$1, j2);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        j2 = jD;
                                        pq0.y(canvasDrawScope$drawContext$1, j2);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    canvasDrawScope$drawContext$1 = canvasDrawScope$drawContext$2;
                                }
                            } else {
                                DrawScope.U(layoutNodeDrawScope, androidPathJ, selectionController.d, null, 60);
                            }
                        } else {
                            DrawScope.U(layoutNodeDrawScope, androidPathJ, selectionController.d, null, 60);
                        }
                    }
                }
            }
            Canvas canvasA = canvasDrawScope.f8996c.a();
            MultiParagraphLayoutCache multiParagraphLayoutCacheJ2 = j2(layoutNodeDrawScope);
            TextLayoutResult textLayoutResult3 = multiParagraphLayoutCacheJ2.o;
            if (textLayoutResult3 == null) {
                a61.q(multiParagraphLayoutCacheJ2, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: ");
                return;
            }
            MultiParagraph multiParagraph = textLayoutResult3.f10553b;
            if (textLayoutResult3.e()) {
                int i6 = this.t;
                TextOverflow.f10989a.getClass();
                if (i6 == TextOverflow.d) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            if (z) {
                long j3 = textLayoutResult3.f10554c;
                float f2 = (int) (j3 >> 32);
                float f3 = (int) (j3 & BodyPartID.bodyIdMax);
                Offset.f8806b.getClass();
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
                Size.Companion companion = Size.f8820b;
                Rect rectA = RectKt.a(0L, jFloatToRawIntBits);
                canvasA.p();
                Canvas.g(canvasA, rectA);
            }
            try {
                TextDecoration textDecoration = this.q.f10568a.background;
                if (textDecoration == null) {
                    TextDecoration.f10965b.getClass();
                    textDecoration = TextDecoration.f10966c;
                }
                TextDecoration textDecoration2 = textDecoration;
                Shadow shadow = this.q.f10568a.shadow;
                if (shadow == null) {
                    Shadow.d.getClass();
                    shadow = Shadow.f8925e;
                }
                Shadow shadow2 = shadow;
                SpanStyle spanStyle = this.q.f10568a;
                DrawStyle drawStyle = spanStyle.drawStyle;
                if (drawStyle == null) {
                    drawStyle = Fill.f9010a;
                }
                DrawStyle drawStyle2 = drawStyle;
                Brush brushE = spanStyle.f10522a.e();
                if (brushE != null) {
                    MultiParagraph.j(multiParagraph, canvasA, brushE, this.q.f10568a.f10522a.getF10926b(), shadow2, textDecoration2, drawStyle2);
                } else {
                    ColorProducer colorProducer = this.A;
                    if (colorProducer != null) {
                        jB = colorProducer.a();
                    } else {
                        Color.f8866b.getClass();
                        jB = Color.f8871i;
                    }
                    if (jB == 16) {
                        if (this.q.b() != 16) {
                            jB = this.q.b();
                        } else {
                            Color.f8866b.getClass();
                            jB = Color.f8867c;
                        }
                    }
                    MultiParagraph.i(multiParagraph, canvasA, jB, shadow2, textDecoration2, drawStyle2);
                }
                if (z) {
                    canvasA.restore();
                }
                TextSubstitutionValue textSubstitutionValue = this.G;
                if (textSubstitutionValue == null || !textSubstitutionValue.f6326c) {
                    AnnotatedString annotatedString = this.p;
                    zD = annotatedString.d(annotatedString.f10420c.length());
                }
                if (zD || !((list = this.x) == null || list.isEmpty())) {
                    layoutNodeDrawScope.R1();
                }
            } catch (Throwable th4) {
                if (z) {
                    canvasA.restore();
                }
                throw th4;
            }
        }
    }

    public final MultiParagraphLayoutCache j2(Density density) {
        MultiParagraphLayoutCache multiParagraphLayoutCache;
        TextSubstitutionValue textSubstitutionValue = this.G;
        if (textSubstitutionValue != null && textSubstitutionValue.f6326c && (multiParagraphLayoutCache = textSubstitutionValue.d) != null) {
            multiParagraphLayoutCache.d(density);
            return multiParagraphLayoutCache;
        }
        MultiParagraphLayoutCache multiParagraphLayoutCacheI2 = i2();
        multiParagraphLayoutCacheI2.d(density);
        return multiParagraphLayoutCacheI2;
    }

    public final boolean k2(Function1 function1, Function1 function2, SelectionController selectionController, Function1 function3) {
        boolean z;
        if (this.s != function1) {
            this.s = function1;
            z = true;
        } else {
            z = false;
        }
        if (this.y != function2) {
            this.y = function2;
            z = true;
        }
        if (!Intrinsics.c(this.z, selectionController)) {
            this.z = selectionController;
            z = true;
        }
        if (this.C == function3) {
            return z;
        }
        this.C = function3;
        return true;
    }

    public final boolean l2(TextStyle textStyle, List list, int i2, int i3, boolean z, FontFamily.Resolver resolver, int i4, TextAutoSize textAutoSize) {
        boolean z2 = !this.q.c(textStyle);
        this.q = textStyle;
        if (!Intrinsics.c(this.x, list)) {
            this.x = list;
            z2 = true;
        }
        if (this.w != i2) {
            this.w = i2;
            z2 = true;
        }
        if (this.v != i3) {
            this.v = i3;
            z2 = true;
        }
        if (this.u != z) {
            this.u = z;
            z2 = true;
        }
        if (!Intrinsics.c(this.r, resolver)) {
            this.r = resolver;
            z2 = true;
        }
        int i5 = this.t;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        if (i5 != i4) {
            this.t = i4;
            z2 = true;
        }
        if (Intrinsics.c(this.B, textAutoSize)) {
            return z2;
        }
        this.B = textAutoSize;
        return true;
    }

    public final boolean m2(AnnotatedString annotatedString) {
        boolean zC = Intrinsics.c(this.p.f10420c, annotatedString.f10420c);
        boolean z = (zC && Intrinsics.c(this.p.f10419b, annotatedString.f10419b)) ? false : true;
        if (z) {
            this.p = annotatedString;
        }
        if (!zC) {
            this.G = null;
        }
        return z;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return j2(lookaheadCapablePlaceable).a(i2, lookaheadCapablePlaceable.getF9421c());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return TextDelegateKt.a(j2(lookaheadCapablePlaceable).e(lookaheadCapablePlaceable.getF9421c()).b());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return j2(lookaheadCapablePlaceable).a(i2, lookaheadCapablePlaceable.getF9421c());
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;", "", "Landroidx/compose/ui/text/AnnotatedString;", "original", "substitution", "", "isShowingSubstitution", "Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;", "layoutCache", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class TextSubstitutionValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AnnotatedString f6324a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AnnotatedString f6325b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f6326c;
        public MultiParagraphLayoutCache d;

        public /* synthetic */ TextSubstitutionValue(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z, MultiParagraphLayoutCache multiParagraphLayoutCache, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(annotatedString, annotatedString2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? null : multiParagraphLayoutCache);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TextSubstitutionValue)) {
                return false;
            }
            TextSubstitutionValue textSubstitutionValue = (TextSubstitutionValue) obj;
            return Intrinsics.c(this.f6324a, textSubstitutionValue.f6324a) && Intrinsics.c(this.f6325b, textSubstitutionValue.f6325b) && this.f6326c == textSubstitutionValue.f6326c && Intrinsics.c(this.d, textSubstitutionValue.d);
        }

        public final int hashCode() {
            int iB = o60.b((this.f6325b.hashCode() + (this.f6324a.hashCode() * 31)) * 31, 31, this.f6326c);
            MultiParagraphLayoutCache multiParagraphLayoutCache = this.d;
            return iB + (multiParagraphLayoutCache == null ? 0 : multiParagraphLayoutCache.hashCode());
        }

        public final String toString() {
            return "TextSubstitutionValue(original=" + ((Object) this.f6324a) + ", substitution=" + ((Object) this.f6325b) + ", isShowingSubstitution=" + this.f6326c + ", layoutCache=" + this.d + ')';
        }

        public TextSubstitutionValue(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z, MultiParagraphLayoutCache multiParagraphLayoutCache) {
            this.f6324a = annotatedString;
            this.f6325b = annotatedString2;
            this.f6326c = z;
            this.d = multiParagraphLayoutCache;
        }
    }

    public TextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i2, boolean z, int i3, int i4, List list, Function1 function2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, Function1 function3, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = annotatedString;
        this.q = textStyle;
        this.r = resolver;
        this.s = function1;
        this.t = i2;
        this.u = z;
        this.v = i3;
        this.w = i4;
        this.x = list;
        this.y = function2;
        this.z = selectionController;
        this.A = colorProducer;
        this.B = textAutoSize;
        this.C = function3;
    }
}
