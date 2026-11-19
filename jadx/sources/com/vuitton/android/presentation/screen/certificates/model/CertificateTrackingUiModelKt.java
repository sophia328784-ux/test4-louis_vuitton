package com.vuitton.android.presentation.screen.certificates.model;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import defpackage.v40;
import defpackage.zy0;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateTrackingUiModelKt {
    public static final String a(CertificateUiModel certificateUiModel) {
        if (certificateUiModel instanceof CertificateDiamondUiModel) {
            return "diamond";
        }
        if (certificateUiModel instanceof CertificateCapucineUiModel) {
            return "capucine";
        }
        if (certificateUiModel instanceof CertificateRubyUiModel) {
            return "ruby";
        }
        if (certificateUiModel instanceof CertificateVisionnaireUiModel) {
            return "visionnaire";
        }
        v40.g();
        return null;
    }

    public static final Hit b(CertificateTrackingUiModel certificateTrackingUiModel) {
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.CertificateScreen.f55856a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "certificate_list", "certificate_list", "certificate", null, 17, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.CertificateTransferScreen.f55858a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyCertificates/Transfer", "mylv/my_certificates/transfer", "mylv", null, 17, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.CertificateTransferConfirmationScreen.f55857a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyCertificates/Transfer/Confirmation", "mylv/my_certificates/transfer/confirmation", "mylv", null, 17, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.CertificateActivationScreen.f55855a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "add_certificate_form", "add_certificate_form", "certificate", null, 17, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.CertificateActivationConfirmationScreen.f55854a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "add_certificate_confirmation", "add_certificate_confirmation", "certificate", null, 17, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.CertificateUnlockNfcScreen.f55859a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "certificate_unlock_nfc", "certificate_unlock_nfc", "certificate", null, 17, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.CertificateVisionnaireDetailsScreen) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String str = ((CertificateTrackingUiModel.CertificateVisionnaireDetailsScreen) certificateTrackingUiModel).f55860a.f55884c;
            companion.getClass();
            SkuIdUiModel.Companion.b(str);
            return new Hit.ScreenHit.DefaultScreenHit(null, "visionnaire_details", "visionnaire_details", "certificate", CollectionsKt.O(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str)))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.OpenCertificateEvent) {
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            CertificateUiModel certificateUiModel = ((CertificateTrackingUiModel.OpenCertificateEvent) certificateTrackingUiModel).f55869a;
            String f55828c = certificateUiModel.getF55841c();
            companion2.getClass();
            SkuIdUiModel.Companion.b(f55828c);
            return new Hit.EventHit.DefaultEventHit(null, "certificate_list", "view_my_certificate", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(f55828c)), new AdditionalProperty.ContentId(a(certificateUiModel))), 1, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.AddCertificateEvent.f55852a)) {
            return new Hit.EventHit.DefaultEventHit(null, "certificate_list", "add_manual_certificate", "certificate", "click", "certificate", null, 65, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.ActivateCertificateEvent.f55848a)) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_form", "activation_intention", "certificate", "click", "certificate", null, 65, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.ActivateCertificateSuccessManualEvent.f55851a)) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_form", "activation_success", "certificate", MvelScriptManager.VAR_EVENT, "certificate", o60.t("diamond"), 1, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.ActivateCertificateErrorManualEvent.f55847a)) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_form", "activation_error", "certificate", MvelScriptManager.VAR_EVENT, "certificate", o60.t("diamond"), 1, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.OpenIndividualNumberInfoEvent.f55871a)) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_form", "help_individual_number", "certificate", "click", "certificate", null, 65, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.OpenBuyerNameInfoEvent.f55868a)) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_form", "help_activation_code", "certificate", "click", "certificate", null, 65, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.ConsentCheckboxToggledEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_form", ((CertificateTrackingUiModel.ConsentCheckboxToggledEvent) certificateTrackingUiModel).f55861a ? "consent_ticked" : "consent_unticked", "certificate", "click", "certificate", null, 65, null);
        }
        if (certificateTrackingUiModel.equals(CertificateTrackingUiModel.OpenCertificateListFromContifrmationEvent.f55870a)) {
            return new Hit.EventHit.DefaultEventHit(null, "add_certificate_confirmation", "see_my_certificate", "click", "my_certificates", null, null, 97, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.TransferCertificateEvent) {
            SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
            CertificateUiModel certificateUiModel2 = ((CertificateTrackingUiModel.TransferCertificateEvent) certificateTrackingUiModel).f55875a;
            String f55828c2 = certificateUiModel2.getF55841c();
            companion3.getClass();
            SkuIdUiModel.Companion.b(f55828c2);
            return new Hit.EventHit.DefaultEventHit(null, "certificate_list", "transfer_my_certificate", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(f55828c2)), new AdditionalProperty.ContentId(a(certificateUiModel2))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.AcceptTransferCertificateEvent) {
            SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
            CertificateUiModel certificateUiModel3 = ((CertificateTrackingUiModel.AcceptTransferCertificateEvent) certificateTrackingUiModel).f55846a;
            String f55828c3 = certificateUiModel3.getF55841c();
            companion4.getClass();
            SkuIdUiModel.Companion.b(f55828c3);
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyCertificates/Transfer", "transfer_my_certificate_intention", "MyLV", "my_certificates", null, CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(f55828c3)), new AdditionalProperty.CertificateId(certificateUiModel3.getF55840b()), new AdditionalProperty.ContentId(a(certificateUiModel3))), 33, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.CancelTransferCertificateEvent) {
            SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
            CertificateUiModel certificateUiModel4 = ((CertificateTrackingUiModel.CancelTransferCertificateEvent) certificateTrackingUiModel).f55853a;
            String f55828c4 = certificateUiModel4.getF55841c();
            companion5.getClass();
            SkuIdUiModel.Companion.b(f55828c4);
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyCertificates/Transfer", "transfer_my_certificate_cancelation", "MyLV", "my_certificates", null, CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(f55828c4)), new AdditionalProperty.CertificateId(certificateUiModel4.getF55840b()), new AdditionalProperty.ContentId(a(certificateUiModel4))), 33, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.TransferCertificateActivationEvent) {
            SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
            CertificateUiModel certificateUiModel5 = ((CertificateTrackingUiModel.TransferCertificateActivationEvent) certificateTrackingUiModel).f55874a;
            String f55828c5 = certificateUiModel5.getF55841c();
            companion6.getClass();
            SkuIdUiModel.Companion.b(f55828c5);
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyCertificates/Transfer", "transfer_my_certificate_activation", "MyLV", "my_certificates", null, CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(f55828c5)), new AdditionalProperty.CertificateId(certificateUiModel5.getF55840b()), new AdditionalProperty.ContentId(a(certificateUiModel5))), 33, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.ActivateCertificateIntentionEvent) {
            SkuIdUiModel.Companion companion7 = SkuIdUiModel.f61763c;
            CertificateUiModel certificateUiModel6 = ((CertificateTrackingUiModel.ActivateCertificateIntentionEvent) certificateTrackingUiModel).f55849a;
            String f55828c6 = certificateUiModel6.getF55841c();
            companion7.getClass();
            SkuIdUiModel.Companion.b(f55828c6);
            return new Hit.EventHit.DefaultEventHit(null, "certificate_list", "activate_my_certificate_intention", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(n00.v(f55828c6)), new AdditionalProperty.ContentId(a(certificateUiModel6))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.StartDetectionNfcEvent) {
            SkuIdUiModel.Companion companion8 = SkuIdUiModel.f61763c;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel = ((CertificateTrackingUiModel.StartDetectionNfcEvent) certificateTrackingUiModel).f55873a;
            String str2 = certificateVisionnaireUiModel.f55884c;
            companion8.getClass();
            SkuIdUiModel.Companion.b(str2);
            return new Hit.EventHit.DefaultEventHit(null, "certificate_unlock_nfc", "start_detection", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str2))), new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.ActivateCertificateSuccessEvent) {
            SkuIdUiModel.Companion companion9 = SkuIdUiModel.f61763c;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel2 = ((CertificateTrackingUiModel.ActivateCertificateSuccessEvent) certificateTrackingUiModel).f55850a;
            String str3 = certificateVisionnaireUiModel2.f55884c;
            companion9.getClass();
            SkuIdUiModel.Companion.b(str3);
            return new Hit.EventHit.DefaultEventHit(null, "certificate_unlock_nfc", "activate_my_certificate_success", "certificate", MvelScriptManager.VAR_EVENT, "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str3))), new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel2))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.NfcErrorEvent) {
            SkuIdUiModel.Companion companion10 = SkuIdUiModel.f61763c;
            CertificateTrackingUiModel.NfcErrorEvent nfcErrorEvent = (CertificateTrackingUiModel.NfcErrorEvent) certificateTrackingUiModel;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel3 = nfcErrorEvent.f55866a;
            String str4 = certificateVisionnaireUiModel3.f55884c;
            companion10.getClass();
            SkuIdUiModel.Companion.b(str4);
            AdditionalProperty.ProductSku productSku = new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str4)));
            AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel3));
            String lowerCase = nfcErrorEvent.f55867b.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return new Hit.EventHit.DefaultEventHit(null, "certificate_unlock_nfc", "error", "certificate", MvelScriptManager.VAR_EVENT, "certificate", CollectionsKt.P(productSku, contentId, new AdditionalProperty.ErrorId(lowerCase)), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.NeedHelpNfcEvent) {
            SkuIdUiModel.Companion companion11 = SkuIdUiModel.f61763c;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel4 = ((CertificateTrackingUiModel.NeedHelpNfcEvent) certificateTrackingUiModel).f55865a;
            String str5 = certificateVisionnaireUiModel4.f55884c;
            companion11.getClass();
            SkuIdUiModel.Companion.b(str5);
            return new Hit.EventHit.DefaultEventHit(null, "certificate_unlock_nfc", "need_help", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str5))), new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel4))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.ViewJourneyEvent) {
            SkuIdUiModel.Companion companion12 = SkuIdUiModel.f61763c;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel5 = ((CertificateTrackingUiModel.ViewJourneyEvent) certificateTrackingUiModel).f55876a;
            String str6 = certificateVisionnaireUiModel5.f55884c;
            companion12.getClass();
            SkuIdUiModel.Companion.b(str6);
            return new Hit.EventHit.DefaultEventHit(null, "visionnaire_details", "view_journey", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str6))), new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel5))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.ProductSummarySectionEvent) {
            SkuIdUiModel.Companion companion13 = SkuIdUiModel.f61763c;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel6 = ((CertificateTrackingUiModel.ProductSummarySectionEvent) certificateTrackingUiModel).f55872a;
            String str7 = certificateVisionnaireUiModel6.f55884c;
            companion13.getClass();
            SkuIdUiModel.Companion.b(str7);
            return new Hit.EventHit.DefaultEventHit(null, "visionnaire_details", "product_summary", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str7))), new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel6))), 1, null);
        }
        if (certificateTrackingUiModel instanceof CertificateTrackingUiModel.DetailsSectionEvent) {
            SkuIdUiModel.Companion companion14 = SkuIdUiModel.f61763c;
            CertificateVisionnaireUiModel certificateVisionnaireUiModel7 = ((CertificateTrackingUiModel.DetailsSectionEvent) certificateTrackingUiModel).f55862a;
            String str8 = certificateVisionnaireUiModel7.f55884c;
            companion14.getClass();
            SkuIdUiModel.Companion.b(str8);
            return new Hit.EventHit.DefaultEventHit(null, "visionnaire_details", "details", "certificate", "click", "certificate", CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str8))), new AdditionalProperty.ContentId(a(certificateVisionnaireUiModel7))), 1, null);
        }
        if (!(certificateTrackingUiModel instanceof CertificateTrackingUiModel.HitOnStoneEngravingEvent)) {
            v40.g();
            return null;
        }
        CertificateTrackingUiModel.HitOnStoneEngravingEvent hitOnStoneEngravingEvent = (CertificateTrackingUiModel.HitOnStoneEngravingEvent) certificateTrackingUiModel;
        CertificateDiamondUiModel certificateDiamondUiModel = hitOnStoneEngravingEvent.f55863a;
        for (CertificateDiamondStoneUiModel certificateDiamondStoneUiModel : certificateDiamondUiModel.o) {
            if (Intrinsics.c(certificateDiamondStoneUiModel.f55826c, hitOnStoneEngravingEvent.f55864b)) {
                String strG = tr.g("view_my_stone_", certificateDiamondStoneUiModel.f55825b);
                SkuIdUiModel.Companion companion15 = SkuIdUiModel.f61763c;
                String str9 = certificateDiamondUiModel.f55828c;
                companion15.getClass();
                SkuIdUiModel.Companion.b(str9);
                return new Hit.EventHit.DefaultEventHit(null, "certificate_list", strG, "certificate", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str9))), new AdditionalProperty.ContentId(a(certificateDiamondUiModel))), 33, null);
            }
        }
        zy0.c("Collection contains no element matching the predicate.");
        return null;
    }
}
