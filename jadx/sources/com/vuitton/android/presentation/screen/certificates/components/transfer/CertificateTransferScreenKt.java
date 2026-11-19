package com.vuitton.android.presentation.screen.certificates.components.transfer;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
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
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.input.ImeAction;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.model.CertificateTransferUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateFormFieldPhone;
import com.vuitton.android.presentation.screen.certificates.model.CompareTo;
import com.vuitton.android.presentation.screen.certificates.model.Email;
import com.vuitton.android.presentation.screen.certificates.model.PhoneNumber;
import com.vuitton.android.presentation.screen.certificates.model.Regex;
import com.vuitton.android.presentation.screen.certificates.model.Required;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import defpackage.a;
import defpackage.g0;
import defpackage.g1;
import defpackage.i1;
import defpackage.n00;
import defpackage.o0;
import defpackage.od;
import defpackage.tf;
import defpackage.tr;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;", "formState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateTransferScreenKt {
    public static final void a(Modifier modifier, InAppDispatch inAppDispatch, CertificateFormState certificateFormState, boolean z, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z2;
        Object obj;
        Modifier modifierE = modifier;
        CertificateFormState certificateFormState2 = certificateFormState;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CertificateTransferForm");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1121150904);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(inAppDispatch) ? 32 : 16) | (gapComposerH.y(certificateFormState2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(modifier2, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_subtitle), n00.g("CertificateTransferForm", "certificateTransfer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CertificateTransferForm"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            CertificateTransferFormEntries certificateTransferFormEntries = CertificateTransferFormEntries.PHONE_NUMBER;
            String entryName = certificateTransferFormEntries.getEntryName();
            String strC = StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_phone_number);
            String str = (String) certificateFormState2.a().get(certificateTransferFormEntries.getEntryName());
            CertificateFormFieldPhone certificateFormFieldPhone = CertificateFormFieldPhone.f55838a;
            List listP = CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_phone_number_format_error)), new PhoneNumber(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_phone_number_format_error)));
            ImeAction.f10785b.getClass();
            int i4 = ImeAction.f10790i;
            CertificateFormField certificateFormField = new CertificateFormField(entryName, strC, str, certificateFormFieldPhone, listP, i4, "certificateTransfer_phone_textField", null, 128, null);
            CertificateTransferFormEntries certificateTransferFormEntries2 = CertificateTransferFormEntries.PHONE_NUMBER_CONFIRMATION;
            CertificateFormField certificateFormField2 = new CertificateFormField(certificateTransferFormEntries2.getEntryName(), StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_phone_number_confirmation), (String) certificateFormState2.a().get(certificateTransferFormEntries2.getEntryName()), certificateFormFieldPhone, CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_phone_number_format_error)), new PhoneNumber(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_phone_number_format_error)), new CompareTo(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_phone_number_not_similar), certificateTransferFormEntries.getEntryName(), certificateFormState2)), i4, "certificateTransfer_phoneConfirm_textField", null, 128, null);
            CertificateTransferFormEntries certificateTransferFormEntries3 = CertificateTransferFormEntries.EMAIL;
            CertificateFormField certificateFormField3 = new CertificateFormField(certificateTransferFormEntries3.getEntryName(), StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_owners_name), (String) certificateFormState2.a().get(certificateTransferFormEntries3.getEntryName()), null, CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_email_format_error)), new Email(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_email_format_error))), i4, "certificateTransfer_mail_textField", null, 136, null);
            CertificateTransferFormEntries certificateTransferFormEntries4 = CertificateTransferFormEntries.EMAIL_CONFIRMATION;
            CertificateFormField certificateFormField4 = new CertificateFormField(certificateTransferFormEntries4.getEntryName(), StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_owners_name_confirmation), (String) certificateFormState2.a().get(certificateTransferFormEntries4.getEntryName()), null, CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_email_format_error)), new Email(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_email_format_error)), new CompareTo(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_email_error), certificateTransferFormEntries3.getEntryName(), certificateFormState2)), i4, "certificateTransfer_mailConfirm_textField", null, 136, null);
            CertificateTransferFormEntries certificateTransferFormEntries5 = CertificateTransferFormEntries.KEYWORD;
            CertificateFormField certificateFormField5 = new CertificateFormField(certificateTransferFormEntries5.getEntryName(), StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_keyword), (String) certificateFormState2.a().get(certificateTransferFormEntries5.getEntryName()), null, CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_keyword_format_error)), new Regex(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_keyword_format_error), ".{8}")), i4, "certificateTransfer_keyword_textField", null, 136, null);
            CertificateTransferFormEntries certificateTransferFormEntries6 = CertificateTransferFormEntries.KEYWORD_CONFIRMATION;
            CertificateFormField certificateFormField6 = new CertificateFormField(certificateTransferFormEntries6.getEntryName(), StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_keyword_confirmation), (String) certificateFormState2.a().get(certificateTransferFormEntries6.getEntryName()), null, CollectionsKt.P(new Required(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_keyword_format_error)), new Regex(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_keyword_format_error), ".{8}"), new CompareTo(StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_keyword_error), certificateTransferFormEntries5.getEntryName(), certificateFormState2)), ImeAction.f10791j, "certificateTransfer_keywordConfirm_textField", null, 136, null);
            boolean zB = gapComposerH.b(InAppDispatchExtKt.c(inAppDispatch));
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zB || objX == composer$Companion$Empty$1) {
                ArrayList arrayList = new ArrayList();
                boolean zC = InAppDispatchExtKt.c(inAppDispatch);
                z2 = true;
                if (zC) {
                    arrayList.add(certificateFormField);
                    arrayList.add(certificateFormField2);
                } else if (zC) {
                    v40.g();
                    return;
                } else {
                    arrayList.add(certificateFormField3);
                    arrayList.add(certificateFormField4);
                }
                arrayList.add(certificateFormField5);
                arrayList.add(certificateFormField6);
                gapComposerH.q(arrayList);
                obj = arrayList;
            } else {
                z2 = true;
                obj = objX;
            }
            boolean z3 = z2;
            certificateFormState2 = certificateFormState;
            CertificateFormKt.a(modifierM, inAppDispatch, certificateFormState2, (List) obj, null, gapComposerH, i3 & 1008, 16);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(tr.d("CertificateTransferForm", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "certificateTransfer_activate_button");
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_step2_cta_activate);
            boolean z4 = (!((Boolean) ((SnapshotMutableStateImpl) certificateFormState2.f55685b).getF10755b()).booleanValue() || z) ? false : z3;
            boolean zY = gapComposerH.y(certificateFormState2) | ((57344 & i3) == 16384 ? z3 : false);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new tf(function1, certificateFormState2, 20);
                gapComposerH.q(objX2);
            }
            GapComposer gapComposer2 = gapComposerH;
            LVButtonKt.b(0, 376, gapComposer2, modifierE2, configurationButton, null, null, strC2, (Function0) objX2, false, z4, false);
            gapComposer2.Z(z3);
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(modifier2, inAppDispatch, certificateFormState2, z, function1, i2);
        }
    }

    public static final void b(SnackbarHostState snackbarHostState, CertificateTransferUiModel certificateTransferUiModel, Function1 function1, Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        snackbarHostState.getClass();
        certificateTransferUiModel.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1653788294);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(certificateTransferUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.g(new CertificateFormState());
                gapComposerH.q(objX);
            }
            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(new DTFunctionNameModifier("CertificateTransferScreen")), ComposableLambdaKt.b(-567632586, new o0(function0, 23), gapComposerH), null, ComposableLambdaKt.b(323442036, new g0(snackbarHostState, 17), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(1872143819, new g1(certificateTransferUiModel, function1, (MutableState) objX, 13), gapComposerH), gapComposerH, 805309488, 500);
            gapComposer = gapComposerH;
            if (certificateTransferUiModel.f55812b) {
                gapComposer.L(-434779706);
                LVLoadingOverlayKt.a(false, gapComposer, 0, 1);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-434747032);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(snackbarHostState, certificateTransferUiModel, function1, function0, i2, 10);
        }
    }
}
