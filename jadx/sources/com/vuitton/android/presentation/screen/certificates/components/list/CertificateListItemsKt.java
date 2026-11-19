package com.vuitton.android.presentation.screen.certificates.components.list;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import defpackage.b3;
import defpackage.cj;
import defpackage.g1;
import defpackage.g2;
import defpackage.od;
import defpackage.pl;
import defpackage.pq0;
import defpackage.r;
import defpackage.tr;
import defpackage.u;
import defpackage.w;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateListItemsKt {
    public static final void a(Modifier modifier, CertificateCapucineUiModel certificateCapucineUiModel, Function1 function1, Function1 function2, Composer composer, int i2) {
        Modifier modifier2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "CertificateCapucineItem");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(222682595);
        int i3 = i2 | 6 | (gapComposerH.y(certificateCapucineUiModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateCapucineItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = certificateCapucineUiModel.f55819e;
            CertificateStatusUiModel certificateStatusUiModel = certificateCapucineUiModel.g;
            Alignment.f8582a.getClass();
            d(dTFunctionNameModifier, str, certificateStatusUiModel, Alignment.Companion.n, ComposableLambdaKt.b(1755681899, new g1(certificateCapucineUiModel, function2, function1, 12), gapComposerH), gapComposerH, 27654);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(modifier2, certificateCapucineUiModel, function1, function2, i2, 20);
        }
    }

    public static final void b(Modifier modifier, CertificateDiamondUiModel certificateDiamondUiModel, Function2 function2, Function1 function1, Function1 function3, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "CertificateDiamondItem") : modifier;
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1823301265);
        int i3 = i2 | 6 | (gapComposerH.y(certificateDiamondUiModel) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateDiamondItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = certificateDiamondUiModel.f55829e;
            CertificateStatusUiModel certificateStatusUiModel = certificateDiamondUiModel.g;
            Alignment.f8582a.getClass();
            d(dTFunctionNameModifier, str, certificateStatusUiModel, Alignment.Companion.o, ComposableLambdaKt.b(-1963503625, new r((Object) certificateDiamondUiModel, (Object) function3, (Object) function1, (Object) function2, 7), gapComposerH), gapComposerH, 27654);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(modifier2, (Object) certificateDiamondUiModel, (Object) function2, function1, function3, i2, 11);
        }
    }

    public static final void c(Modifier modifier, CertificateStatusUiModel certificateStatusUiModel, String str, Composer composer, int i2) {
        Modifier modifier2;
        String strF;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "CertificateIndividualNumber");
        }
        GapComposer gapComposerH = composer.h(1610273163);
        int i3 = i2 | 6 | (gapComposerH.d(certificateStatusUiModel.ordinal()) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateIndividualNumber");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (certificateStatusUiModel == CertificateStatusUiModel.PENDING) {
                strF = cj.f(gapComposerH, 1158290414, R.string.my_certificate_pending_label, gapComposerH, false);
            } else {
                gapComposerH.L(1158367511);
                gapComposerH.Z(false);
                strF = str;
            }
            CertificateComposableKt.b(dTFunctionNameModifier, StringResources_androidKt.c(gapComposerH, R.string.my_certificate_individual_number_label), strF, gapComposerH, 6, 0);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 21, modifier2, certificateStatusUiModel, str);
        }
    }

    public static final void d(Modifier modifier, String str, CertificateStatusUiModel certificateStatusUiModel, Alignment.Horizontal horizontal, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CertificateItemContainer");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(152185289);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier3) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(certificateStatusUiModel.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(horizontal) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 16384 : 8192;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            modifier2 = modifier3;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            int i5 = i4 >> 3;
            e(str, certificateStatusUiModel, gapComposerH, i5 & 126);
            Modifier modifierK = PaddingKt.k(PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            int i6 = i5 & 8064;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, (i6 >> 3) & 112);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            composableLambdaImpl.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i6 >> 6) & 112) | 6));
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(modifier2, str, certificateStatusUiModel, horizontal, composableLambdaImpl, i2, 6);
        }
    }

    public static final void e(String str, CertificateStatusUiModel certificateStatusUiModel, Composer composer, int i2) {
        int i3;
        boolean z;
        GapComposer gapComposerH = composer.h(-592594032);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(str) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(certificateStatusUiModel.ordinal()) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z2 = certificateStatusUiModel == CertificateStatusUiModel.LOCKED;
            Object objValueOf = (str == null || StringsKt.w(str) || !StringExtKt.a(str)) ? null : str;
            if (objValueOf == null) {
                objValueOf = Integer.valueOf(R.drawable.placeholder);
            }
            Object obj = objValueOf;
            Modifier modifierA = AspectRatioKt.a(ClipKt.a(new DTFunctionNameModifier("CertificateProductImage"), RoundedCornerShapeKt.c(LVAppDesignKitTheme.d(gapComposerH).f48386e, LVAppDesignKitTheme.d(gapComposerH).f48386e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12)), 1.0f, false);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function5, "CertificateProductImage");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierA2 = BackgroundKt.a(dTFunctionNameModifierE.o(fillElement), Brush.Companion.c(Brush.f8862a, new Pair[]{new Pair(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), new Color(ColorKt.c(4293058783L))), new Pair(Float.valueOf(0.17f), new Color(ColorKt.c(4293058783L))), new Pair(Float.valueOf(1.0f), new Color(ColorKt.c(4177065983L)))}));
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA2, obj, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, gapComposerH, 12583302, 1912);
            if (z2) {
                gapComposerH.L(-2051834980);
                Modifier modifierO = new DTFunctionNameModifier("CertificateProductImage").o(fillElement);
                long jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48403c, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a);
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                Modifier modifierE = ModifierExtKt.e(BackgroundKt.b(modifierO, jB, rectangleShapeKt$RectangleShape$1), "certificateList_lock_image");
                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE);
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
                Updater.c(gapComposerH, measurePolicyD2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.o(tr.e(gapComposerH, modifierC2, function5, "CertificateProductImage"), LVAppDesignKitTheme.d(gapComposerH).y), RoundedCornerShapeKt.f5846a), Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), rectangleShapeKt$RectangleShape$1);
                MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
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
                Updater.c(gapComposerH, measurePolicyD3, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC3, function5);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).J0, gapComposerH, 0), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.y, gapComposerH, 56, 4);
                z = true;
                pq0.x(gapComposerH, true, true, false);
            } else {
                z = true;
                gapComposerH.L(-2050608744);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(certificateStatusUiModel, i2, 8, str);
        }
    }

    public static final void f(Modifier modifier, CertificateRubyUiModel certificateRubyUiModel, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "CertificateRubyItem") : modifier;
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(930661686);
        int i3 = i2 | 6 | (gapComposerH.K(certificateRubyUiModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateRubyItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = certificateRubyUiModel.f55842e;
            CertificateStatusUiModel certificateStatusUiModel = certificateRubyUiModel.g;
            Alignment.f8582a.getClass();
            d(dTFunctionNameModifier, str, certificateStatusUiModel, Alignment.Companion.o, ComposableLambdaKt.b(969210302, new r((Object) certificateRubyUiModel, (Object) function3, (Object) function1, (Object) function2, 8), gapComposerH), gapComposerH, 27654);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w(modifier2, (Object) certificateRubyUiModel, function1, function2, function3, i2, 12);
        }
    }

    public static final void g(Modifier modifier, CertificateVisionnaireUiModel certificateVisionnaireUiModel, boolean z, Function1 function1, Function1 function2, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "CertificateVisionnaireItem") : modifier;
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-164838341);
        int i3 = i2 | 6 | (gapComposerH.K(certificateVisionnaireUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateVisionnaireItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = certificateVisionnaireUiModel.f55885e;
            CertificateStatusUiModel certificateStatusUiModel = certificateVisionnaireUiModel.g;
            Alignment.f8582a.getClass();
            d(dTFunctionNameModifier, str, certificateStatusUiModel, Alignment.Companion.n, ComposableLambdaKt.b(963013827, new pl(certificateVisionnaireUiModel, z, function1, function2, 0), gapComposerH), gapComposerH, 27654);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(modifier2, certificateVisionnaireUiModel, z, function1, function2, i2);
        }
    }
}
