package com.vuitton.android.presentation.screen.repairs.models;

import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareService;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.util.StringKtExtKt;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceMapperKt {
    public static final CareServiceUpdate a(CareServiceDetailUiModel careServiceDetailUiModel) {
        return new CareServiceUpdate(RepairStatusUiModelKt.d(careServiceDetailUiModel.d), null, careServiceDetailUiModel.m, careServiceDetailUiModel.n, careServiceDetailUiModel.o, careServiceDetailUiModel.p, careServiceDetailUiModel.q, careServiceDetailUiModel.r, careServiceDetailUiModel.s, careServiceDetailUiModel.t, null, null, null, null, null, null, null, null, StringKtExtKt.e(careServiceDetailUiModel.u), careServiceDetailUiModel.J, careServiceDetailUiModel.K, careServiceDetailUiModel.L, null, 4455426, null);
    }

    public static final ArrayList b(List list, boolean z) {
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (Iterator it = list2.iterator(); it.hasNext(); it = it) {
            CareService careService = (CareService) it.next();
            careService.getClass();
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            String str = careService.f66785a;
            companion.getClass();
            str.getClass();
            CareServiceIdUiModel.Companion companion2 = CareServiceIdUiModel.f64059c;
            String str2 = careService.f66786b;
            String str3 = careService.f66787c;
            RepairStatusUiModel repairStatusUiModelE = RepairStatusUiModelKt.e(careService.d, z);
            Date time = careService.f66788e;
            if (time == null) {
                TimeZone timeZone = TimeZone.getDefault();
                timeZone.getClass();
                Calendar calendar = Calendar.getInstance(timeZone);
                calendar.getClass();
                time = calendar.getTime();
                time.getClass();
            }
            String str4 = careService.f66789f;
            String str5 = careService.g;
            String str6 = careService.f66790h;
            String str7 = careService.f66791i;
            String str8 = careService.f66792j;
            SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
            String str9 = careService.f66793k;
            companion3.getClass();
            SkuIdUiModel.Companion.c(str9);
            arrayList.add(new CareServiceUiModel(str, str2, str3, repairStatusUiModelE, time, str4, str5, str6, str7, str8, str9, careService.n, careService.o, careService.p, careService.q, careService.r, false, false, false, false, 983040, null));
        }
        return arrayList;
    }
}
