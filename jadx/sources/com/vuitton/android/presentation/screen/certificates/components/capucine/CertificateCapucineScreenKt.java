package com.vuitton.android.presentation.screen.certificates.components.capucine;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineData;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.db;
import defpackage.f1;
import defpackage.n00;
import defpackage.o0;
import defpackage.tr;
import defpackage.xk;
import defpackage.yk;
import defpackage.zk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateCapucineScreenKt {
    public static final void a(CertificateCapucineUiModel certificateCapucineUiModel, Composer composer, int i2) {
        int i3;
        Object next;
        String sku;
        String str;
        GapComposer gapComposerH = composer.h(-671352368);
        int i4 = i2 | (gapComposerH.y(certificateCapucineUiModel) ? 4 : 2);
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierL = PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).g);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierL);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            String strC = null;
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
            i3 = 0;
            TextKt.c(StringResources_androidKt.b(R.string.arty_capucines_name, new Object[]{certificateCapucineUiModel.f55823j}, gapComposerH), PaddingKt.m(new DTFunctionNameModifier("CapucineDetails"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            CertificateComposableKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.arty_capucines_acquired_date), certificateCapucineUiModel.f55822i, gapComposerH, 0, 1);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.product_detail_materials), PaddingKt.m(new DTFunctionNameModifier("CapucineDetails"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            Iterator<E> it = CertificateCapucineData.b().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                sku = ((CertificateCapucineData) next).getSku();
                str = certificateCapucineUiModel.f55818c;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            } while (!Intrinsics.c(sku, str));
            CertificateCapucineData certificateCapucineData = (CertificateCapucineData) next;
            Integer numValueOf = certificateCapucineData != null ? Integer.valueOf(certificateCapucineData.getMaterialStringId()) : null;
            if (numValueOf == null) {
                gapComposerH.L(-1743662132);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1743662131);
                strC = StringResources_androidKt.c(gapComposerH, numValueOf.intValue());
                gapComposerH.Z(false);
            }
            TextKt.c(strC == null ? certificateCapucineUiModel.f55824k : strC, PaddingKt.m(new DTFunctionNameModifier("CapucineDetails"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            i3 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yk(certificateCapucineUiModel, i2, i3);
        }
    }

    public static final void b(CertificateCapucineUiModel certificateCapucineUiModel, Composer composer, int i2) {
        GapComposer gapComposer;
        Object obj;
        List list = certificateCapucineUiModel.l;
        GapComposer gapComposerH = composer.h(206416580);
        int i3 = (gapComposerH.y(certificateCapucineUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                obj = objX;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (StringExtKt.a((String) obj2)) {
                        arrayList.add(obj2);
                    }
                }
                gapComposerH.q(arrayList);
                obj = arrayList;
            }
            List list2 = (List) obj;
            boolean zY = gapComposerH.y(list2);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new db(list2, 2);
                gapComposerH.q(objX2);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerH, 0, 3);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CapucineSlideShow");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            GapComposer gapComposer2 = gapComposerH;
            LVSlideShowKt.a(pagerStateB, AspectRatioKt.a(SizeKt.d(new DTFunctionNameModifier("CapucineSlideShow"), 1.0f), 0.8f, false), false, null, false, false, ComposableLambdaKt.b(-587325580, new zk(list2, 0), gapComposerH), gapComposer2, 12583344, 120);
            if (list2.size() > 1) {
                LVCapsulePageControlKt.a(PaddingKt.m(BoxScopeInstance.f4938a.g(n00.i(gapComposer2, 1233653644, "CapucineSlideShow"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48415c, 7), pagerStateB, null, false, gapComposer2, 0, 12);
                gapComposer2.Z(false);
            } else {
                gapComposer2.L(1233953476);
                gapComposer2.Z(false);
            }
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            gapComposer = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yk(certificateCapucineUiModel, i2, 1);
        }
    }

    public static final void c(CertificateCapucineUiModel certificateCapucineUiModel, Composer composer, int i2) {
        GapComposer gapComposer;
        Object next;
        String str;
        String sku;
        String str2;
        GapComposer gapComposerH = composer.h(-205700547);
        int i3 = (gapComposerH.y(certificateCapucineUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Iterator<E> it = CertificateCapucineData.b().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                sku = ((CertificateCapucineData) next).getSku();
                str2 = certificateCapucineUiModel.f55818c;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            } while (!Intrinsics.c(sku, str2));
            CertificateCapucineData certificateCapucineData = (CertificateCapucineData) next;
            Integer numValueOf = certificateCapucineData != null ? Integer.valueOf(certificateCapucineData.getDescriptionStringId()) : null;
            if (numValueOf == null) {
                gapComposerH.L(893528753);
                gapComposerH.Z(false);
                str = null;
            } else {
                gapComposerH.L(893528754);
                String strC = StringResources_androidKt.c(gapComposerH, numValueOf.intValue());
                gapComposerH.Z(false);
                str = strC;
            }
            if (str == null) {
                gapComposerH.L(893632324);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else {
                gapComposerH.L(893632325);
                Modifier modifierK = PaddingKt.k(tr.d("CapucineStory", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
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
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.story_capucines_title), ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("CapucineStory"), Alignment.Companion.o), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).d, gapComposerH, 0, 0, 131064);
                TextKt.c(str, PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                gapComposer.Z(false);
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yk(certificateCapucineUiModel, i2, 2);
        }
    }

    public static final void d(CertificateCapucineUiModel certificateCapucineUiModel, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-2046946405);
        int i4 = (gapComposerH.y(certificateCapucineUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CertificateCapucineScreen");
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1347604137, new o0(function0, 20), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-117539988, new f1(certificateCapucineUiModel, context, 17), gapComposerH);
            gapComposer = gapComposerH;
            i3 = 1;
            ScaffoldKt.a(dTFunctionNameModifier, composableLambdaImplB, null, null, null, 0, 0L, 0L, null, composableLambdaImplB2, gapComposer, 805306422, 508);
        } else {
            gapComposer = gapComposerH;
            i3 = 1;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xk(certificateCapucineUiModel, function0, i2, i3);
        }
    }
}
