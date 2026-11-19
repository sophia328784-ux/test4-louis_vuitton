package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowGraphicsLayerElement;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.PopupProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.a;
import defpackage.cj;
import defpackage.f1;
import defpackage.gq;
import defpackage.n00;
import defpackage.p1;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ContextMenuUiKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ContextMenuColors f4333a;

    static {
        new PopupProperties(true, false, false, false, false, 30, (DefaultConstructorMarker) null);
        Color.f8866b.getClass();
        long j2 = Color.f8868e;
        long j3 = Color.f8867c;
        f4333a = new ContextMenuColors(j2, j3, j3, Color.b(0.38f, j3), Color.b(0.38f, j3), null);
    }

    public static final void a(ContextMenuColors contextMenuColors, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ContextMenuColumn");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-527864079);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(contextMenuColors) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = ContextMenuSpec.d;
            RoundedCornerShape roundedCornerShapeA = RoundedCornerShapeKt.a(ContextMenuSpec.f4327e);
            boolean z = Dp.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0;
            long j2 = GraphicsLayerScopeKt.f8891a;
            Modifier modifierD = ScrollKt.d(PaddingKt.k(IntrinsicKt.b(BackgroundKt.b((Dp.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0 || z) ? modifier2.o(new ShadowGraphicsLayerElement(f2, roundedCornerShapeA, z, j2, j2, null)) : modifier2, contextMenuColors.f4316a, RectangleShapeKt.f8913a), IntrinsicSize.Max), Call.Parameters.DEFAULT_CAMERA_ZOOM, ContextMenuSpec.f4330i, 1), ScrollKt.b(gapComposerH), false, 14);
            int i4 = (i3 << 3) & 7168;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i4 >> 6) & 112) | 6));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 9, contextMenuColors, modifier2, composableLambdaImpl);
        }
    }

    public static final void b(Modifier modifier, ContextMenuColors contextMenuColors, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        if (modifier != null) {
            modifier = a.e(modifier, "ContextMenuColumnBuilder");
        }
        GapComposer gapComposerH = composer.h(-625529233);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        int i7 = i3 & 2;
        if (i7 != 0) {
            i5 = i4 | 48;
        } else {
            i5 = i4 | (gapComposerH.K(contextMenuColors) ? 32 : 16);
        }
        int i8 = i5 | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i8 & 1, (i8 & 147) != 146)) {
            if (i6 != 0) {
                modifier = new DTFunctionNameModifier("ContextMenuColumnBuilder");
            }
            if (i7 != 0) {
                contextMenuColors = f4333a;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            a(contextMenuColors, modifier, ComposableLambdaKt.b(-250345048, new f1(function1, contextMenuColors, 19), gapComposerH), gapComposerH, ((i8 >> 3) & 14) | KyberEngine.KyberPolyBytes | ((i8 << 3) & 112));
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        ContextMenuColors contextMenuColors2 = contextMenuColors;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(modifier2, contextMenuColors2, function1, i2, i3, 8);
        }
    }

    public static final void c(String str, boolean z, ContextMenuColors contextMenuColors, Modifier modifier, Function3 function3, Function0 function0, Composer composer, int i2) {
        String str2;
        int i3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ContextMenuItem");
        }
        GapComposer gapComposerH = composer.h(-2001167027);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            str2 = str;
            i3 = (gapComposerH.K(str2) ? 4 : 2) | i2;
        } else {
            str2 = str;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(contextMenuColors) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(modifierE) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BiasAlignment.Vertical vertical = ContextMenuSpec.f4328f;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            float f2 = ContextMenuSpec.f4329h;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f2);
            boolean z2 = ((i4 & 112) == 32) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new gq(z, function0, 0);
                gapComposerH.q(objX);
            }
            Modifier modifierD = SizeKt.d(ClickableKt.d(modifierE, z, str2, null, (Function0) objX, 12), 1.0f);
            float f3 = ContextMenuSpec.f4324a;
            float f4 = ContextMenuSpec.f4325b;
            float f5 = ContextMenuSpec.f4326c;
            Modifier modifierK = PaddingKt.k(SizeKt.q(modifierD, f3, f5, f4, f5), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, vertical, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            if (function3 == null) {
                gapComposerH.L(-1597947094);
                gapComposerH.Z(false);
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1597947093, "ContextMenuItem");
                float f6 = ContextMenuSpec.f4331j;
                Modifier modifierM = SizeKt.m(dTFunctionNameModifierI, f6, Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, f6, 2);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
                cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC2, function7);
                function3.A(new Color(z ? contextMenuColors.f4318c : contextMenuColors.f4319e), gapComposerH, 0);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            }
            long j2 = z ? contextMenuColors.f4317b : contextMenuColors.d;
            BasicTextKt.b(str, cj.b("ContextMenuItem", RowScopeInstance.f5040a, 1.0f, true), new TextStyle(j2, ContextMenuSpec.m, ContextMenuSpec.n, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, ContextMenuSpec.p, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, ContextMenuSpec.g, 0, ContextMenuSpec.o, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16613240, (DefaultConstructorMarker) null), null, 0, false, 1, 0, gapComposerH, (i4 & 14) | 1572864, 952);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            modifierE = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(str, z, contextMenuColors, modifierE, function3, function0, i2);
        }
    }
}
