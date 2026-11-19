package com.vuitton.android.presentation.screen.repairs.models.bff;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceProduct;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceType;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.universal.Price;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceDetailUiModelMapperKt {
    /* JADX WARN: Code duplicated, block: B:51:0x00f7  */
    public static final CareServiceDetailUiModel a(CareServiceDetail careServiceDetail, InAppDispatch inAppDispatch) {
        CareServiceDetailUiModel.Assessment assessment;
        DistantRepairContactMethod distantRepairContactMethod;
        HeaderUiModel headerUiModel;
        AppointmentInformationUiModel appointmentInformationUiModel;
        AssessmentUiModel assessmentUiModel;
        String str;
        Instant instant;
        AssetImage assetImage;
        careServiceDetail.getClass();
        CareServiceCategory careServiceCategory = careServiceDetail.f66845e;
        CareServiceType careServiceType = careServiceDetail.d;
        inAppDispatch.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str2 = careServiceDetail.f66842a;
        CareServiceDetail.Assessment assessment2 = careServiceDetail.n;
        Instant instant2 = careServiceDetail.f66850k;
        companion.getClass();
        String str3 = careServiceDetail.f66843b;
        if (str3 != null) {
            CareServiceTransactionIdUiModel.f64071c.getClass();
        } else {
            str3 = null;
        }
        CareServiceAction careServiceAction = careServiceDetail.g;
        CareServiceDetail.Store store = careServiceDetail.f66847h;
        CareServiceDetailUiModel.Store store2 = store != null ? new CareServiceDetailUiModel.Store(store.f66872a) : null;
        String str4 = careServiceDetail.f66849j;
        FormatStyle formatStyle = FormatStyle.FULL;
        String strF = DateTimeUtils.f(inAppDispatch, instant2);
        String str5 = careServiceDetail.l;
        String str6 = careServiceDetail.m;
        if (assessment2 != null) {
            String str7 = assessment2.f66855a;
            String str8 = assessment2.f66856b;
            PriceUiModel priceUiModelA = ProductMapperKt.a(assessment2.f66857c);
            CareServiceAddress careServiceAddress = assessment2.d;
            CareServiceAddressUiModel careServiceAddressUiModelA = careServiceAddress != null ? CareServiceAddressUiModelMapperKt.a(careServiceAddress) : null;
            CareServiceAddressUiModel careServiceAddressUiModelA2 = careServiceAddress != null ? CareServiceAddressUiModelMapperKt.a(careServiceAddress) : null;
            List list = assessment2.f66858e;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CareServiceDetail.AssessmentItem assessmentItem = (CareServiceDetail.AssessmentItem) it.next();
                Iterator it2 = it;
                String str9 = assessmentItem.f66860a;
                Price price = assessmentItem.f66861b;
                arrayList.add(new CareServiceDetailUiModel.AssessmentItem(str9, price != null ? ProductMapperKt.a(price) : null));
                it = it2;
            }
            assessment = new CareServiceDetailUiModel.Assessment(str7, str8, priceUiModelA, careServiceAddressUiModelA, careServiceAddressUiModelA2, arrayList);
        } else {
            assessment = null;
        }
        String str10 = careServiceDetail.o;
        if (str10 == null) {
            distantRepairContactMethod = null;
        } else {
            int iHashCode = str10.hashCode();
            if (iHashCode != -1029520148) {
                if (iHashCode != 96619420) {
                    if (iHashCode == 1332432249 && str10.equals("videoCall")) {
                        distantRepairContactMethod = DistantRepairContactMethod.VIDEO_CALL;
                    } else {
                        distantRepairContactMethod = null;
                    }
                } else if (str10.equals("email")) {
                    distantRepairContactMethod = DistantRepairContactMethod.EMAIL;
                } else {
                    distantRepairContactMethod = null;
                }
            } else if (str10.equals("phoneCall")) {
                distantRepairContactMethod = DistantRepairContactMethod.PHONE_CALL;
            } else {
                distantRepairContactMethod = null;
            }
        }
        List list2 = careServiceDetail.p;
        DistantRepairContactMethod distantRepairContactMethod2 = distantRepairContactMethod;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (Iterator it3 = list2.iterator(); it3.hasNext(); it3 = it3) {
            CareServiceDetail.CancellationReason cancellationReason = (CareServiceDetail.CancellationReason) it3.next();
            arrayList2.add(new CareServiceDetailUiModel.CancellationReason(cancellationReason.f66862a, cancellationReason.f66863b));
        }
        CareServiceProduct careServiceProduct = careServiceDetail.f66848i;
        CareServiceTransactionIdUiModel.f64071c.getClass();
        String str11 = str3 != null ? str3 : CareServiceTransactionIdUiModel.d;
        String str12 = (careServiceProduct == null || (assetImage = careServiceProduct.f66883c) == null) ? null : assetImage.f67108a;
        String str13 = careServiceProduct != null ? careServiceProduct.f66882b : null;
        StringResourceUiModel.ResId resId = careServiceType == CareServiceType.Distant ? new StringResourceUiModel.ResId(R.string.dr_mylv_repair_requested_online, null, 2, null) : new StringResourceUiModel.ResId(R.string.dr_mylv_repair_requested_in_store, null, 2, null);
        FormatStyle formatStyle2 = FormatStyle.FULL;
        HeaderUiModel headerUiModel2 = new HeaderUiModel(str13, resId, DateTimeUtils.f(inAppDispatch, instant2));
        CareServiceDetail.ShippingInformation shippingInformation = careServiceDetail.r;
        ShippingInformationUiModel shippingInformationUiModel = shippingInformation != null ? new ShippingInformationUiModel(shippingInformation.d, shippingInformation.f66866a, shippingInformation.f66867b, shippingInformation.f66868c) : null;
        CareServiceDetail.AppointmentInformation appointmentInformation = careServiceDetail.q;
        if (appointmentInformation != null) {
            CareServiceDetail.AppointmentDetail appointmentDetail = appointmentInformation.f66854b;
            String str14 = appointmentDetail != null ? appointmentDetail.f66852b : null;
            if (appointmentDetail == null || (instant = appointmentDetail.f66851a) == null) {
                headerUiModel = headerUiModel2;
                str = null;
            } else {
                FormatStyle formatStyle3 = FormatStyle.SHORT;
                formatStyle3.getClass();
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    headerUiModel = headerUiModel2;
                    try {
                        str = DateTimeFormatter.ofLocalizedDateTime(formatStyle2, formatStyle3).withLocale(inAppDispatch.m).format(instant.f75239b.atZone(TimeZone.getDefault().toZoneId()).toLocalDateTime());
                        str.getClass();
                    } catch (Throwable th) {
                        th = th;
                        Result.Companion companion3 = Result.INSTANCE;
                        new Result.Failure(th);
                        str = "";
                    }
                } catch (Throwable th2) {
                    th = th2;
                    headerUiModel = headerUiModel2;
                }
            }
            CareServiceDetail.ContactInformation contactInformation = appointmentInformation.f66853a;
            appointmentInformationUiModel = new AppointmentInformationUiModel(str14, str, contactInformation != null ? contactInformation.f66865b : null, contactInformation != null ? contactInformation.f66864a : null);
        } else {
            headerUiModel = headerUiModel2;
            appointmentInformationUiModel = null;
        }
        if (assessment2 != null) {
            String str15 = assessment2.f66855a;
            String str16 = assessment2.f66856b;
            String str17 = str16 == null ? "" : str16;
            List<CareServiceDetail.AssessmentItem> list3 = assessment2.f66858e;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
            for (CareServiceDetail.AssessmentItem assessmentItem2 : list3) {
                String str18 = assessmentItem2.f66860a;
                Price price2 = assessmentItem2.f66861b;
                String str19 = price2 != null ? price2.f68007a : null;
                if (str19 == null) {
                    str19 = "";
                }
                arrayList3.add(new Pair(str18, str19));
            }
            assessmentUiModel = new AssessmentUiModel(str15, str17, arrayList3, assessment2.f66857c.f68007a, assessment2.g);
        } else {
            assessmentUiModel = null;
        }
        if (assessment2 == null || !assessment2.f66859f) {
            assessmentUiModel = null;
        }
        String str20 = careServiceDetail.f66844c;
        String str21 = str20 == null ? "" : str20;
        List<CareServiceDetail.Step> list4 = careServiceDetail.f66846f;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list4, 10));
        for (CareServiceDetail.Step step : list4) {
            arrayList4.add(new RepairDetailUiModel.Step(step.f66869a, step.f66870b, step.f66871c));
        }
        return new CareServiceDetailUiModel(str2, str3, careServiceType, careServiceCategory, careServiceAction, store2, str4, strF, str5, str6, assessment, distantRepairContactMethod2, arrayList2, new RepairDetailUiModel(str11, str12, headerUiModel, shippingInformationUiModel, appointmentInformationUiModel, assessmentUiModel, str21, careServiceCategory == CareServiceCategory.OnGoing ? arrayList4 : null, null), null);
    }
}
