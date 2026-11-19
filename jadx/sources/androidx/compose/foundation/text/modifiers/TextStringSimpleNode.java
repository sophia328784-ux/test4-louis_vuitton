package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.LayoutCacheOperation;
import androidx.compose.foundation.text.modifiers.ParagraphLayoutCache;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shadow;
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
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a2;
import defpackage.d21;
import defpackage.fc;
import defpackage.hv0;
import defpackage.k31;
import defpackage.o60;
import defpackage.os;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0016BS\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "", "text", "Landroidx/compose/ui/text/TextStyle;", "style", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontFamilyResolver", "Landroidx/compose/ui/text/style/TextOverflow;", "overflow", "", "softWrap", "", "maxLines", "minLines", "Landroidx/compose/ui/graphics/ColorProducer;", "overrideColor", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "TextSubstitutionValue", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextStringSimpleNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public TextSubstitutionValue A;
    public String p;
    public TextStyle q;
    public FontFamily.Resolver r;
    public int s;
    public boolean t;
    public int u;
    public int v;
    public ColorProducer w;
    public HashMap x;
    public ParagraphLayoutCache y;
    public k31 z;

    /* JADX WARN: Illegal instructions before constructor call */
    public TextStringSimpleNode(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, ColorProducer colorProducer, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        if ((i5 & 8) != 0) {
            TextOverflow.f10989a.getClass();
            i6 = TextOverflow.f10990b;
        } else {
            i6 = i2;
        }
        this(str, textStyle, resolver, i6, (i5 & 16) != 0 ? true : z, (i5 & 32) != 0 ? Integer.MAX_VALUE : i3, (i5 & 64) != 0 ? 1 : i4, (i5 & 128) != 0 ? null : colorProducer, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [k31] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        k31 k31Var = this.z;
        ?? r0 = k31Var;
        if (k31Var == null) {
            final int i2 = 0;
            ?? r1 = new Function1(this) { // from class: k31

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ TextStringSimpleNode f71551c;

                {
                    this.f71551c = this;
                }

                /* JADX WARN: Code duplicated, block: B:27:0x00e0  */
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long jA;
                    Density density;
                    TextLayoutResult textLayoutResult;
                    int i3 = i2;
                    boolean z = true;
                    TextStringSimpleNode textStringSimpleNode = this.f71551c;
                    switch (i3) {
                        case 0:
                            List list = (List) obj;
                            ParagraphLayoutCache paragraphLayoutCacheH2 = textStringSimpleNode.h2();
                            TextStyle textStyle = textStringSimpleNode.q;
                            ColorProducer colorProducer = textStringSimpleNode.w;
                            if (colorProducer != null) {
                                jA = colorProducer.a();
                            } else {
                                Color.f8866b.getClass();
                                jA = Color.f8871i;
                            }
                            TextStyle textStyleE = TextStyle.e(textStyle, jA, 0L, null, 0L, null, 0, 0L, 16777214);
                            LayoutDirection layoutDirection = paragraphLayoutCacheH2.o;
                            TextLayoutResult textLayoutResult2 = null;
                            if (layoutDirection == null || (density = paragraphLayoutCacheH2.f6288i) == null) {
                                textLayoutResult = null;
                            } else {
                                AnnotatedString annotatedString = new AnnotatedString(paragraphLayoutCacheH2.f6282a, null, 2, null);
                                if (paragraphLayoutCacheH2.f6289j == null || paragraphLayoutCacheH2.n == null) {
                                    textLayoutResult = null;
                                } else {
                                    long j2 = paragraphLayoutCacheH2.p & (-8589934589L);
                                    Constraints.Companion companion = Constraints.f10998b;
                                    EmptyList emptyList = EmptyList.f71768b;
                                    textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString, textStyleE, emptyList, paragraphLayoutCacheH2.f6286f, paragraphLayoutCacheH2.f6285e, paragraphLayoutCacheH2.d, density, layoutDirection, paragraphLayoutCacheH2.f6284c, j2, (DefaultConstructorMarker) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString, textStyleE, emptyList, density, paragraphLayoutCacheH2.f6284c), j2, paragraphLayoutCacheH2.f6286f, paragraphLayoutCacheH2.d, (DefaultConstructorMarker) null), paragraphLayoutCacheH2.l, null);
                                }
                            }
                            if (textLayoutResult != null) {
                                list.add(textLayoutResult);
                                textLayoutResult2 = textLayoutResult;
                            }
                            return Boolean.valueOf(textLayoutResult2 != null);
                        case 1:
                            String str = ((AnnotatedString) obj).f10420c;
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue = textStringSimpleNode.A;
                            if (textSubstitutionValue == null) {
                                TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue2 = new TextStringSimpleNode.TextSubstitutionValue(textStringSimpleNode.p, str, false, null, 12, null);
                                ParagraphLayoutCache paragraphLayoutCache = new ParagraphLayoutCache(str, textStringSimpleNode.q, textStringSimpleNode.r, textStringSimpleNode.s, textStringSimpleNode.t, textStringSimpleNode.u, textStringSimpleNode.v, null);
                                paragraphLayoutCache.d(textStringSimpleNode.h2().f6288i);
                                textSubstitutionValue2.d = paragraphLayoutCache;
                                textStringSimpleNode.A = textSubstitutionValue2;
                            } else if (!Intrinsics.c(str, textSubstitutionValue.f6334b)) {
                                textSubstitutionValue.f6334b = str;
                                ParagraphLayoutCache paragraphLayoutCache2 = textSubstitutionValue.d;
                                if (paragraphLayoutCache2 != null) {
                                    TextStyle textStyle2 = textStringSimpleNode.q;
                                    FontFamily.Resolver resolver = textStringSimpleNode.r;
                                    int i4 = textStringSimpleNode.s;
                                    boolean z2 = textStringSimpleNode.t;
                                    int i5 = textStringSimpleNode.u;
                                    int i6 = textStringSimpleNode.v;
                                    paragraphLayoutCache2.f6282a = str;
                                    paragraphLayoutCache2.f6283b = textStyle2;
                                    paragraphLayoutCache2.f6284c = resolver;
                                    paragraphLayoutCache2.d = i4;
                                    paragraphLayoutCache2.f6285e = z2;
                                    paragraphLayoutCache2.f6286f = i5;
                                    paragraphLayoutCache2.g = i6;
                                    LayoutCacheOperation.f6258a.getClass();
                                    paragraphLayoutCache2.s = (paragraphLayoutCache2.s << 2) | LayoutCacheOperation.f6260c;
                                    paragraphLayoutCache2.c();
                                }
                            }
                            SemanticsModifierNodeKt.b(textStringSimpleNode);
                            DelegatableNodeKt.f(textStringSimpleNode).X();
                            DrawModifierNodeKt.a(textStringSimpleNode);
                            return Boolean.TRUE;
                        default:
                            boolean zBooleanValue = ((Boolean) obj).booleanValue();
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue3 = textStringSimpleNode.A;
                            if (textSubstitutionValue3 == null) {
                                z = false;
                            } else {
                                textSubstitutionValue3.f6335c = zBooleanValue;
                                SemanticsModifierNodeKt.b(textStringSimpleNode);
                                DelegatableNodeKt.f(textStringSimpleNode).X();
                                DrawModifierNodeKt.a(textStringSimpleNode);
                            }
                            return Boolean.valueOf(z);
                    }
                }
            };
            this.z = r1;
            r0 = r1;
        }
        final int i3 = 2;
        SemanticsPropertiesKt.t(semanticsPropertyReceiver, new AnnotatedString(this.p, null, 2, null));
        TextSubstitutionValue textSubstitutionValue = this.A;
        if (textSubstitutionValue != null) {
            boolean z = textSubstitutionValue.f6335c;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.E;
            KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
            KProperty kProperty = kPropertyArr[17];
            Boolean boolValueOf = Boolean.valueOf(z);
            semanticsPropertyKey.getClass();
            semanticsPropertyReceiver.a(semanticsPropertyKey, boolValueOf);
            AnnotatedString annotatedString = new AnnotatedString(textSubstitutionValue.f6334b, null, 2, null);
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.D;
            KProperty kProperty2 = kPropertyArr[16];
            semanticsPropertyKey2.getClass();
            semanticsPropertyReceiver.a(semanticsPropertyKey2, annotatedString);
        }
        final int i4 = 1;
        semanticsPropertyReceiver.a(SemanticsActions.l, new AccessibilityAction(null, new Function1(this) { // from class: k31

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TextStringSimpleNode f71551c;

            {
                this.f71551c = this;
            }

            /* JADX WARN: Code duplicated, block: B:27:0x00e0  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long jA;
                Density density;
                TextLayoutResult textLayoutResult;
                int i5 = i4;
                boolean z2 = true;
                TextStringSimpleNode textStringSimpleNode = this.f71551c;
                switch (i5) {
                    case 0:
                        List list = (List) obj;
                        ParagraphLayoutCache paragraphLayoutCacheH2 = textStringSimpleNode.h2();
                        TextStyle textStyle = textStringSimpleNode.q;
                        ColorProducer colorProducer = textStringSimpleNode.w;
                        if (colorProducer != null) {
                            jA = colorProducer.a();
                        } else {
                            Color.f8866b.getClass();
                            jA = Color.f8871i;
                        }
                        TextStyle textStyleE = TextStyle.e(textStyle, jA, 0L, null, 0L, null, 0, 0L, 16777214);
                        LayoutDirection layoutDirection = paragraphLayoutCacheH2.o;
                        TextLayoutResult textLayoutResult2 = null;
                        if (layoutDirection == null || (density = paragraphLayoutCacheH2.f6288i) == null) {
                            textLayoutResult = null;
                        } else {
                            AnnotatedString annotatedString2 = new AnnotatedString(paragraphLayoutCacheH2.f6282a, null, 2, null);
                            if (paragraphLayoutCacheH2.f6289j == null || paragraphLayoutCacheH2.n == null) {
                                textLayoutResult = null;
                            } else {
                                long j2 = paragraphLayoutCacheH2.p & (-8589934589L);
                                Constraints.Companion companion = Constraints.f10998b;
                                EmptyList emptyList = EmptyList.f71768b;
                                textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString2, textStyleE, emptyList, paragraphLayoutCacheH2.f6286f, paragraphLayoutCacheH2.f6285e, paragraphLayoutCacheH2.d, density, layoutDirection, paragraphLayoutCacheH2.f6284c, j2, (DefaultConstructorMarker) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString2, textStyleE, emptyList, density, paragraphLayoutCacheH2.f6284c), j2, paragraphLayoutCacheH2.f6286f, paragraphLayoutCacheH2.d, (DefaultConstructorMarker) null), paragraphLayoutCacheH2.l, null);
                            }
                        }
                        if (textLayoutResult != null) {
                            list.add(textLayoutResult);
                            textLayoutResult2 = textLayoutResult;
                        }
                        return Boolean.valueOf(textLayoutResult2 != null);
                    case 1:
                        String str = ((AnnotatedString) obj).f10420c;
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue2 = textStringSimpleNode.A;
                        if (textSubstitutionValue2 == null) {
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue3 = new TextStringSimpleNode.TextSubstitutionValue(textStringSimpleNode.p, str, false, null, 12, null);
                            ParagraphLayoutCache paragraphLayoutCache = new ParagraphLayoutCache(str, textStringSimpleNode.q, textStringSimpleNode.r, textStringSimpleNode.s, textStringSimpleNode.t, textStringSimpleNode.u, textStringSimpleNode.v, null);
                            paragraphLayoutCache.d(textStringSimpleNode.h2().f6288i);
                            textSubstitutionValue3.d = paragraphLayoutCache;
                            textStringSimpleNode.A = textSubstitutionValue3;
                        } else if (!Intrinsics.c(str, textSubstitutionValue2.f6334b)) {
                            textSubstitutionValue2.f6334b = str;
                            ParagraphLayoutCache paragraphLayoutCache2 = textSubstitutionValue2.d;
                            if (paragraphLayoutCache2 != null) {
                                TextStyle textStyle2 = textStringSimpleNode.q;
                                FontFamily.Resolver resolver = textStringSimpleNode.r;
                                int i6 = textStringSimpleNode.s;
                                boolean z3 = textStringSimpleNode.t;
                                int i7 = textStringSimpleNode.u;
                                int i8 = textStringSimpleNode.v;
                                paragraphLayoutCache2.f6282a = str;
                                paragraphLayoutCache2.f6283b = textStyle2;
                                paragraphLayoutCache2.f6284c = resolver;
                                paragraphLayoutCache2.d = i6;
                                paragraphLayoutCache2.f6285e = z3;
                                paragraphLayoutCache2.f6286f = i7;
                                paragraphLayoutCache2.g = i8;
                                LayoutCacheOperation.f6258a.getClass();
                                paragraphLayoutCache2.s = (paragraphLayoutCache2.s << 2) | LayoutCacheOperation.f6260c;
                                paragraphLayoutCache2.c();
                            }
                        }
                        SemanticsModifierNodeKt.b(textStringSimpleNode);
                        DelegatableNodeKt.f(textStringSimpleNode).X();
                        DrawModifierNodeKt.a(textStringSimpleNode);
                        return Boolean.TRUE;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue4 = textStringSimpleNode.A;
                        if (textSubstitutionValue4 == null) {
                            z2 = false;
                        } else {
                            textSubstitutionValue4.f6335c = zBooleanValue;
                            SemanticsModifierNodeKt.b(textStringSimpleNode);
                            DelegatableNodeKt.f(textStringSimpleNode).X();
                            DrawModifierNodeKt.a(textStringSimpleNode);
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        semanticsPropertyReceiver.a(SemanticsActions.m, new AccessibilityAction(null, new Function1(this) { // from class: k31

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TextStringSimpleNode f71551c;

            {
                this.f71551c = this;
            }

            /* JADX WARN: Code duplicated, block: B:27:0x00e0  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long jA;
                Density density;
                TextLayoutResult textLayoutResult;
                int i5 = i3;
                boolean z2 = true;
                TextStringSimpleNode textStringSimpleNode = this.f71551c;
                switch (i5) {
                    case 0:
                        List list = (List) obj;
                        ParagraphLayoutCache paragraphLayoutCacheH2 = textStringSimpleNode.h2();
                        TextStyle textStyle = textStringSimpleNode.q;
                        ColorProducer colorProducer = textStringSimpleNode.w;
                        if (colorProducer != null) {
                            jA = colorProducer.a();
                        } else {
                            Color.f8866b.getClass();
                            jA = Color.f8871i;
                        }
                        TextStyle textStyleE = TextStyle.e(textStyle, jA, 0L, null, 0L, null, 0, 0L, 16777214);
                        LayoutDirection layoutDirection = paragraphLayoutCacheH2.o;
                        TextLayoutResult textLayoutResult2 = null;
                        if (layoutDirection == null || (density = paragraphLayoutCacheH2.f6288i) == null) {
                            textLayoutResult = null;
                        } else {
                            AnnotatedString annotatedString2 = new AnnotatedString(paragraphLayoutCacheH2.f6282a, null, 2, null);
                            if (paragraphLayoutCacheH2.f6289j == null || paragraphLayoutCacheH2.n == null) {
                                textLayoutResult = null;
                            } else {
                                long j2 = paragraphLayoutCacheH2.p & (-8589934589L);
                                Constraints.Companion companion = Constraints.f10998b;
                                EmptyList emptyList = EmptyList.f71768b;
                                textLayoutResult = new TextLayoutResult(new TextLayoutInput(annotatedString2, textStyleE, emptyList, paragraphLayoutCacheH2.f6286f, paragraphLayoutCacheH2.f6285e, paragraphLayoutCacheH2.d, density, layoutDirection, paragraphLayoutCacheH2.f6284c, j2, (DefaultConstructorMarker) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString2, textStyleE, emptyList, density, paragraphLayoutCacheH2.f6284c), j2, paragraphLayoutCacheH2.f6286f, paragraphLayoutCacheH2.d, (DefaultConstructorMarker) null), paragraphLayoutCacheH2.l, null);
                            }
                        }
                        if (textLayoutResult != null) {
                            list.add(textLayoutResult);
                            textLayoutResult2 = textLayoutResult;
                        }
                        return Boolean.valueOf(textLayoutResult2 != null);
                    case 1:
                        String str = ((AnnotatedString) obj).f10420c;
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue2 = textStringSimpleNode.A;
                        if (textSubstitutionValue2 == null) {
                            TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue3 = new TextStringSimpleNode.TextSubstitutionValue(textStringSimpleNode.p, str, false, null, 12, null);
                            ParagraphLayoutCache paragraphLayoutCache = new ParagraphLayoutCache(str, textStringSimpleNode.q, textStringSimpleNode.r, textStringSimpleNode.s, textStringSimpleNode.t, textStringSimpleNode.u, textStringSimpleNode.v, null);
                            paragraphLayoutCache.d(textStringSimpleNode.h2().f6288i);
                            textSubstitutionValue3.d = paragraphLayoutCache;
                            textStringSimpleNode.A = textSubstitutionValue3;
                        } else if (!Intrinsics.c(str, textSubstitutionValue2.f6334b)) {
                            textSubstitutionValue2.f6334b = str;
                            ParagraphLayoutCache paragraphLayoutCache2 = textSubstitutionValue2.d;
                            if (paragraphLayoutCache2 != null) {
                                TextStyle textStyle2 = textStringSimpleNode.q;
                                FontFamily.Resolver resolver = textStringSimpleNode.r;
                                int i6 = textStringSimpleNode.s;
                                boolean z3 = textStringSimpleNode.t;
                                int i7 = textStringSimpleNode.u;
                                int i8 = textStringSimpleNode.v;
                                paragraphLayoutCache2.f6282a = str;
                                paragraphLayoutCache2.f6283b = textStyle2;
                                paragraphLayoutCache2.f6284c = resolver;
                                paragraphLayoutCache2.d = i6;
                                paragraphLayoutCache2.f6285e = z3;
                                paragraphLayoutCache2.f6286f = i7;
                                paragraphLayoutCache2.g = i8;
                                LayoutCacheOperation.f6258a.getClass();
                                paragraphLayoutCache2.s = (paragraphLayoutCache2.s << 2) | LayoutCacheOperation.f6260c;
                                paragraphLayoutCache2.c();
                            }
                        }
                        SemanticsModifierNodeKt.b(textStringSimpleNode);
                        DelegatableNodeKt.f(textStringSimpleNode).X();
                        DrawModifierNodeKt.a(textStringSimpleNode);
                        return Boolean.TRUE;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        TextStringSimpleNode.TextSubstitutionValue textSubstitutionValue4 = textStringSimpleNode.A;
                        if (textSubstitutionValue4 == null) {
                            z2 = false;
                        } else {
                            textSubstitutionValue4.f6335c = zBooleanValue;
                            SemanticsModifierNodeKt.b(textStringSimpleNode);
                            DelegatableNodeKt.f(textStringSimpleNode).X();
                            DrawModifierNodeKt.a(textStringSimpleNode);
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        semanticsPropertyReceiver.a(SemanticsActions.n, new AccessibilityAction(null, new hv0(this, 15)));
        SemanticsPropertiesKt.c(semanticsPropertyReceiver, r0);
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0015 A[Catch: all -> 0x0096, TryCatch #0 {all -> 0x0096, blocks: (B:3:0x0005, B:5:0x0009, B:10:0x0011, B:13:0x0019, B:15:0x0028, B:16:0x002b, B:18:0x0034, B:20:0x0040, B:21:0x0047, B:22:0x0069, B:12:0x0015), top: B:28:0x0005 }] */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        ParagraphLayoutCache paragraphLayoutCacheH2;
        Trace.beginSection("TextStringSimpleNode::measure");
        try {
            TextSubstitutionValue textSubstitutionValue = this.A;
            if (textSubstitutionValue == null) {
                paragraphLayoutCacheH2 = h2();
            } else {
                if (!textSubstitutionValue.f6335c) {
                    textSubstitutionValue = null;
                }
                if (textSubstitutionValue == null || (paragraphLayoutCacheH2 = textSubstitutionValue.d) == null) {
                    paragraphLayoutCacheH2 = h2();
                }
            }
            paragraphLayoutCacheH2.d(measureScope);
            boolean zB = paragraphLayoutCacheH2.b(j2, measureScope.getF9495b());
            ParagraphIntrinsics paragraphIntrinsics = paragraphLayoutCacheH2.n;
            if (paragraphIntrinsics != null) {
                paragraphIntrinsics.a();
            }
            AndroidParagraph androidParagraph = paragraphLayoutCacheH2.f6289j;
            androidParagraph.getClass();
            long j3 = paragraphLayoutCacheH2.l;
            if (zB) {
                DelegatableNodeKt.d(this, 2).H1();
                HashMap map = this.x;
                if (map == null) {
                    map = new HashMap(2);
                    this.x = map;
                }
                map.put(AlignmentLineKt.f9416a, Integer.valueOf(Math.round(androidParagraph.f())));
                map.put(AlignmentLineKt.f9417b, Integer.valueOf(Math.round(androidParagraph.r())));
            }
            Constraints.Companion companion = Constraints.f10998b;
            int i2 = (int) (j3 >> 32);
            int i3 = (int) (j3 & BodyPartID.bodyIdMax);
            companion.getClass();
            Placeable placeableT = measurable.T(Constraints.Companion.b(i2, i2, i3, i3));
            HashMap map2 = this.x;
            map2.getClass();
            return measureScope.V0(i2, i3, map2, new a2(placeableT, 20));
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0010  */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        ParagraphLayoutCache paragraphLayoutCacheH2;
        TextSubstitutionValue textSubstitutionValue = this.A;
        if (textSubstitutionValue == null) {
            paragraphLayoutCacheH2 = h2();
        } else {
            if (!textSubstitutionValue.f6335c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue == null || (paragraphLayoutCacheH2 = textSubstitutionValue.d) == null) {
                paragraphLayoutCacheH2 = h2();
            }
        }
        paragraphLayoutCacheH2.d(lookaheadCapablePlaceable);
        return TextDelegateKt.a(paragraphLayoutCacheH2.e(lookaheadCapablePlaceable.getF9495b()).c());
    }

    public final ParagraphLayoutCache h2() {
        TextStyle textStyle = this.q;
        if (this.y == null) {
            this.y = new ParagraphLayoutCache(this.p, textStyle, this.r, this.s, this.t, this.u, this.v, null);
        }
        ParagraphLayoutCache paragraphLayoutCache = this.y;
        paragraphLayoutCache.getClass();
        return paragraphLayoutCache;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0016  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        ParagraphLayoutCache paragraphLayoutCacheH2;
        long jB;
        if (this.o) {
            TextSubstitutionValue textSubstitutionValue = this.A;
            if (textSubstitutionValue == null) {
                paragraphLayoutCacheH2 = h2();
            } else {
                if (!textSubstitutionValue.f6335c) {
                    textSubstitutionValue = null;
                }
                if (textSubstitutionValue == null || (paragraphLayoutCacheH2 = textSubstitutionValue.d) == null) {
                    paragraphLayoutCacheH2 = h2();
                }
            }
            AndroidParagraph androidParagraph = paragraphLayoutCacheH2.f6289j;
            if (androidParagraph == null) {
                InlineClassHelperKt.b("Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache=" + this.y + ", textSubstitution=" + this.A + ')');
                os.d();
                return;
            }
            Canvas canvasA = layoutNodeDrawScope.f9701b.f8996c.a();
            boolean z = paragraphLayoutCacheH2.f6290k;
            if (z) {
                long j2 = paragraphLayoutCacheH2.l;
                float f2 = (int) (j2 >> 32);
                float f3 = (int) (j2 & BodyPartID.bodyIdMax);
                canvasA.p();
                Canvas.h(canvasA, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, f3);
            }
            try {
                TextStyle textStyle = this.q;
                SpanStyle spanStyle = textStyle.f10568a;
                SpanStyle spanStyle2 = textStyle.f10568a;
                TextDecoration textDecoration = spanStyle.background;
                if (textDecoration == null) {
                    TextDecoration.f10965b.getClass();
                    textDecoration = TextDecoration.f10966c;
                }
                TextDecoration textDecoration2 = textDecoration;
                Shadow shadow = spanStyle.shadow;
                if (shadow == null) {
                    Shadow.d.getClass();
                    shadow = Shadow.f8925e;
                }
                DrawStyle drawStyle = spanStyle.drawStyle;
                if (drawStyle == null) {
                    drawStyle = Fill.f9010a;
                }
                DrawStyle drawStyle2 = drawStyle;
                Brush brushE = spanStyle2.f10522a.e();
                if (brushE != null) {
                    float f10926b = spanStyle2.f10522a.getF10926b();
                    DrawScope.a0.getClass();
                    androidParagraph.p(canvasA, brushE, f10926b, shadow, textDecoration2, drawStyle2, DrawScope.Companion.f9007b);
                } else {
                    ColorProducer colorProducer = this.w;
                    if (colorProducer != null) {
                        jB = colorProducer.a();
                    } else {
                        Color.f8866b.getClass();
                        jB = Color.f8871i;
                    }
                    if (jB == 16) {
                        if (textStyle.b() != 16) {
                            jB = textStyle.b();
                        } else {
                            Color.f8866b.getClass();
                            jB = Color.f8867c;
                        }
                    }
                    DrawScope.a0.getClass();
                    androidParagraph.d(canvasA, jB, shadow, textDecoration2, drawStyle2, DrawScope.Companion.f9007b);
                }
            } finally {
                if (z) {
                    canvasA.restore();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0010  */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        ParagraphLayoutCache paragraphLayoutCacheH2;
        TextSubstitutionValue textSubstitutionValue = this.A;
        if (textSubstitutionValue == null) {
            paragraphLayoutCacheH2 = h2();
        } else {
            if (!textSubstitutionValue.f6335c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue == null || (paragraphLayoutCacheH2 = textSubstitutionValue.d) == null) {
                paragraphLayoutCacheH2 = h2();
            }
        }
        paragraphLayoutCacheH2.d(lookaheadCapablePlaceable);
        return paragraphLayoutCacheH2.a(i2, lookaheadCapablePlaceable.getF9495b());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0010  */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        ParagraphLayoutCache paragraphLayoutCacheH2;
        TextSubstitutionValue textSubstitutionValue = this.A;
        if (textSubstitutionValue == null) {
            paragraphLayoutCacheH2 = h2();
        } else {
            if (!textSubstitutionValue.f6335c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue == null || (paragraphLayoutCacheH2 = textSubstitutionValue.d) == null) {
                paragraphLayoutCacheH2 = h2();
            }
        }
        paragraphLayoutCacheH2.d(lookaheadCapablePlaceable);
        return TextDelegateKt.a(paragraphLayoutCacheH2.e(lookaheadCapablePlaceable.getF9495b()).b());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0010  */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        ParagraphLayoutCache paragraphLayoutCacheH2;
        TextSubstitutionValue textSubstitutionValue = this.A;
        if (textSubstitutionValue == null) {
            paragraphLayoutCacheH2 = h2();
        } else {
            if (!textSubstitutionValue.f6335c) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue == null || (paragraphLayoutCacheH2 = textSubstitutionValue.d) == null) {
                paragraphLayoutCacheH2 = h2();
            }
        }
        paragraphLayoutCacheH2.d(lookaheadCapablePlaceable);
        return paragraphLayoutCacheH2.a(i2, lookaheadCapablePlaceable.getF9495b());
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;", "", "", "original", "substitution", "", "isShowingSubstitution", "Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;", "layoutCache", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class TextSubstitutionValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f6333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f6334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f6335c;
        public ParagraphLayoutCache d;

        public /* synthetic */ TextSubstitutionValue(String str, String str2, boolean z, ParagraphLayoutCache paragraphLayoutCache, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? null : paragraphLayoutCache);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TextSubstitutionValue)) {
                return false;
            }
            TextSubstitutionValue textSubstitutionValue = (TextSubstitutionValue) obj;
            return Intrinsics.c(this.f6333a, textSubstitutionValue.f6333a) && Intrinsics.c(this.f6334b, textSubstitutionValue.f6334b) && this.f6335c == textSubstitutionValue.f6335c && Intrinsics.c(this.d, textSubstitutionValue.d);
        }

        public final int hashCode() {
            int iB = o60.b(fc.b(this.f6333a.hashCode() * 31, 31, this.f6334b), 31, this.f6335c);
            ParagraphLayoutCache paragraphLayoutCache = this.d;
            return iB + (paragraphLayoutCache == null ? 0 : paragraphLayoutCache.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TextSubstitution(layoutCache=");
            sb.append(this.d);
            sb.append(", isShowingSubstitution=");
            return d21.q(sb, this.f6335c, ')');
        }

        public TextSubstitutionValue(String str, String str2, boolean z, ParagraphLayoutCache paragraphLayoutCache) {
            this.f6333a = str;
            this.f6334b = str2;
            this.f6335c = z;
            this.d = paragraphLayoutCache;
        }
    }

    public TextStringSimpleNode(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i2, boolean z, int i3, int i4, ColorProducer colorProducer, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = str;
        this.q = textStyle;
        this.r = resolver;
        this.s = i2;
        this.t = z;
        this.u = i3;
        this.v = i4;
        this.w = colorProducer;
    }
}
