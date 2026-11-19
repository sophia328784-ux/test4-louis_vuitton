package com.vuitton.android.presentation.common.hotcontent.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceHotContentUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.h;
import defpackage.i1;
import defpackage.n00;
import defpackage.n10;
import defpackage.py;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HotContentCareServiceItemKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f50881a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50882a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50882a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f50881a = 56.0f;
    }

    public static final void a(Modifier modifier, CareServiceHotContentUiModel careServiceHotContentUiModel, LVColorScheme lVColorScheme, Composer composer, int i2) {
        int i3;
        long j2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CareServiceContentWithAction");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-956962816);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(careServiceHotContentUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
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
            String str = careServiceHotContentUiModel.f64057f;
            if (str == null) {
                gapComposerH.L(-1741296076);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else {
                gapComposerH.L(-1741296075);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                int i4 = WhenMappings.f50882a[lVColorScheme.ordinal()];
                if (i4 == 1) {
                    gapComposerH.L(-1541080916);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    if (i4 != 2) {
                        throw d21.u(gapComposerH, -1541083783, false);
                    }
                    gapComposerH.L(-1541077818);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                }
                TextKt.c(str, null, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131066);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
            gapComposerH = gapComposer;
            c(PaddingKt.m(new DTFunctionNameModifier("CareServiceContentWithAction"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), careServiceHotContentUiModel, lVColorScheme, gapComposerH, i3 & 1008, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n10(modifier2, careServiceHotContentUiModel, lVColorScheme, i2, 1);
        }
    }

    public static final void b(Modifier modifier, CareServiceHotContentUiModel careServiceHotContentUiModel, LVColorScheme lVColorScheme, Composer composer, int i2) {
        int i3;
        boolean z;
        boolean z2;
        long j2;
        Unit unit;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CareServiceContentWithoutAction");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1046285284);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(careServiceHotContentUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            c(null, careServiceHotContentUiModel, lVColorScheme, gapComposerH, i3 & 1008, 1);
            String str = careServiceHotContentUiModel.f64056e;
            if (str == null) {
                gapComposerH.L(1037957465);
                gapComposerH.Z(false);
                unit = null;
                z2 = false;
                z = true;
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 1037957466, "CareServiceContentWithoutAction"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                BoxKt.a(BackgroundKt.b(SizeKt.o(tr.e(gapComposerH, modifierC2, function5, "CareServiceContentWithoutAction"), LVAppDesignKitTheme.d(gapComposerH).f48388h), LVAppDesignKitTheme.c(gapComposerH).f48361b.v, RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).f48388h)), gapComposerH, 0);
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("CareServiceContentWithoutAction"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                int i4 = WhenMappings.f50882a[lVColorScheme.ordinal()];
                z = true;
                if (i4 == 1) {
                    z2 = false;
                    gapComposerH.L(-1701030345);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    if (i4 != 2) {
                        throw d21.u(gapComposerH, -1701033329, false);
                    }
                    gapComposerH.L(-1701027120);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    z2 = false;
                    gapComposerH.Z(false);
                }
                long j3 = j2;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                TextOverflow.f10989a.getClass();
                TextKt.c(str, modifierM2, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                gapComposerH.Z(true);
                gapComposerH.Z(z2);
                unit = Unit.f71739a;
            }
            if (unit == null) {
                Modifier modifierM3 = PaddingKt.m(n00.i(gapComposerH, 1280446277, "CareServiceContentWithoutAction"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Dp.Companion companion = Dp.f11004c;
                SpacerKt.a(gapComposerH, SizeKt.f(modifierM3, 18.0f));
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(1280408054);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(z);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n10(modifier2, careServiceHotContentUiModel, lVColorScheme, i2, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static final void c(Modifier modifier, CareServiceHotContentUiModel careServiceHotContentUiModel, LVColorScheme lVColorScheme, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Function1 function1;
        Function2 function2;
        Function0 function0;
        Function2 function3;
        ?? r2;
        long j2;
        GapComposer gapComposer2;
        long j3;
        long j4;
        String str;
        long j5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "CareServiceRow");
        }
        GapComposer gapComposerH = composer.h(1528741563);
        Applier applier = gapComposerH.f7976a;
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(careServiceHotContentUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(lVColorScheme.ordinal()) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("CareServiceRow");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            AssetImageUiModel assetImageUiModel = careServiceHotContentUiModel.f64058h;
            boolean zA = StringExtKt.a(assetImageUiModel != null ? assetImageUiModel.f51778b : null);
            float f2 = f50881a;
            if (zA) {
                gapComposerH.L(-1985260594);
                AssetImageUiModel assetImageUiModel2 = careServiceHotContentUiModel.f64058h;
                if (assetImageUiModel2 == null || (str = assetImageUiModel2.f51778b) == null) {
                    str = null;
                }
                Modifier modifierA = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("CareServiceRow"), f2), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                float f3 = LVAppDesignKitTheme.d(gapComposerH).f48384b;
                int i6 = WhenMappings.f50882a[lVColorScheme.ordinal()];
                if (i6 == 1) {
                    gapComposerH.L(351615055);
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.t;
                    gapComposerH.Z(false);
                } else {
                    if (i6 != 2) {
                        throw d21.u(gapComposerH, 351611952, false);
                    }
                    gapComposerH.L(351618281);
                    j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                }
                function2 = function7;
                function1 = function8;
                function3 = function5;
                r2 = 0;
                function0 = function4;
                ImageLoaderKt.b(BorderKt.a(modifierA, f3, j5, LVAppDesignKitTheme.j(gapComposerH).f48410b), str, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(false);
                gapComposer2 = gapComposer3;
            } else {
                function1 = function8;
                function2 = function7;
                function0 = function4;
                function3 = function5;
                r2 = 0;
                gapComposerH.L(-1984540278);
                Modifier modifierA2 = ClipKt.a(SizeKt.o(new DTFunctionNameModifier("CareServiceRow"), f2), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                float f4 = LVAppDesignKitTheme.d(gapComposerH).f48384b;
                int i7 = WhenMappings.f50882a[lVColorScheme.ordinal()];
                if (i7 == 1) {
                    gapComposerH.L(351635887);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.t;
                    gapComposerH.Z(false);
                } else {
                    if (i7 != 2) {
                        throw d21.u(gapComposerH, 351632784, false);
                    }
                    gapComposerH.L(351639113);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                }
                Modifier modifierA3 = BorderKt.a(modifierA2, f4, j2, LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Painter painterA = PainterResources_androidKt.a(2131230926, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                ImageKt.a(painterA, null, modifierA3, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632, 104);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
            }
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CareServiceRow"), LVAppDesignKitTheme.l(gapComposer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposer2, r2);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, columnMeasurePolicyA, function3);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposer2, function2, gapComposer2, function1);
            Updater.c(gapComposer2, modifierC2, function9);
            String str2 = careServiceHotContentUiModel.f64055c;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer2).l;
            int[] iArr = WhenMappings.f50882a;
            int i8 = iArr[lVColorScheme.ordinal()];
            if (i8 == 1) {
                gapComposer2.L(-302919575);
                j3 = LVAppDesignKitTheme.c(gapComposer2).f48361b.m;
                gapComposer2.Z(r2);
            } else {
                if (i8 != 2) {
                    throw d21.u(gapComposer2, -302922442, r2);
                }
                gapComposer2.L(-302916477);
                j3 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                gapComposer2.Z(r2);
            }
            GapComposer gapComposer4 = gapComposer2;
            TextKt.c(str2, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer4, 0, 0, 131066);
            String str3 = careServiceHotContentUiModel.d;
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer4).l;
            int i9 = iArr[lVColorScheme.ordinal()];
            if (i9 == 1) {
                gapComposer4.L(-302906840);
                j4 = LVAppDesignKitTheme.c(gapComposer4).f48361b.n;
                gapComposer4.Z(r2);
            } else {
                if (i9 != 2) {
                    throw d21.u(gapComposer4, -302909708, r2);
                }
                gapComposer4.L(-302903774);
                j4 = LVAppDesignKitTheme.c(gapComposer4).f48361b.l;
                gapComposer4.Z(r2);
            }
            TextKt.c(str3, null, j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer4, 0, 0, 131066);
            GapComposer gapComposer5 = gapComposer4;
            gapComposer5.Z(true);
            gapComposer5.Z(true);
            dTFunctionNameModifier = dTFunctionNameModifier;
            gapComposer = gapComposer5;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(dTFunctionNameModifier, careServiceHotContentUiModel, lVColorScheme, i2, i3, 4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v16 */
    public static final void d(Modifier modifier, HotContentItemUiModel.CareService careService, LVColorScheme lVColorScheme, Function0 function0, Composer composer, int i2) {
        int i3;
        long j2;
        ?? r8;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "HotContentCareServiceItem");
        }
        careService.getClass();
        CareServiceHotContentUiModel careServiceHotContentUiModel = careService.f50892a;
        function0.getClass();
        GapComposer gapComposerH = composer.h(2115390443);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(careService) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).f48411c);
            int[] iArr = WhenMappings.f50882a;
            int i4 = iArr[lVColorScheme.ordinal()];
            if (i4 == 1) {
                gapComposerH.L(1370698301);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.g;
                gapComposerH.Z(false);
            } else {
                if (i4 != 2) {
                    throw d21.u(gapComposerH, 1370695432, false);
                }
                gapComposerH.L(1370701335);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                gapComposerH.Z(false);
            }
            Modifier modifierB = BackgroundKt.b(modifierA, j2, RectangleShapeKt.f8913a);
            boolean z = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new py(function0, 6);
                gapComposerH.q(objX);
            }
            Modifier modifierJ = PaddingKt.j(ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 27), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            CareServiceAction careServiceAction = careServiceHotContentUiModel.g;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (careServiceAction != null) {
                a(rowScopeInstance.a(n00.i(gapComposerH, 340035821, "HotContentCareServiceItem"), 1.0f, true), careServiceHotContentUiModel, lVColorScheme, gapComposerH, i3 & 896);
                r8 = 0;
                gapComposerH.Z(false);
            } else {
                r8 = 0;
                b(rowScopeInstance.a(n00.i(gapComposerH, 340238282, "HotContentCareServiceItem"), 1.0f, true), careServiceHotContentUiModel, lVColorScheme, gapComposerH, i3 & 896);
                gapComposerH.Z(false);
            }
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("HotContentCareServiceItem"), LVAppDesignKitTheme.d(gapComposerH).m);
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, r8);
            int i5 = iArr[lVColorScheme.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(-404651173);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
                gapComposerH.Z(r8);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, -404653932, r8);
                }
                gapComposerH.L(-404648459);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                gapComposerH.Z(r8);
            }
            IconKt.a(painterA, null, modifierO, j3, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifierE, careService, lVColorScheme, function0, i2, 19);
        }
    }
}
