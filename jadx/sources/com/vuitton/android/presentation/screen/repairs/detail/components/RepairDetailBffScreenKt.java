package com.vuitton.android.presentation.screen.repairs.detail.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.AppointmentInformationUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.AssessmentUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.HeaderUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.ShippingInformationUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import defpackage.as0;
import defpackage.cj;
import defpackage.ds0;
import defpackage.es0;
import defpackage.fs0;
import defpackage.g2;
import defpackage.h0;
import defpackage.jm0;
import defpackage.la;
import defpackage.ll0;
import defpackage.m8;
import defpackage.ma;
import defpackage.n00;
import defpackage.n8;
import defpackage.ni0;
import defpackage.o60;
import defpackage.pq0;
import defpackage.qd;
import defpackage.sm0;
import defpackage.tf0;
import defpackage.tr;
import defpackage.uv;
import defpackage.v8;
import defpackage.va;
import defpackage.wz;
import defpackage.xe0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailBffScreenKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63817a;

        static {
            int[] iArr = new int[CareServiceAction.values().length];
            try {
                iArr[CareServiceAction.AwaitingPayment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CareServiceAction.Cancellable.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CareServiceAction.ConfirmEstimate.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CareServiceAction.ConfirmAddress.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CareServiceAction.TrackMyShipment.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CareServiceAction.ContactAnExpert.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f63817a = iArr;
        }
    }

    public static final void a(AppointmentInformationUiModel appointmentInformationUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1675107543);
        int i3 = (gapComposerH.K(appointmentInformationUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = appointmentInformationUiModel.f64022b;
            if (str == null) {
                str = "";
            }
            k(null, str, ComposableLambdaKt.b(-292742081, new xe0(appointmentInformationUiModel, 12), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ll0(appointmentInformationUiModel, i2, 9);
        }
    }

    public static final void b(AssessmentUiModel assessmentUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-672896277);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(assessmentUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            k(null, assessmentUiModel.f64025b, ComposableLambdaKt.b(-1709244333, new ni0(assessmentUiModel, function0, 17), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(assessmentUiModel, function0, i2, 27);
        }
    }

    public static final void c(Modifier modifier, String str, Function0 function0, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BottomButtonView");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-886822664);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
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
            LVButtonKt.b(((i3 << 3) & 896) | ((i3 << 21) & 1879048192), 504, gapComposerH, PaddingKt.l(tr.d("BottomButtonView", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, str, function0, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ds0(i2, 0, modifier2, str, function0);
        }
    }

    public static final void d(int i2, Composer composer, String str) {
        GapComposer gapComposerH = composer.h(-919612070);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            k(null, StringResources_androidKt.c(gapComposerH, R.string.dr_context_request_title), ComposableLambdaKt.b(111289026, new la(str, 7), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ma(str, i2, 6);
        }
    }

    public static final void e(String str, Function0 function0, Composer composer, int i2) {
        Function0 function1 = function0;
        GapComposer gapComposerH = composer.h(1148916310);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("ExpertNotes", 1.0f);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierI = PaddingKt.i(BorderKt.a(modifierD, 1.0f, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_mylv_repairs_detail_care_expert_note_title), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("ExpertNotes"), LVAppDesignKitTheme.l(gapComposerH).f48415c));
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, i3 & 14, 0, 131066);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("ExpertNotes"), LVAppDesignKitTheme.l(gapComposerH).d));
            LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.read_more), false, null, false, function0, gapComposerH, (i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES, 29);
            function1 = function0;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qd(str, function1, i2, 16);
        }
    }

    public static final void f(HeaderUiModel headerUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-303519017);
        int i3 = (gapComposerH.K(headerUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            k(null, StringResources_androidKt.c(gapComposerH, R.string.dr_repair), ComposableLambdaKt.b(-1959441857, new ni0(headerUiModel, (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b), 15), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ll0(headerUiModel, i2, 10);
        }
    }

    public static final void g(String str, String str2, Composer composer, int i2) {
        String str3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-793034405);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("HorizontalSection", 1.0f);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
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
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i3 & 14, 0, 131066);
            SpacerKt.a(gapComposerH, SizeKt.s(new DTFunctionNameModifier("HorizontalSection"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            str3 = str2;
            TextKt.c(str3, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i3 >> 3) & 14, 0, 131066);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            str3 = str2;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new va(str, str3, i2, 5);
        }
    }

    public static final void h(Modifier modifier, final RepairsBffViewState repairsBffViewState, final Function0 function0, final Function0 function1, final Function1 function2, final Function1 function3, final Function0 function4, final Function0 function5, final Function1 function6, Composer composer, final int i2) {
        Function0 function7;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function8;
        int i3;
        boolean z;
        int i4;
        ConfigurationButton configurationButton;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RepairsDetailBffBottomContent");
        }
        GapComposer gapComposerH = composer.h(-770497715);
        int i5 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(repairsBffViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432);
        final int i6 = 0;
        if (gapComposerH.p(i5 & 1, (i5 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CareServiceDetailUiModel careServiceDetailUiModel = repairsBffViewState.f64088h;
            if (careServiceDetailUiModel != null) {
                CareServiceAction careServiceAction = careServiceDetailUiModel.f64040f;
                int i7 = careServiceAction == null ? -1 : WhenMappings.f63817a[careServiceAction.ordinal()];
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                switch (i7) {
                    case 1:
                        gapComposerH.L(-1591616675);
                        function7 = function4;
                        c(modifierE, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_proceed_payment), function7, gapComposerH, (i5 & 14) | ((i5 >> 12) & 896));
                        gapComposerH.Z(false);
                        break;
                    case 2:
                        gapComposerH.L(-1591140205);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                        int iHashCode = Long.hashCode(gapComposerH.T);
                        PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                        Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
                        ComposeUiNode.b0.getClass();
                        Function0 function9 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function9);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        boolean z2 = repairsBffViewState.f64091k.f64012e && careServiceDetailUiModel.f64043j != null;
                        if (z2) {
                            gapComposerH.L(-844387168);
                            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_modify_appointment);
                            i4 = 234881024;
                            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.l(tr.d("RepairsDetailBffBottomContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), "careservicesDetail_rescheduleAppointment_button");
                            i3 = 67108864;
                            boolean z3 = ((i5 & 234881024) == 67108864) | ((i5 & 7168) == 2048);
                            Object objX = gapComposerH.x();
                            if (z3 || objX == composer$Companion$Empty$1) {
                                objX = new wz(function6, function1, 9);
                                gapComposerH.q(objX);
                            }
                            Function0 function10 = (Function0) objX;
                            z = false;
                            LVButtonKt.b(0, 504, gapComposerH, modifierE2, configurationButton2, null, null, strC, function10, false, false, false);
                            gapComposerH.Z(false);
                        } else {
                            i3 = 67108864;
                            z = false;
                            i4 = 234881024;
                            gapComposerH.L(-843387170);
                            gapComposerH.Z(false);
                        }
                        if (z2) {
                            gapComposerH.L(1912460045);
                            configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                        } else {
                            gapComposerH.L(1912461419);
                            configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                        }
                        gapComposerH.Z(z);
                        ConfigurationButton configurationButton3 = configurationButton;
                        String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_cancel_appointment);
                        Modifier modifierE3 = ModifierExtKt.e(PaddingKt.l(tr.d("RepairsDetailBffBottomContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48413a, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), "careservicesDetail_cancelCareService_button");
                        boolean z4 = ((i5 & i4) == i3 ? true : z) | ((i5 & 896) == 256 ? true : z);
                        Object objX2 = gapComposerH.x();
                        if (z4 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new wz(function6, function0, 10);
                            gapComposerH.q(objX2);
                        }
                        LVButtonKt.b(0, 504, gapComposerH, modifierE3, configurationButton3, null, null, strC2, (Function0) objX2, false, false, false);
                        gapComposerH.Z(true);
                        gapComposerH.Z(z);
                        function7 = function4;
                        break;
                        break;
                    case 3:
                        gapComposerH.L(-1588838579);
                        String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_accept_estimate);
                        boolean zY = ((57344 & i5) == 16384) | gapComposerH.y(repairsBffViewState);
                        Object objX3 = gapComposerH.x();
                        if (zY || objX3 == composer$Companion$Empty$1) {
                            objX3 = new Function0() { // from class: cs0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i6;
                                    RepairsBffViewState repairsBffViewState2 = repairsBffViewState;
                                    Function1 function11 = function2;
                                    switch (i8) {
                                        case 0:
                                            function11.invoke(new CareServiceIdUiModel(repairsBffViewState2.f64088h.f64037b));
                                            break;
                                        default:
                                            function11.invoke(repairsBffViewState2.f64088h.f64041h);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX3);
                        }
                        c(modifierE, strC3, (Function0) objX3, gapComposerH, i5 & 14);
                        gapComposerH.Z(false);
                        function7 = function4;
                        break;
                    case 4:
                        gapComposerH.L(-1588531896);
                        c(modifierE, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_confirm_shipping_address), function4, gapComposerH, ((i5 >> 12) & 896) | (i5 & 14));
                        gapComposerH.Z(false);
                        function7 = function4;
                        break;
                    case 5:
                        gapComposerH.L(-1588242294);
                        String str = careServiceDetailUiModel.f64041h;
                        if (str == null || !(!StringsKt.w(str))) {
                            gapComposerH.L(-1587780363);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1588164763);
                            String strC4 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_track_my_shippment);
                            boolean zY2 = ((458752 & i5) == 131072) | gapComposerH.y(repairsBffViewState);
                            Object objX4 = gapComposerH.x();
                            if (zY2 || objX4 == composer$Companion$Empty$1) {
                                final int i8 = 1;
                                objX4 = new Function0() { // from class: cs0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i9 = i8;
                                        RepairsBffViewState repairsBffViewState2 = repairsBffViewState;
                                        Function1 function11 = function3;
                                        switch (i9) {
                                            case 0:
                                                function11.invoke(new CareServiceIdUiModel(repairsBffViewState2.f64088h.f64037b));
                                                break;
                                            default:
                                                function11.invoke(repairsBffViewState2.f64088h.f64041h);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposerH.q(objX4);
                            }
                            c(modifierE, strC4, (Function0) objX4, gapComposerH, i5 & 14);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                        function7 = function4;
                        break;
                    case 6:
                        gapComposerH.L(-1587716782);
                        c(modifierE, StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_contact), function5, gapComposerH, ((i5 >> 15) & 896) | (i5 & 14));
                        gapComposerH.Z(false);
                        function7 = function4;
                        break;
                    default:
                        gapComposerH.L(-1587480717);
                        gapComposerH.Z(false);
                        function7 = function4;
                        break;
                }
            } else {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final Modifier modifier2 = modifierE;
                final int i9 = 0;
                function8 = new Function2(modifier2, repairsBffViewState, function0, function1, function2, function3, function4, function5, function6, i2, i9) { // from class: bs0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f20940b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f20941c;
                    public final /* synthetic */ RepairsBffViewState d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ Function0 f20942e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function0 f20943f;
                    public final /* synthetic */ Function1 g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public final /* synthetic */ Function1 f20944h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public final /* synthetic */ Function0 f20945i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    public final /* synthetic */ Function0 f20946j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    public final /* synthetic */ Function1 f20947k;

                    {
                        this.f20940b = i9;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (this.f20940b) {
                            case 0:
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(1);
                                RepairDetailBffScreenKt.h(this.f20941c, this.d, this.f20942e, this.f20943f, this.g, this.f20944h, this.f20945i, this.f20946j, this.f20947k, (Composer) obj, iA);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                int iA2 = RecomposeScopeImplKt.a(1);
                                RepairDetailBffScreenKt.h(this.f20941c, this.d, this.f20942e, this.f20943f, this.g, this.f20944h, this.f20945i, this.f20946j, this.f20947k, (Composer) obj, iA2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            }
            recomposeScopeImplB0.d = function8;
        }
        function7 = function4;
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifierE;
            final int i10 = 1;
            final Function0 function11 = function7;
            function8 = new Function2(modifier3, repairsBffViewState, function0, function1, function2, function3, function11, function5, function6, i2, i10) { // from class: bs0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f20940b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f20941c;
                public final /* synthetic */ RepairsBffViewState d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f20942e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f20943f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function1 f20944h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f20945i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f20946j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f20947k;

                {
                    this.f20940b = i10;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    switch (this.f20940b) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(1);
                            RepairDetailBffScreenKt.h(this.f20941c, this.d, this.f20942e, this.f20943f, this.g, this.f20944h, this.f20945i, this.f20946j, this.f20947k, (Composer) obj, iA);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            int iA2 = RecomposeScopeImplKt.a(1);
                            RepairDetailBffScreenKt.h(this.f20941c, this.d, this.f20942e, this.f20943f, this.g, this.f20944h, this.f20945i, this.f20946j, this.f20947k, (Composer) obj, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function8;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v2, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r15v6, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static final void i(Modifier modifier, RepairDetailUiModel repairDetailUiModel, Function1 function1, Function0 function0, Composer composer, int i2) {
        RepairDetailUiModel repairDetailUiModel2;
        Function1 function2;
        ?? r15;
        Applier applier;
        Function0 function3;
        ShippingInformationUiModel shippingInformationUiModel;
        Function1 function4;
        Function2 function5;
        Function2 function6;
        Function2 function7;
        BiasAlignment.Horizontal horizontal;
        boolean z;
        ?? r2;
        ?? r16;
        int i3;
        Object obj;
        Modifier modifierE = modifier;
        String str = repairDetailUiModel.f64076c;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "RepairsDetailBffMainContent");
        }
        GapComposer gapComposerH = composer.h(-2056276522);
        Applier applier2 = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(repairDetailUiModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(modifierE, ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal2, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Function2 function9 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function9);
            Function2 function10 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function11 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function11);
            Function1 function12 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function12);
            Function2 function13 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function13);
            List list = repairDetailUiModel.f64080i;
            AssessmentUiModel assessmentUiModel = repairDetailUiModel.g;
            String str2 = repairDetailUiModel.f64079h;
            AppointmentInformationUiModel appointmentInformationUiModel = repairDetailUiModel.f64078f;
            ShippingInformationUiModel shippingInformationUiModel2 = repairDetailUiModel.f64077e;
            if (str != null) {
                Modifier modifierA = ClipKt.a(n00.i(gapComposerH, -1734284009, "RepairsDetailBffMainContent"), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                applier = applier2;
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
                cj.t(iHashCode2, gapComposerH, function11, gapComposerH, function12);
                Modifier modifierA3 = AspectRatioKt.a(n00.e(gapComposerH, modifierC2, function13, "RepairsDetailBffMainContent", 1.0f), 1.0f, false);
                str.getClass();
                GapComposer gapComposer = gapComposerH;
                horizontal = horizontal2;
                function3 = function8;
                shippingInformationUiModel = shippingInformationUiModel2;
                function4 = function12;
                function5 = function11;
                function6 = function10;
                function7 = function13;
                r2 = 0;
                z = true;
                ImageLoaderKt.b(modifierA3, str, null, null, null, 0, false, null, null, null, gapComposer, 6, 2044);
                gapComposer.Z(true);
                gapComposer.Z(false);
                r16 = gapComposer;
            } else {
                applier = applier2;
                function3 = function8;
                shippingInformationUiModel = shippingInformationUiModel2;
                function4 = function12;
                function5 = function11;
                function6 = function10;
                function7 = function13;
                horizontal = horizontal2;
                z = true;
                r2 = 0;
                Modifier modifierA4 = AspectRatioKt.a(o60.c(gapComposerH, -1733671015, "RepairsDetailBffMainContent", 1.0f), 1.0f, false);
                Painter painterA2 = PainterResources_androidKt.a(2131230926, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                ImageKt.a(painterA2, null, modifierA4, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 25016, 104);
                GapComposer gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
                r16 = gapComposer2;
            }
            SpacerKt.a(r16, SizeKt.f(new DTFunctionNameModifier("RepairsDetailBffMainContent"), LVAppDesignKitTheme.l(r16).f48416e));
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("RepairsDetailBffMainContent"), LVAppDesignKitTheme.l(r16).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(r16).f48416e), horizontal, r16, r2);
            int iHashCode3 = Long.hashCode(r16.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = r16.U();
            Modifier modifierC3 = ComposedModifierKt.c(r16, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            r16.B();
            if (r16.S) {
                r16.C(function3);
            } else {
                r16.o();
            }
            Updater.c(r16, columnMeasurePolicyA2, function9);
            Updater.c(r16, persistentCompositionLocalMapU3, function6);
            cj.t(iHashCode3, r16, function5, r16, function4);
            Updater.c(r16, modifierC3, function7);
            repairDetailUiModel2 = repairDetailUiModel;
            f(repairDetailUiModel2.d, r16, r2);
            ShippingInformationUiModel shippingInformationUiModel3 = shippingInformationUiModel;
            if (shippingInformationUiModel3 != null) {
                r16.L(366685877);
                i3 = i4;
                int i5 = (r16.y(repairDetailUiModel2) ? 1 : 0) | ((i3 & 896) == 256 ? z : r2);
                Object objX = r16.x();
                if (i5 != 0 || objX == Composer.Companion.f7939a) {
                    function2 = function1;
                    jm0 jm0Var = new jm0(function2, repairDetailUiModel2, 16);
                    r16.q(jm0Var);
                    obj = jm0Var;
                } else {
                    function2 = function1;
                    obj = objX;
                }
                l(shippingInformationUiModel3, (Function0) obj, r16, r2);
                r16.Z(r2);
            } else {
                i3 = i4;
                function2 = function1;
                r16.L(366942464);
                r16.Z(r2);
            }
            if (appointmentInformationUiModel != null) {
                r16.L(367008556);
                a(appointmentInformationUiModel, r16, r2);
                r16.Z(r2);
            } else {
                r16.L(367120032);
                r16.Z(r2);
            }
            if (StringKtExtKt.g(str2)) {
                r16.L(367188945);
                d(r2, r16, str2);
                r16.Z(r2);
            } else {
                r16.L(367264864);
                r16.Z(r2);
            }
            if (assessmentUiModel != null) {
                r16.L(367320726);
                b(assessmentUiModel, function0, r16, (i3 >> 6) & 112);
                r16.Z(r2);
            } else {
                r16.L(367484096);
                r16.Z(r2);
            }
            if (list != null) {
                r16.L(367540485);
                RepairDetailFollowUpBffKt.d(r2, r16, list);
                r16.Z(r2);
            } else {
                r16.L(367627936);
                r16.Z(r2);
            }
            r16.Z(z);
            r16.Z(z);
            r15 = r16;
        } else {
            modifierE = modifierE;
            repairDetailUiModel2 = repairDetailUiModel;
            function2 = function1;
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            r15 = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r15.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) modifierE, (Object) repairDetailUiModel2, (Object) function2, function0, i2, 29);
        }
    }

    public static final void j(final RepairsBffViewState repairsBffViewState, final AssessmentBffViewState assessmentBffViewState, final SnackbarHostState snackbarHostState, final DistantRepairCalendarViewState distantRepairCalendarViewState, final Function3 function3, final Function3 function4, final Function0 function0, final Function0 function1, final Function1 function2, final Function0 function5, final Function1 function6, final Function1 function7, final Function1 function8, final Function0 function9, final ContactUsUiModel contactUsUiModel, final Function1 function10, final Function1 function11, final LVModalBottomSheetState lVModalBottomSheetState, Composer composer, final int i2, final int i3) {
        int i4;
        GapComposer gapComposer;
        MutableState mutableState;
        DistantRepairContactMethod distantRepairContactMethod;
        final RepairsBffViewState repairsBffViewState2 = repairsBffViewState;
        repairsBffViewState2.getClass();
        assessmentBffViewState.getClass();
        snackbarHostState.getClass();
        distantRepairCalendarViewState.getClass();
        function3.getClass();
        function4.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        contactUsUiModel.getClass();
        function11.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(1303549004);
        int i5 = i2 | (gapComposerH.y(repairsBffViewState2) ? 4 : 2) | (gapComposerH.y(assessmentBffViewState) ? 32 : 16) | (gapComposerH.y(distantRepairCalendarViewState) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        int i6 = i5 | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= (32768 & i3) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.y(function10) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i4 |= gapComposerH.y(function11) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i4 |= (i3 & 16777216) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i4 & 4793491) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            DistantRepairContactMethod distantRepairContactMethod2 = null;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState2 = (MutableState) objX;
            boolean zY = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new m8(lVModalBottomSheetStateF, mutableState2, 10);
                gapComposerH.q(objX2);
            }
            Function0 function12 = (Function0) objX2;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new n8(lVModalBottomSheetStateF, mutableState2, 6);
                gapComposerH.q(objX3);
            }
            final Function1 function13 = (Function1) objX3;
            if (repairsBffViewState2.f64089i) {
                function1.mo47invoke();
            }
            CareServiceDetailUiModel careServiceDetailUiModel = repairsBffViewState2.f64088h;
            if (careServiceDetailUiModel != null) {
                distantRepairContactMethod2 = careServiceDetailUiModel.m;
            }
            BottomSheetScreen bottomSheetScreen = (BottomSheetScreen) mutableState2.getF10755b();
            boolean zY3 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.y(repairsBffViewState2) | ((i6 & 57344) == 16384) | gapComposerH.d(distantRepairContactMethod2 == null ? -1 : distantRepairContactMethod2.ordinal());
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                DistantRepairContactMethod distantRepairContactMethod3 = distantRepairContactMethod2;
                RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1 repairDetailBffScreenKt$RepairsDetailBffScreen$2$1 = new RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1(function10, repairsBffViewState2, mutableState2, function3, distantRepairContactMethod3, null);
                mutableState = mutableState2;
                distantRepairContactMethod = distantRepairContactMethod3;
                gapComposerH.q(repairDetailBffScreenKt$RepairsDetailBffScreen$2$1);
                objX4 = repairDetailBffScreenKt$RepairsDetailBffScreen$2$1;
            } else {
                distantRepairContactMethod = distantRepairContactMethod2;
                mutableState = mutableState2;
            }
            EffectsKt.e(gapComposerH, bottomSheetScreen, (Function2) objX4);
            repairsBffViewState2 = repairsBffViewState;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1183246584, new v8(5, lVModalBottomSheetState, contactUsUiModel, function0, function11), gapComposerH), ComposableLambdaKt.b(1368663271, new Function2() { // from class: com.vuitton.android.presentation.screen.repairs.detail.components.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        RepairsBffViewState repairsBffViewState3 = repairsBffViewState;
                        if (repairsBffViewState3.f64088h != null) {
                            Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(pq0.j(1723070029, composer2, "RepairsDetailBffScreen$lambda$8"), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a));
                            LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                            boolean zY4 = composer2.y(lVModalBottomSheetState2);
                            Object objX5 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zY4 || objX5 == composer$Companion$Empty$2) {
                                RepairDetailBffScreenKt$RepairsDetailBffScreen$4$1$1 repairDetailBffScreenKt$RepairsDetailBffScreen$4$1$1 = new RepairDetailBffScreenKt$RepairsDetailBffScreen$4$1$1(0, lVModalBottomSheetState2, LVModalBottomSheetState.class, "show", "show()V", 0);
                                composer2.q(repairDetailBffScreenKt$RepairsDetailBffScreen$4$1$1);
                                objX5 = repairDetailBffScreenKt$RepairsDetailBffScreen$4$1$1;
                            }
                            KFunction kFunction = (KFunction) objX5;
                            boolean zY5 = composer2.y(repairsBffViewState3);
                            Function0 function14 = function5;
                            boolean zK = zY5 | composer2.K(function14);
                            Function1 function15 = function13;
                            boolean zK2 = zK | composer2.K(function15);
                            Object objX6 = composer2.x();
                            if (zK2 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new sm0(repairsBffViewState3, function14, function15, 10);
                                composer2.q(objX6);
                            }
                            Function0 function16 = (Function0) objX6;
                            boolean zK3 = composer2.K(function15);
                            Object objX7 = composer2.x();
                            if (zK3 || objX7 == composer$Companion$Empty$2) {
                                objX7 = new tf0(function15, 13);
                                composer2.q(objX7);
                            }
                            RepairDetailBffScreenKt.h(modifierB, repairsBffViewState3, function16, (Function0) objX7, function7, function8, function9, (Function0) kFunction, function10, composer2, 0);
                            composer2.F();
                        } else {
                            composer2.L(1724081435);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), ComposableLambdaKt.b(-374394170, new fs0(snackbarHostState, 0), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-312667427, new h0(repairsBffViewState2, lVModalBottomSheetStateF, function2, function13, mutableState, distantRepairCalendarViewState, snackbarHostState, function10, function4, distantRepairContactMethod, function6, function5, function12), gapComposerH), gapComposerH, 805309872, 497);
            gapComposer = gapComposerH;
            if (repairsBffViewState2.f64084b || assessmentBffViewState.f57351j) {
                gapComposer.L(-1058156748);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1058124074);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: yr0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    RepairDetailBffScreenKt.j(repairsBffViewState2, assessmentBffViewState, snackbarHostState, distantRepairCalendarViewState, function3, function4, function0, function1, function2, function5, function6, function7, function8, function9, contactUsUiModel, function10, function11, lVModalBottomSheetState, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void k(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Section");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(1370294173);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Section");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(dTFunctionNameModifier, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
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
            Modifier modifierB2 = BackgroundKt.b(tr.d("Section", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            TextKt.c(str, PaddingKt.i(tr.e(gapComposerH, modifierC2, function5, "Section"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            gapComposer = gapComposerH;
            Modifier modifierJ = PaddingKt.j(o60.f(gapComposer, true, "Section"), LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48417f);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48416e), horizontal, gapComposer, 0);
            int iHashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierJ);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA2, function2);
            Updater.c(gapComposer, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposer, function4, gapComposer, function1);
            Updater.c(gapComposer, modifierC3, function5);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.A(ColumnScopeInstance.f4944a, gapComposer, 54);
            gapComposer.Z(true);
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new as0(modifier2, str, composableLambdaImpl2, i2, 0);
        }
    }

    public static final void l(ShippingInformationUiModel shippingInformationUiModel, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-320876001);
        int i3 = (gapComposerH.y(shippingInformationUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            k(null, shippingInformationUiModel.f64092b, ComposableLambdaKt.b(2006241671, new ni0(shippingInformationUiModel, function0, 16), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(shippingInformationUiModel, function0, i2, 0);
        }
    }

    public static final void m(String str, List list, Composer composer, int i2) {
        int i3;
        List list2;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-893699648);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(str) ? 4 : 2);
        } else {
            i3 = i2;
        }
        int i4 = i3 | (gapComposerH.y(list) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = tr.d("VerticalSection", 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
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
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i4 & 14, 0, 131066);
            gapComposer = gapComposerH;
            gapComposer.L(2074086344);
            list2 = list;
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                TextKt.c((String) it.next(), null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 131066);
            }
            gapComposer.Z(false);
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            list2 = list;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(list2, i2, 26, str);
        }
    }
}
