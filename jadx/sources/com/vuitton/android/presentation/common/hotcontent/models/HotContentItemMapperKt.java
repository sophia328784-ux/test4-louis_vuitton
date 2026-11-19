package com.vuitton.android.presentation.common.hotcontent.models;

import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.orders.models.mappers.OrderMapperKt;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaMapperKt;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceHotContentUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceHotContent;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContentItem;
import defpackage.v40;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HotContentItemMapperKt {
    public static final ArrayList a(List list) {
        list.getClass();
        List listO0 = CollectionsKt.o0(list, new Comparator() { // from class: com.vuitton.android.presentation.common.hotcontent.models.HotContentItemMapperKt$toHotContentOrderItems$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.a(((PurchasedOrderUiModel) obj2).f60394b, ((PurchasedOrderUiModel) obj).f60394b);
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            List<TransactionUiModel> list2 = ((PurchasedOrderUiModel) it.next()).d;
            ArrayList arrayList2 = new ArrayList();
            for (TransactionUiModel transactionUiModel : list2) {
                List<TransactionItemUiModel> list3 = transactionUiModel.f60424e;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                for (TransactionItemUiModel transactionItemUiModel : list3) {
                    transactionItemUiModel.getClass();
                    arrayList3.add(new HotContentItemUiModel.Order(transactionUiModel, transactionItemUiModel));
                }
                CollectionsKt.j(arrayList2, arrayList3);
            }
            CollectionsKt.j(arrayList, arrayList2);
        }
        return arrayList;
    }

    public static final HotContentItemUiModel b(HotContentItem hotContentItem, InAppDispatch inAppDispatch) {
        hotContentItem.getClass();
        inAppDispatch.getClass();
        if (hotContentItem instanceof HotContentItem.Order) {
            HotContentItem.Order order = (HotContentItem.Order) hotContentItem;
            return new HotContentItemUiModel.Order(OrderMapperKt.e(order.f67608a, true), OrderMapperKt.d(order.f67609b));
        }
        if (hotContentItem instanceof HotContentItem.StoreAppointment) {
            Object objC = OsaMapperKt.c(((HotContentItem.StoreAppointment) hotContentItem).f67610a);
            if (objC instanceof Result.Failure) {
                objC = null;
            }
            OsaItemUiModel osaItemUiModel = (OsaItemUiModel) objC;
            if (osaItemUiModel == null) {
                return null;
            }
            AppointmentTypeUiModel appointmentTypeUiModel = osaItemUiModel.f60925b;
            String strD = StringKtExtKt.d(DateTimeUtils.h(inAppDispatch, osaItemUiModel.f60928f, FormatStyle.FULL));
            StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
            String str = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60942f : null;
            if (str == null) {
                str = "";
            }
            return new HotContentItemUiModel.StoreAppointment(appointmentTypeUiModel, strD, str);
        }
        if (!(hotContentItem instanceof HotContentItem.CareService)) {
            v40.g();
            return null;
        }
        CareServiceHotContent careServiceHotContent = ((HotContentItem.CareService) hotContentItem).f67607a;
        careServiceHotContent.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str2 = careServiceHotContent.f66873a;
        companion.getClass();
        String str3 = careServiceHotContent.f66874b;
        String str4 = careServiceHotContent.f66875c;
        String str5 = careServiceHotContent.d;
        CareServiceAction careServiceAction = careServiceHotContent.f66877f;
        String str6 = careServiceHotContent.f66876e;
        AssetImage assetImage = careServiceHotContent.g;
        return new HotContentItemUiModel.CareService(new CareServiceHotContentUiModel(str2, str3, str4, str5, str6, careServiceAction, assetImage != null ? AssetMapperKt.a(assetImage) : null, null));
    }
}
