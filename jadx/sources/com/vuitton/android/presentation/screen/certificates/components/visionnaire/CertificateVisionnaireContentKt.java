package com.vuitton.android.presentation.screen.certificates.components.visionnaire;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVTabsKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import defpackage.cf;
import defpackage.db;
import defpackage.fm;
import defpackage.n00;
import defpackage.q1;
import defpackage.tr;
import defpackage.va;
import defpackage.z;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "selectedItem", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateVisionnaireContentKt {
    public static final void a(CertificateVisionnaireUiModel certificateVisionnaireUiModel, String str, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1476989358);
        int i3 = i2 | (gapComposerH.K(certificateVisionnaireUiModel) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List listP = CollectionsKt.P(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_product_summary_tab), StringResources_androidKt.c(gapComposerH, R.string.certificate_details_product_details_tab));
            boolean zK = gapComposerH.K(listP);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new db(listP, 3);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX2);
            }
            MutableIntState mutableIntState = (MutableIntState) objX2;
            boolean zK2 = ((i3 & 896) == 256) | gapComposerH.K(pagerStateB) | ((i3 & 7168) == 2048);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new CertificateVisionnaireContentKt$CertificateVisionnaireContent$3$1(pagerStateB, function0, function1, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX3);
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("CertificateVisionnaireContent"), 1.0f);
            int iF = mutableIntState.f();
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new q1(mutableIntState, 4);
                gapComposerH.q(objX4);
            }
            LVTabsKt.a(modifierD, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, iF, listP, pagerStateB, (Function1) objX4, gapComposerH, 1572870, 6);
            PagerKt.a(pagerStateB, null, null, null, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, ComposableLambdaKt.b(1358930259, new cf(str, certificateVisionnaireUiModel, 2), gapComposerH), gapComposerH, 0, 24576, 16382);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) certificateVisionnaireUiModel, (Object) str, function0, function1, i2, 23);
        }
    }

    public static final void b(String str, String str2, String str3, String str4, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1763706603);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.K(str3) ? 256 : 128) | (gapComposerH.K(str4) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("DetailsPagerContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            if (str == null) {
                gapComposerH.L(-1276463670);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1276463669);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_product_size_label), str, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (str2 == null) {
                gapComposerH.L(-1276262170);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1276262169);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_product_material_label), str2, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (str3 == null) {
                gapComposerH.L(-1276052672);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1276052671);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_product_material_other_label), str3, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (str4 == null) {
                gapComposerH.L(-1275835641);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1275835640);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_production_site_label), str4, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(str, str2, str3, str4, i2, 24);
        }
    }

    public static final void c(String str, String str2, Composer composer, int i2) {
        String str3;
        GapComposer gapComposer;
        int i3;
        GapComposer gapComposerH = composer.h(-2016661612);
        int i4 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("PagerInformationLine", 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, n00.g("PagerInformationLine", "visionnaireDetails_attributeName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, i4 & 14, 24576, 114680);
            str3 = str2;
            TextKt.c(str3, ModifierExtKt.e(RowScopeInstance.f5040a.a(PaddingKt.m(new DTFunctionNameModifier("PagerInformationLine"), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), 1.0f, true), "visionnaireDetails_attributeValue_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i4 >> 3) & 14, 24576, 114680);
            gapComposer = gapComposerH;
            i3 = 1;
            gapComposer.Z(true);
        } else {
            str3 = str2;
            gapComposer = gapComposerH;
            i3 = 1;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new va(str, str3, i2, i3);
        }
    }

    public static final void d(String str, String str2, String str3, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-952725147);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.K(str3) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("ProductSummaryPagerContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            if (str == null) {
                gapComposerH.L(-518950237);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-518950236);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_ownership), str, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (str2 == null) {
                gapComposerH.L(-518753511);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-518753510);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_purchase_date_label), str2, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (str3 == null) {
                gapComposerH.L(-518546152);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-518546151);
                c(StringResources_androidKt.c(gapComposerH, R.string.certificate_details_purchase_store_label), str3, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fm(i2, 0, str, str2, str3);
        }
    }
}
