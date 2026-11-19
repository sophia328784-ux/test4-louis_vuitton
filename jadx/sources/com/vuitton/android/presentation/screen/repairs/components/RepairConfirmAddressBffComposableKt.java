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
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairAddressCardComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceAddressUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceAddressUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.ae0;
import defpackage.kn0;
import defpackage.mf;
import defpackage.n00;
import defpackage.p0;
import defpackage.p9;
import defpackage.pr0;
import defpackage.tr;
import defpackage.u1;
import defpackage.v8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;", "viewStateAssessment", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "currentAction", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairConfirmAddressBffComposableKt {
    public static final void a(RepairBffViewModel repairBffViewModel, DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function1 function5, Function1 function6, Composer composer, int i2) {
        boolean z;
        int i3;
        int i4;
        repairBffViewModel.getClass();
        distantRepairAssessmentBffViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-1443484418);
        int i5 = i2 | (gapComposerH.K(repairBffViewModel) ? 4 : 2) | (gapComposerH.K(distantRepairAssessmentBffViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432);
        if (gapComposerH.p(i5 & 1, (38347923 & i5) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(repairBffViewModel.getD(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(distantRepairAssessmentBffViewModel.getI(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(repairBffViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            CareServiceDetailUiModel careServiceDetailUiModel = ((RepairsBffViewState) mutableStateB.getF10755b()).f64088h;
            MutableState mutableStateL = SnapshotStateKt.l(careServiceDetailUiModel != null ? careServiceDetailUiModel.f64040f : null, gapComposerH);
            Unit unit = Unit.f71739a;
            int i6 = i5 & 14;
            int i7 = i5 & 112;
            boolean z2 = (i6 == 4) | (i7 == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$1$1(repairBffViewModel, distantRepairAssessmentBffViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean zK = (i7 == 32) | gapComposerH.K(mutableStateL) | ((i5 & 3670016) == 1048576);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$2$1(distantRepairAssessmentBffViewModel, function4, mutableStateL, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean z3 = (i7 == 32) | ((i5 & 29360128) == 8388608);
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$3$1(distantRepairAssessmentBffViewModel, function5, null);
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
                objX5 = new RepairConfirmAddressBffComposableKt$RepairConfirmAddressBffComposable$4$1(distantRepairAssessmentBffViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX5);
            } else {
                z = false;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            if (((AssessmentBffViewState) mutableStateB2.getF10755b()).f57345b || ((RepairsBffViewState) mutableStateB.getF10755b()).f64084b || ((AssessmentBffViewState) mutableStateB2.getF10755b()).f57350i) {
                i3 = 7;
                i4 = 0;
                gapComposerH.L(-1629510383);
                RepairConfirmAddressLoadingScreenKt.a(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1629436913);
                int i8 = i5 << 3;
                i3 = 7;
                c((RepairsBffViewState) mutableStateB.getF10755b(), (AssessmentBffViewState) mutableStateB2.getF10755b(), snackbarHostState, function0, function1, function2, function3, (ContactUsUiModel) mutableStateA.getF10755b(), function6, lVModalBottomSheetStateF, gapComposerH, (i8 & 3670016) | (i8 & 7168) | KyberEngine.KyberPolyBytes | (i8 & 57344) | (i8 & ImageMetadata.JPEG_GPS_COORDINATES) | (i5 & 234881024) | (LVModalBottomSheetState.f48797e << 27));
                gapComposerH = gapComposerH;
                i4 = 0;
                gapComposerH.Z(false);
            }
            ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(i4, i3, gapComposerH, z);
            int i9 = i6 != 4 ? i4 : 1;
            Object objX6 = gapComposerH.x();
            if (i9 != 0 || objX6 == composer$Companion$Empty$1) {
                objX6 = new pr0(repairBffViewModel, i4);
                gapComposerH.q(objX6);
            }
            int i10 = LVModalBottomSheetState.f48797e;
            GapComposer gapComposer = gapComposerH;
            ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function6, (Function0) objX6, gapComposer, (i10 << 6) | (i10 << 3) | ((i5 >> 15) & 7168));
            gapComposerH = gapComposer;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p9(repairBffViewModel, distantRepairAssessmentBffViewModel, function0, function1, function2, function3, function4, function5, function6, i2, 4);
        }
    }

    public static final void b(Modifier modifier, RepairsBffViewState repairsBffViewState, AssessmentBffViewState assessmentBffViewState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        CareServiceDetailUiModel.Assessment assessment;
        CareServiceAddressUiModel careServiceAddressUiModel;
        String strA;
        CareServiceDetailUiModel.Assessment assessment2;
        CareServiceAddressUiModel careServiceAddressUiModel2;
        String strA2;
        CareServiceDetailUiModel.Assessment assessment3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "RepairsConfirmAddressBffMainContent");
        }
        GapComposer gapComposerH = composer.h(867277198);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(repairsBffViewState) ? 32 : 16) | (gapComposerH.y(assessmentBffViewState) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
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
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_title_confirm_shipping_address), PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "RepairsConfirmAddressBffMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_text_shipping_address2), PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressBffMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            int i4 = i3 << 6;
            LVLinkKt.a(PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressBffMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_contact), true, null, false, function0, gapComposerH, (458752 & i4) | KyberEngine.KyberPolyBytes, 24);
            gapComposerH = gapComposerH;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            AddressUiModel addressUiModel = assessmentBffViewState.f57348f;
            AddressUiModel addressUiModel2 = assessmentBffViewState.g;
            CareServiceDetailUiModel careServiceDetailUiModel = repairsBffViewState.f64088h;
            InAppDispatch inAppDispatch = repairsBffViewState.f64083a;
            boolean zK = gapComposerH.K((careServiceDetailUiModel == null || (assessment3 = careServiceDetailUiModel.l) == null) ? null : assessment3.f64047e) | gapComposerH.K(addressUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                if (addressUiModel != null) {
                    strA = AddressBuilder.a(context, JsonProviderKt.f43520a, inAppDispatch, AddressMapperKt.a(MapperKt.b(addressUiModel)));
                } else {
                    if (careServiceDetailUiModel == null || (assessment = careServiceDetailUiModel.l) == null || (careServiceAddressUiModel = assessment.f64047e) == null) {
                        objX = null;
                    } else {
                        strA = CareServiceAddressUiModelKt.a(careServiceAddressUiModel);
                    }
                    gapComposerH.q(objX);
                }
                objX = strA;
                gapComposerH.q(objX);
            }
            String str = (String) objX;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressBffMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String str2 = addressUiModel != null ? addressUiModel.f52676f : null;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = addressUiModel != null ? addressUiModel.g : null;
            if (str3 == null) {
                str3 = "";
            }
            if (str == null) {
                str = "";
            }
            DistantRepairAddressCardComponentKt.a(modifierM, R.string.dr_title_shipping_address, str2, str3, str, R.string.dr_modify_address_cta, function1, gapComposerH, i4 & 3670016);
            if (assessmentBffViewState.p) {
                gapComposerH.L(-1380758731);
                boolean zK2 = gapComposerH.K(addressUiModel2) | gapComposerH.K(inAppDispatch) | gapComposerH.K(careServiceDetailUiModel);
                Object objX2 = gapComposerH.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    if (addressUiModel2 != null) {
                        strA2 = AddressBuilder.a(context, JsonProviderKt.f43520a, inAppDispatch, AddressMapperKt.a(MapperKt.b(addressUiModel2)));
                    } else {
                        if (careServiceDetailUiModel == null || (assessment2 = careServiceDetailUiModel.l) == null || (careServiceAddressUiModel2 = assessment2.f64048f) == null) {
                            objX2 = null;
                        } else {
                            strA2 = CareServiceAddressUiModelKt.a(careServiceAddressUiModel2);
                        }
                        gapComposerH.q(objX2);
                    }
                    objX2 = strA2;
                    gapComposerH.q(objX2);
                }
                String str4 = (String) objX2;
                Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("RepairsConfirmAddressBffMainContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                String str5 = addressUiModel2 != null ? addressUiModel2.f52676f : null;
                String str6 = str5 == null ? "" : str5;
                String str7 = addressUiModel2 != null ? addressUiModel2.g : null;
                DistantRepairAddressCardComponentKt.a(modifierM2, R.string.dr_title_billing_address, str6, str7 == null ? "" : str7, str4 == null ? "" : str4, R.string.dr_modify_billing_address_cta, function2, gapComposerH, (i3 << 3) & 3670016);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1379520002);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifierE, repairsBffViewState, assessmentBffViewState, function0, function1, function2, i2, 28);
        }
    }

    public static final void c(RepairsBffViewState repairsBffViewState, AssessmentBffViewState assessmentBffViewState, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, ContactUsUiModel contactUsUiModel, Function1 function4, LVModalBottomSheetState lVModalBottomSheetState, Composer composer, int i2) {
        int i3;
        SnackbarHostState snackbarHostState2;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1500827911);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(repairsBffViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(assessmentBffViewState) ? 32 : 16;
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
            snackbarHostState2 = snackbarHostState;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(1122960821, new v8(3, lVModalBottomSheetState, contactUsUiModel, function0, function4), gapComposerH), ComposableLambdaKt.b(1535867028, new kn0(function3, 9), gapComposerH), ComposableLambdaKt.b(1948773235, new ae0(snackbarHostState2, 28), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(-394127222, new p0(repairsBffViewState, assessmentBffViewState, contactUsUiModel, lVModalBottomSheetState, function1, function2, 19), gapComposerH), gapComposer, 805309872, 497);
        } else {
            snackbarHostState2 = snackbarHostState;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(repairsBffViewState, assessmentBffViewState, snackbarHostState2, function0, function1, function2, function3, contactUsUiModel, function4, lVModalBottomSheetState, i2, 2);
        }
    }

    public static final void d(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(429906973);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
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
            LVButtonKt.b(((i3 << 27) & 1879048192) | 12582912, 376, gapComposerH, PaddingKt.l(tr.d("RepairsConfirmAddressBottomContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.confirm), function0, false, true, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kn0(i2, 10, function0);
        }
    }
}
