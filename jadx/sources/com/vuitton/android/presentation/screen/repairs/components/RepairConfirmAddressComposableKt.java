package com.vuitton.android.presentation.screen.repairs.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBuilder;
import com.vuitton.android.presentation.screen.account.addressbook.mappers.AddressMapperKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.account.profile.MapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairAddressCardComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import defpackage.a;
import defpackage.ae0;
import defpackage.mf;
import defpackage.n00;
import defpackage.p0;
import defpackage.p9;
import defpackage.tr;
import defpackage.tr0;
import defpackage.u1;
import defpackage.ur0;
import defpackage.v8;
import defpackage.y3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;", "viewStateAssessment", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairConfirmAddressComposableKt {
    public static final void a(RepairViewModel repairViewModel, DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function1 function5, Function1 function6, Composer composer, int i2) {
        boolean z;
        int i3;
        int i4;
        repairViewModel.getClass();
        distantRepairAssessmentViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(193787740);
        int i5 = i2 | (gapComposerH.K(repairViewModel) ? 4 : 2) | (gapComposerH.K(distantRepairAssessmentViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432);
        if (gapComposerH.p(i5 & 1, (38347923 & i5) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(repairViewModel.getI(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(distantRepairAssessmentViewModel.getH(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(repairViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Unit unit = Unit.f71739a;
            int i6 = i5 & 14;
            int i7 = i5 & 112;
            boolean z2 = (i7 == 32) | (i6 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$1$1(repairViewModel, distantRepairAssessmentViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean zK = ((i5 & 3670016) == 1048576) | (i7 == 32) | gapComposerH.K(mutableStateB);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$2$1(distantRepairAssessmentViewModel, function4, mutableStateB, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean z3 = (i7 == 32) | ((i5 & 29360128) == 8388608);
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$3$1(distantRepairAssessmentViewModel, function5, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX4;
            boolean zY = (i7 == 32) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                z = false;
                objX5 = new RepairConfirmAddressComposableKt$RepairConfirmAddressComposable$4$1(distantRepairAssessmentViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX5);
            } else {
                z = false;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            if (((AssessmentViewState) mutableStateB2.getF10755b()).f57357b || ((RepairsViewState) mutableStateB.getF10755b()).f64014b || ((AssessmentViewState) mutableStateB2.getF10755b()).f57363j) {
                i3 = 7;
                i4 = 0;
                gapComposerH.L(696672723);
                RepairConfirmAddressLoadingScreenKt.a(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(696746100);
                int i8 = i5 << 3;
                i3 = 7;
                d((RepairsViewState) mutableStateB.getF10755b(), (AssessmentViewState) mutableStateB2.getF10755b(), snackbarHostState, function0, function1, function2, function3, (ContactUsUiModel) mutableStateA.getF10755b(), function6, lVModalBottomSheetStateF, gapComposerH, (i8 & 3670016) | (i8 & 7168) | KyberEngine.KyberPolyBytes | (i8 & 57344) | (i8 & ImageMetadata.JPEG_GPS_COORDINATES) | (i5 & 234881024) | (LVModalBottomSheetState.f48797e << 27));
                gapComposerH = gapComposerH;
                i4 = 0;
                gapComposerH.Z(false);
            }
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(i4, i3, gapComposerH, z);
            int i9 = i6 != 4 ? i4 : 1;
            Object objX6 = gapComposerH.x();
            if (i9 != 0 || objX6 == composer$Companion$Empty$1) {
                objX6 = new tr0(repairViewModel, i4);
                gapComposerH.q(objX6);
            }
            Function0 function7 = (Function0) objX6;
            int i10 = LVModalBottomSheetState.f48797e;
            GapComposer gapComposer = gapComposerH;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function6, function7, gapComposer, (i10 << 6) | (i10 << 3) | ((i5 >> 15) & 7168));
            gapComposerH = gapComposer;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p9(repairViewModel, distantRepairAssessmentViewModel, function0, function1, function2, function3, function4, function5, function6, i2, 5);
        }
    }

    public static final void b(int i2, Composer composer, Function0 function0, boolean z) {
        GapComposer gapComposerH = composer.h(-1582754951);
        int i3 = (gapComposerH.b(z) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("RepairsConfirmAddressBottomContent", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVButtonKt.b(((i3 << 24) & 1879048192) | 12582912, 376, gapComposerH, PaddingKt.l(tr.d("RepairsConfirmAddressBottomContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, z ? R.string.dr_pbl_confirm : R.string.confirm), function0, false, true, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new y3(z, function0, i2);
        }
    }

    public static final void c(Modifier modifier, RepairsViewState repairsViewState, AssessmentViewState assessmentViewState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        String strA;
        String strA2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "RepairsConfirmAddressMainContent");
        }
        GapComposer gapComposerH = composer.h(-649081378);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(repairsViewState) ? 32 : 16) | (gapComposerH.y(assessmentViewState) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(PaddingKt.k(modifierE, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_title_confirm_shipping_address), PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "RepairsConfirmAddressMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_text_shipping_address2), PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            int i4 = i3 << 6;
            LVLinkKt.a(PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_contact), true, null, false, function0, gapComposerH, (458752 & i4) | KyberEngine.KyberPolyBytes, 24);
            gapComposerH = gapComposerH;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AddressUiModel addressUiModel = assessmentViewState.g;
            AddressUiModel addressUiModel2 = assessmentViewState.f57361h;
            if (addressUiModel != null) {
                strA = AddressBuilder.a(context, JsonProviderKt.f43520a, repairsViewState.f64013a, AddressMapperKt.a(MapperKt.b(addressUiModel)));
            } else {
                CareServiceDetailUiModel careServiceDetailUiModel = repairsViewState.f64018h;
                strA = careServiceDetailUiModel != null ? CareServiceDetailMapperKt.a(careServiceDetailUiModel, context, JsonProviderKt.f43520a) : null;
            }
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            AddressUiModel addressUiModel3 = assessmentViewState.g;
            String str = addressUiModel3 != null ? addressUiModel3.f52676f : null;
            if (str == null) {
                str = "";
            }
            String str2 = addressUiModel3 != null ? addressUiModel3.g : null;
            if (str2 == null) {
                str2 = "";
            }
            if (strA == null) {
                strA = "";
            }
            DistantRepairAddressCardComponentKt.a(modifierM, R.string.dr_title_shipping_address, str, str2, strA, R.string.dr_modify_address_cta, function1, gapComposerH, i4 & 3670016);
            if (assessmentViewState.q) {
                gapComposerH.L(-1968059147);
                if (addressUiModel2 != null) {
                    strA2 = AddressBuilder.a(context, JsonProviderKt.f43520a, repairsViewState.f64013a, AddressMapperKt.a(MapperKt.b(addressUiModel2)));
                } else {
                    CareServiceDetailUiModel careServiceDetailUiModel2 = repairsViewState.f64018h;
                    strA2 = careServiceDetailUiModel2 != null ? CareServiceDetailMapperKt.a(careServiceDetailUiModel2, context, JsonProviderKt.f43520a) : null;
                }
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                String str3 = addressUiModel2 != null ? addressUiModel2.f52676f : null;
                String str4 = str3 == null ? "" : str3;
                String str5 = addressUiModel2 != null ? addressUiModel2.g : null;
                DistantRepairAddressCardComponentKt.a(modifierM2, R.string.dr_title_billing_address, str4, str5 == null ? "" : str5, strA2 == null ? "" : strA2, R.string.dr_modify_billing_address_cta, function2, gapComposerH, (i3 << 3) & 3670016);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1967051058);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifierE, repairsViewState, assessmentViewState, function0, function1, function2, i2, 29);
        }
    }

    public static final void d(RepairsViewState repairsViewState, AssessmentViewState assessmentViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, ContactUsUiModel contactUsUiModel, Function1 function4, LVModalBottomSheetState lVModalBottomSheetState, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1475210465);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(repairsViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(assessmentViewState) ? 32 : 16;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= (16777216 & i2) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= (1073741824 & i2) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(945103835, new v8(4, lVModalBottomSheetState, contactUsUiModel, function0, function4), gapComposerH), ComposableLambdaKt.b(1658301754, new ur0(repairsViewState, function3, 0), gapComposerH), ComposableLambdaKt.b(-1923467623, new ae0(snackbarHostState, 29), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(410390064, new p0(repairsViewState, assessmentViewState, contactUsUiModel, lVModalBottomSheetState, function1, function2, 20), gapComposerH), gapComposer, 805309872, 497);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(repairsViewState, assessmentViewState, snackbarHostState, function0, function1, function2, function3, contactUsUiModel, function4, lVModalBottomSheetState, i2, 3);
        }
    }
}
