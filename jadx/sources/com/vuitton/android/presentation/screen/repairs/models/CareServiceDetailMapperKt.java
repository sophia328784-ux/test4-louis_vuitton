package com.vuitton.android.presentation.screen.repairs.models;

import android.content.Context;
import com.vuitton.android.presentation.screen.account.addressbook.AddressHelper;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceItem;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.d21;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceDetailMapperKt {
    public static final String a(CareServiceDetailUiModel careServiceDetailUiModel, Context context, Json json) {
        careServiceDetailUiModel.getClass();
        context.getClass();
        json.getClass();
        String str = new String();
        String str2 = careServiceDetailUiModel.n;
        String str3 = careServiceDetailUiModel.t;
        String str4 = careServiceDetailUiModel.r;
        String str5 = careServiceDetailUiModel.s;
        String str6 = careServiceDetailUiModel.q;
        String str7 = careServiceDetailUiModel.p;
        String str8 = careServiceDetailUiModel.o;
        if (str2.length() > 0) {
            str = d21.j(str, str2);
        }
        if (str8.length() > 0) {
            str = tr.h(str, "\n", str8);
        }
        if (str7.length() > 0) {
            str = tr.h(str, "\n", str7);
        }
        if (str6.length() > 0) {
            str = tr.h(str, "\n", str6);
        }
        if (str5.length() > 0) {
            str = tr.h(str, ", ", str5);
        }
        if (str4.length() > 0) {
            str = tr.h(str, " ", str4);
        }
        return str3.length() > 0 ? d21.k(str, "\n", AddressHelper.b(context, json, str3), " ") : str;
    }

    public static final String b(CareServiceDetailUiModel careServiceDetailUiModel) {
        String str = new String();
        String str2 = careServiceDetailUiModel.n;
        String str3 = careServiceDetailUiModel.t;
        String str4 = careServiceDetailUiModel.r;
        String str5 = careServiceDetailUiModel.s;
        String str6 = careServiceDetailUiModel.q;
        String str7 = careServiceDetailUiModel.p;
        String str8 = careServiceDetailUiModel.o;
        if (str2.length() > 0) {
            str = d21.j(str, str2);
        }
        if (str8.length() > 0) {
            str = tr.h(str, ", ", str8);
        }
        if (str7.length() > 0) {
            str = tr.h(str, ", ", str7);
        }
        if (str6.length() > 0) {
            str = tr.h(str, "\n", str6);
        }
        if (str5.length() > 0) {
            str = tr.h(str, ", ", str5);
        }
        if (str4.length() > 0) {
            str = tr.h(str, " ", str4);
        }
        return str3.length() > 0 ? tr.h(str, ", ", str3) : str;
    }

    public static final CareServiceDetailUiModel c(CareServiceDetail careServiceDetail, String str, boolean z) {
        careServiceDetail.getClass();
        str.getClass();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str2 = careServiceDetail.f66794a;
        companion.getClass();
        RepairType repairType = careServiceDetail.f66795b;
        RepairStatusUiModel repairStatusUiModelE = RepairStatusUiModelKt.e(careServiceDetail.f66796c, z);
        String str3 = careServiceDetail.d;
        String str4 = careServiceDetail.f66797e;
        String str5 = careServiceDetail.f66798f;
        double d = careServiceDetail.g;
        Double d2 = careServiceDetail.f66799h;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        String str6 = careServiceDetail.f66800i;
        companion2.getClass();
        String str7 = careServiceDetail.f66802k;
        String str8 = careServiceDetail.l;
        String str9 = careServiceDetail.m;
        String str10 = careServiceDetail.n;
        String str11 = careServiceDetail.o;
        String str12 = careServiceDetail.p;
        String str13 = careServiceDetail.q;
        String str14 = careServiceDetail.r;
        String str15 = careServiceDetail.s;
        String str16 = careServiceDetail.B;
        String str17 = careServiceDetail.C;
        List list = careServiceDetail.D;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CareServiceItem careServiceItem = (CareServiceItem) it.next();
            careServiceItem.getClass();
            arrayList.add(new CareServiceItemUiModel(careServiceItem.f66803a, careServiceItem.f66804b, careServiceItem.f66805c, careServiceItem.d, careServiceItem.f66806e, careServiceItem.f66807f, careServiceItem.g, careServiceItem.f66808h, careServiceItem.f66809i));
            it = it;
            repairType = repairType;
            repairStatusUiModelE = repairStatusUiModelE;
        }
        RepairType repairType2 = repairType;
        RepairStatusUiModel repairStatusUiModel = repairStatusUiModelE;
        String str18 = careServiceDetail.E;
        CareServiceOrigin careServiceOrigin = careServiceDetail.F;
        String str19 = careServiceDetail.G;
        String str20 = careServiceDetail.H;
        String str21 = careServiceDetail.I;
        String str22 = careServiceDetail.J;
        String str23 = careServiceDetail.K;
        String str24 = careServiceDetail.L;
        if (str24 != null) {
            CareServiceTransactionIdUiModel.f64071c.getClass();
        } else {
            str24 = null;
        }
        return new CareServiceDetailUiModel(str2, repairType2, repairStatusUiModel, str3, str4, str5, d, d2, str6, str, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, arrayList, str18, careServiceOrigin, str19, str20, str21, str22, str23, str24, careServiceDetail.M, careServiceDetail.N, careServiceDetail.O, careServiceDetail.P, careServiceDetail.Q, careServiceDetail.R, careServiceDetail.S, careServiceDetail.T, careServiceDetail.U, false, 0, 128, null);
    }
}
