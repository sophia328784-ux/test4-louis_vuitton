package androidx.compose.foundation.text;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextLinkStyles;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.gy0;
import defpackage.ll0;
import defpackage.m21;
import defpackage.og0;
import defpackage.p01;
import defpackage.z21;
import defpackage.zc;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SpreadBuilder;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/TextLinkScope;", "", "Landroidx/compose/ui/text/AnnotatedString;", "initialText", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLinkScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnnotatedString f6015b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f6014a = SnapshotStateKt.g(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SnapshotStateList f6016c = new SnapshotStateList();

    public TextLinkScope(AnnotatedString annotatedString) {
        this.f6015b = annotatedString.a(new z21(10));
    }

    public static AnnotatedString.Range c(AnnotatedString.Range range, TextLayoutResult textLayoutResult) {
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        int iC = multiParagraph.c(multiParagraph.f10465f - 1, false);
        if (range.f10429b < iC) {
            return AnnotatedString.Range.a(range, null, Math.min(range.f10430c, iC), 11);
        }
        return null;
    }

    public final void a(Composer composer, int i2) {
        boolean z;
        GapComposer gapComposerH = composer.h(1154651354);
        char c2 = 2;
        int i3 = (gapComposerH.y(this) ? 4 : 2) | i2;
        boolean z2 = false;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            UriHandler uriHandler = (UriHandler) gapComposerH.k(CompositionLocalsKt.t);
            AnnotatedString annotatedString = this.f6015b;
            List listB = annotatedString.b(annotatedString.f10420c.length());
            int size = listB.size();
            int i4 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) listB.get(i4);
                int i5 = range.f10429b;
                Object obj = range.f10428a;
                if (i5 != range.f10430c) {
                    gapComposerH.L(725478935);
                    Object objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
                    Modifier modifierA = GraphicsLayerModifierKt.a(new DTFunctionNameModifier("LinksComposables"), new m21(this, range, 7));
                    Object objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new z21(11);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierA2 = HoverableKt.a(SemanticsModifierKt.b(modifierA, z2, (Function1) objX2).o(new TextRangeLayoutModifier(new gy0(this, range, 3))), mutableInteractionSource);
                    PointerIcon.f9321a.getClass();
                    Modifier modifierA3 = PointerIconKt.a(modifierA2, PointerIcon.Companion.d);
                    boolean zY = gapComposerH.y(this) | gapComposerH.K(range) | gapComposerH.y(uriHandler);
                    Object objX3 = gapComposerH.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        objX3 = new p01(this, range, uriHandler);
                        gapComposerH.q(objX3);
                    }
                    BoxKt.a(ClickableKt.e(modifierA3, mutableInteractionSource, null, (Function0) objX3, 508), gapComposerH, 0);
                    LinkAnnotation linkAnnotation = (LinkAnnotation) obj;
                    TextLinkStyles f10459b = linkAnnotation.getF10459b();
                    if (f10459b == null || (f10459b.f10557a == null && f10459b.f10558b == null && f10459b.f10559c == null && f10459b.d == null)) {
                        z = false;
                        gapComposerH.L(728331710);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(726303039);
                        Object objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new LinkStateInteractionSourceObserver(mutableInteractionSource);
                            gapComposerH.q(objX4);
                        }
                        LinkStateInteractionSourceObserver linkStateInteractionSourceObserver = (LinkStateInteractionSourceObserver) objX4;
                        Unit unit = Unit.f71739a;
                        Object objX5 = gapComposerH.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new TextLinkScope$LinksComposables$1$3$1(linkStateInteractionSourceObserver, null);
                            gapComposerH.q(objX5);
                        }
                        EffectsKt.e(gapComposerH, unit, (Function2) objX5);
                        MutableIntState mutableIntState = linkStateInteractionSourceObserver.f5935b;
                        MutableIntState mutableIntState2 = linkStateInteractionSourceObserver.f5935b;
                        Boolean boolValueOf = Boolean.valueOf((((SnapshotMutableIntStateImpl) mutableIntState).f() & 2) != 0);
                        Boolean boolValueOf2 = Boolean.valueOf((((SnapshotMutableIntStateImpl) mutableIntState2).f() & 1) != 0);
                        Boolean boolValueOf3 = Boolean.valueOf((((SnapshotMutableIntStateImpl) mutableIntState2).f() & 4) != 0);
                        TextLinkStyles f10459b2 = linkAnnotation.getF10459b();
                        SpanStyle spanStyle = f10459b2 != null ? f10459b2.f10557a : null;
                        TextLinkStyles f10459b3 = linkAnnotation.getF10459b();
                        SpanStyle spanStyle2 = f10459b3 != null ? f10459b3.f10558b : null;
                        TextLinkStyles f10459b4 = linkAnnotation.getF10459b();
                        SpanStyle spanStyle3 = f10459b4 != null ? f10459b4.f10559c : null;
                        TextLinkStyles f10459b5 = linkAnnotation.getF10459b();
                        Object[] objArr = {boolValueOf, boolValueOf2, boolValueOf3, spanStyle, spanStyle2, spanStyle3, f10459b5 != null ? f10459b5.d : null};
                        boolean zY2 = gapComposerH.y(this) | gapComposerH.K(range);
                        Object objX6 = gapComposerH.x();
                        if (zY2 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new g(this, range, linkStateInteractionSourceObserver);
                            gapComposerH.q(objX6);
                        }
                        b(objArr, (Function1) objX6, gapComposerH, (i3 << 6) & 896);
                        z = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z);
                } else {
                    z = z2;
                    gapComposerH.L(728345598);
                    gapComposerH.Z(z);
                }
                i4++;
                z2 = z;
                c2 = c2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ll0(this, i2, 26);
        }
    }

    public final void b(Object[] objArr, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-2083052099);
        int i3 = (i2 & 48) == 0 ? (gapComposerH.y(function1) ? 32 : 16) | i2 : i2;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(this) ? 256 : 128;
        }
        gapComposerH.A(-358306546, Integer.valueOf(objArr.length));
        int i4 = i3 | (gapComposerH.d(objArr.length) ? 4 : 0);
        for (Object obj : objArr) {
            i4 |= gapComposerH.y(obj) ? 4 : 0;
        }
        gapComposerH.Z(false);
        if ((i4 & 14) == 0) {
            i4 |= 2;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpreadBuilder spreadBuilder = new SpreadBuilder(2);
            spreadBuilder.a(function1);
            spreadBuilder.b(objArr);
            ArrayList arrayList = spreadBuilder.f71925a;
            Object[] array = arrayList.toArray(new Object[arrayList.size()]);
            boolean zY = gapComposerH.y(this) | ((i4 & 112) == 32);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new zc(this, function1, 1);
                gapComposerH.q(objX);
            }
            EffectsKt.d(array, (Function1) objX, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(this, objArr, function1, i2, 11);
        }
    }
}
