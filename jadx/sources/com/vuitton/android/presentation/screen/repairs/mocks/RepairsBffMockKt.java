package com.vuitton.android.presentation.screen.repairs.mocks;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusTranslationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceSpecificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.portal.models.MocksKt;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairFeatureFlags;
import com.vuitton.android.presentation.screen.repairs.models.bff.AssessmentUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceProductUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.HeaderUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlinx.datetime.Clock;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairsBffMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RepairsBffViewState f63975a;

    static {
        CareServiceProductUiModel careServiceProductUiModel;
        AssetImageUiModel assetImageUiModel = MocksKt.f63304a.f51780b;
        if (assetImageUiModel != null) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            careServiceProductUiModel = new CareServiceProductUiModel("M41414", "Speedy 30", assetImageUiModel, null);
        } else {
            careServiceProductUiModel = null;
        }
        CareServiceIdUiModel.Companion companion2 = CareServiceIdUiModel.f64059c;
        CareServiceTransactionIdUiModel.Companion companion3 = CareServiceTransactionIdUiModel.f64071c;
        CareServiceType careServiceType = CareServiceType.Distant;
        CareServiceCategory careServiceCategory = CareServiceCategory.OnGoing;
        CareServiceAction careServiceAction = CareServiceAction.ConfirmEstimate;
        CareServiceShortUiModel careServiceShortUiModel = new CareServiceShortUiModel("cs-001", "CS-001-2024", "tx-12345", careServiceType, careServiceCategory, "Évaluation préliminaire", careServiceAction, careServiceProductUiModel, "https://tracking.louisvuitton.com/track/12345", Clock.System.a().a(), Long.valueOf(Clock.System.a().a()), null, null, false, false, true, true, false, 131072, null);
        CareServiceDetailUiModel.Store store = new CareServiceDetailUiModel.Store("J31");
        CareServiceDetailUiModel.Assessment assessment = new CareServiceDetailUiModel.Assessment("Évaluation de votre produit", "Le sac nécessite un nettoyage complet et le remplacement de la fermeture éclair. L'état général est bon.", new PriceUiModel("350,00 €", new PriceSpecificationUiModel("EUR", 350.0d)), null, null, CollectionsKt.P(new CareServiceDetailUiModel.AssessmentItem("Nettoyage complet", new PriceUiModel("150,00 €", new PriceSpecificationUiModel("EUR", 150.0d))), new CareServiceDetailUiModel.AssessmentItem("Remplacement fermeture éclair", new PriceUiModel("200,00 €", new PriceSpecificationUiModel("EUR", 200.0d)))));
        DistantRepairContactMethod distantRepairContactMethod = DistantRepairContactMethod.VIDEO_CALL;
        List listP = CollectionsKt.P(new CareServiceDetailUiModel.CancellationReason("reason-1", "Prix trop élevé"), new CareServiceDetailUiModel.CancellationReason("reason-2", "Délai trop long"), new CareServiceDetailUiModel.CancellationReason("reason-3", "Autre"));
        HeaderUiModel headerUiModel = new HeaderUiModel("Speedy 30", new StringResourceUiModel.Text("Réparation demandée en ligne"), "15 novembre 2024");
        AssessmentUiModel assessmentUiModel = new AssessmentUiModel("Évaluation de votre produit", "Le sac nécessite un nettoyage complet et le remplacement de la fermeture éclair. L'état général est bon.", CollectionsKt.P(new Pair("Nettoyage complet", "150,00 €"), new Pair("Remplacement fermeture éclair", "200,00 €")), "350,00 €", null);
        RepairDetailUiModel.Step step = new RepairDetailUiModel.Step("step-1", "Demande soumise", CareServiceDetail.StepStatus.PAST);
        RepairDetailUiModel.Step step2 = new RepairDetailUiModel.Step("step-2", "Évaluation préliminaire", CareServiceDetail.StepStatus.CURRENT);
        CareServiceDetail.StepStatus stepStatus = CareServiceDetail.StepStatus.FUTURE;
        f63975a = new RepairsBffViewState(InAppDispatchMockKt.f59833a, false, false, CollectionsKt.P(careServiceShortUiModel, CareServiceShortUiModel.a(careServiceShortUiModel, "cs-002", "CS-002-2024", null, "Expédition en cours", CareServiceAction.TrackMyShipment, 0L, null, false, true, false, false, false, 180124), CareServiceShortUiModel.a(careServiceShortUiModel, "cs-003", "CS-003-2024", null, "Confirmer l'adresse", CareServiceAction.ConfirmAddress, 0L, null, false, false, true, false, false, 163740), CareServiceShortUiModel.a(careServiceShortUiModel, "cs-004", "CS-004-2024", null, "En attente de paiement", CareServiceAction.AwaitingPayment, 0L, null, true, false, false, false, false, 188316)), CollectionsKt.O(CareServiceShortUiModel.a(careServiceShortUiModel, "cs-history-001", "CS-H001-2024", CareServiceCategory.History, "Livré", null, Clock.System.a().a(), Long.valueOf(Clock.System.a().a()), false, false, false, false, false, 137612)), CollectionsKt.P(new RepairStatusTranslationUiModel(RepairStatusUiModel.REQUEST_SUBMITTED, "Demande soumise", "Votre demande de réparation a été soumise avec succès"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.PRELIMINARY_ASSESSMENT, "Évaluation préliminaire", "Votre produit est en cours d'évaluation par nos experts"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.SHIPPING_TO_ATELIER, "Expédition vers l'atelier", "Votre produit est en cours d'expédition vers notre atelier"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.RECEIVED_AT_ATELIER, "Reçu à l'atelier", "Votre produit a été reçu dans notre atelier"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.UNDER_ASSESSMENT, "En cours d'évaluation", "Nos experts évaluent votre produit"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.REPAIR_IN_PROGRESS, "Réparation en cours", "Votre produit est en cours de réparation"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.AWAITING_PAYMENT, "En attente de paiement", "Nous attendons votre paiement pour finaliser la réparation"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.CONFIRM_ADDRESS, "Confirmer l'adresse", "Veuillez confirmer votre adresse de livraison"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.SHIPPING, "Expédition", "Votre produit réparé est en cours d'expédition"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.DELIVERED_TO_CLIENT, "Livré", "Votre produit réparé a été livré")), "", new CareServiceDetailUiModel("cs-001", "tx-12345", careServiceType, careServiceCategory, careServiceAction, store, "https://tracking.louisvuitton.com/track/12345", "15 novembre 2024", null, "https://pay.louisvuitton.com/payment/12345", assessment, distantRepairContactMethod, listP, new RepairDetailUiModel("tx-12345", null, headerUiModel, null, null, assessmentUiModel, "Réparation d'un sac Speedy 30 avec nettoyage et remplacement de la fermeture éclair", CollectionsKt.P(step, step2, new RepairDetailUiModel.Step("step-3", "Réparation en cours", stepStatus), new RepairDetailUiModel.Step("step-4", "Livré au client", stepStatus)), null), null), false, "https://pay.louisvuitton.com/payment/12345", new RepairFeatureFlags(true, true, true, false, false, 16, null), new DistantRepairsConfigUiModel("repairs@louisvuitton.com", "+33123456789", "https://api.louisvuitton.com/repairs/", "https://www.louisvuitton.com/repairs/process", "https://tracking.louisvuitton.com/", "J31", "Louis Vuitton Champs-Élysées", null, null, 256, null));
    }
}
