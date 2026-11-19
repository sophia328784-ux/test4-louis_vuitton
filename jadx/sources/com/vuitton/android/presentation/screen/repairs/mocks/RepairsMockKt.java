package com.vuitton.android.presentation.screen.repairs.mocks;

import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusTranslationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.FollowUp;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import java.time.Instant;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairsMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RepairsViewState f63976a;

    static {
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        RepairStatusUiModel repairStatusUiModel = RepairStatusUiModel.CONFIRM_ADDRESS;
        Date dateFrom = Date.from(Instant.now());
        dateFrom.getClass();
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        RepairType repairType = RepairType.DISTANT_CARE_SERVICE;
        CareServiceUiModel careServiceUiModel = new CareServiceUiModel("1", "12345", "J31", repairStatusUiModel, dateFrom, "2022-12-20", "2022-12-20", "2022-12-20", "Repairs", "Sac", "M41414", "M41414", "", repairType, "", true, false, false, false, false, 983040, null);
        CareServiceId.Companion companion3 = CareServiceId.INSTANCE;
        RepairStatus repairStatus = RepairStatus.RECEIVED_AT_ATELIER;
        Double dValueOf = Double.valueOf(100.0d);
        SkuId.Companion companion4 = SkuId.INSTANCE;
        EmptyList emptyList = EmptyList.f71768b;
        CareServiceOrigin careServiceOrigin = CareServiceOrigin.VideoCall;
        CareServiceTransactionId.Companion companion5 = CareServiceTransactionId.INSTANCE;
        CareServiceDetail careServiceDetail = new CareServiceDetail("1", repairType, repairStatus, "String", "", "", 99.5d, dValueOf, "M41414", "", "Notes", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", emptyList, "", careServiceOrigin, "test@gmail.com", "+33650999999", "Description", "", "", "1111", "Product Name", "Family", "Paris", "J31", "AddressTitle", "John", "Doe", "", "", null);
        RepairStatusTranslationUiModel repairStatusTranslationUiModel = new RepairStatusTranslationUiModel(RepairStatusUiModel.REQUEST_SUBMITTED, "Request submitted", "Request submitted");
        InAppDispatch inAppDispatch = InAppDispatchMockKt.f59833a;
        RepairStatusUiModel repairStatusUiModel2 = RepairStatusUiModel.PRELIMINARY_ASSESSMENT;
        CareServiceUiModel careServiceUiModelA = CareServiceUiModel.a(careServiceUiModel, repairStatusUiModel2, null, null, false, false, false, false, false, 1048567);
        RepairStatusUiModel repairStatusUiModel3 = RepairStatusUiModel.SHIPPING;
        CareServiceUiModel careServiceUiModelA2 = CareServiceUiModel.a(careServiceUiModel, repairStatusUiModel3, null, null, false, false, false, false, false, 1048567);
        RepairStatusUiModel repairStatusUiModel4 = RepairStatusUiModel.AWAITING_PAYMENT;
        List listP = CollectionsKt.P(careServiceUiModel, careServiceUiModelA, careServiceUiModelA2, CareServiceUiModel.a(careServiceUiModel, repairStatusUiModel4, null, null, false, false, false, false, false, 1048567));
        RepairStatusUiModel repairStatusUiModel5 = RepairStatusUiModel.DELIVERED_TO_CLIENT;
        List listO = CollectionsKt.O(CareServiceUiModel.a(careServiceUiModel, repairStatusUiModel5, null, null, false, false, false, false, false, 1015799));
        CareServiceDetailUiModel careServiceDetailUiModelC = CareServiceDetailMapperKt.c(careServiceDetail, "", false);
        RepairStatusTranslationUiModel repairStatusTranslationUiModelA = RepairStatusTranslationUiModel.a(repairStatusUiModel2, "Preliminary assessment", "Preliminary assessment");
        RepairStatusUiModel repairStatusUiModel6 = RepairStatusUiModel.SHIPPING_TO_ATELIER;
        List listP2 = CollectionsKt.P(repairStatusTranslationUiModel, repairStatusTranslationUiModelA, RepairStatusTranslationUiModel.a(repairStatusUiModel6, "Shipping to atelier", "Shipping to atelier"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC, "Preliminary assessment acc", "Preliminary assessment acc"), new RepairStatusTranslationUiModel(repairStatusUiModel6, "Shipping to atelier", "Shipping to atelier"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.RECEIVED_AT_ATELIER, "Received at atelier", "Received at atelier"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.SHIPPED_FROM_EHUB, "Shipping to Louis Vuitton Atelier in France", "Shipping to Louis Vuitton Atelier in France"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.UNDER_ASSESSMENT, "Under assessment", "Under assessment"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.REPAIR_IN_PROGRESS, "Repair in progress", "Repair in progress"), RepairStatusTranslationUiModel.a(repairStatusUiModel4, "Awaiting payment", "Awaiting payment"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.PAYMENT_INITIATED, "Payment initiated", "Payment initiated"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.PAYMENT_CONTACT, "Payment contact", "Payment contact"), RepairStatusTranslationUiModel.a(repairStatusUiModel, "Confirm address", "Confirm address"), RepairStatusTranslationUiModel.a(repairStatusUiModel3, "Shipping", "Shipping"), RepairStatusTranslationUiModel.a(RepairStatusUiModel.SHIPPING_IN_PREPARATION, "Shipping in preparation", "Shipping in preparation"), RepairStatusTranslationUiModel.a(repairStatusUiModel5, "Delivered to client", "Delivered to client"));
        FollowUp followUp = FollowUp.PAST;
        f63976a = new RepairsViewState(inAppDispatch, false, false, listP, listO, listP2, null, careServiceDetailUiModelC, false, CollectionsKt.P(new Pair(followUp, "Request submitted"), new Pair(followUp, "Shipping to atelier"), new Pair(followUp, "Shipping in preparation"), new Pair(FollowUp.CURRENT, "Confirm address"), new Pair(FollowUp.FUTURE, "Delivered to client")), false, null, null, null, 15684, null);
    }
}
