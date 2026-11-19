package com.vuitton.android.data.dto.careservices.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.CareServiceDetailDto;
import com.vuitton.android.data.dto.careservices.CareServiceLineDto;
import com.vuitton.android.data.dto.careservices.CareServiceOriginDto;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceItem;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceDetailMapperKt {
    /* JADX WARN: Code duplicated, block: B:18:0x0032  */
    public static final CareServiceDetail a(CareServiceDetailDto careServiceDetailDto) {
        RepairType repairType;
        RepairStatus repairStatusA;
        String str;
        String str2;
        String str3;
        String str4;
        careServiceDetailDto.getClass();
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        String str5 = careServiceDetailDto.d;
        companion.getClass();
        if (str5 == null) {
            str5 = CareServiceId.f66878b;
        }
        String str6 = str5;
        RepairTypeDto repairTypeDto = careServiceDetailDto.f44799e;
        if (repairTypeDto == null) {
            repairType = RepairType.DISTANT_CARE_SERVICE;
        } else {
            int i2 = RepairTypeMapperKt$WhenMappings.f44959a[repairTypeDto.ordinal()];
            if (i2 == 1) {
                repairType = RepairType.DISTANT_CARE_SERVICE;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                repairType = RepairType.STORE_CARE_SERVICE;
            }
            if (repairType == null) {
                repairType = RepairType.DISTANT_CARE_SERVICE;
            }
        }
        RepairType repairType2 = repairType;
        RepairStatusDto repairStatusDto = careServiceDetailDto.g;
        if (repairStatusDto == null || (repairStatusA = RepairStatusMapperKt.a(repairStatusDto)) == null) {
            repairStatusA = RepairStatus.CANCELLED;
        }
        RepairStatus repairStatus = repairStatusA;
        String str7 = careServiceDetailDto.f44803j;
        String str8 = str7 == null ? "" : str7;
        String str9 = careServiceDetailDto.n;
        String str10 = str9 == null ? "" : str9;
        String str11 = careServiceDetailDto.o;
        String str12 = str11 == null ? "" : str11;
        Double d = careServiceDetailDto.p;
        double dDoubleValue = d != null ? d.doubleValue() : 0.0d;
        Double d2 = careServiceDetailDto.q;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        String str13 = careServiceDetailDto.t;
        companion2.getClass();
        if (str13 == null) {
            str13 = SkuId.f67932b;
        }
        String str14 = careServiceDetailDto.y;
        if (str14 == null) {
            str14 = "";
        }
        String str15 = careServiceDetailDto.D;
        if (str15 == null) {
            str15 = "";
        }
        String str16 = careServiceDetailDto.E;
        String str17 = str16 == null ? "" : str16;
        String str18 = careServiceDetailDto.F;
        String str19 = str18 == null ? "" : str18;
        String str20 = careServiceDetailDto.G;
        if (str20 == null) {
            str2 = str20;
            str = "";
        } else {
            str = str20;
            str2 = str;
        }
        String str21 = careServiceDetailDto.H;
        String str22 = str21;
        String str23 = str2;
        String str24 = str21 == null ? "" : str22;
        String str25 = careServiceDetailDto.I;
        String str26 = str25;
        String str27 = str25 == null ? "" : str26;
        String str28 = str18;
        double d3 = dDoubleValue;
        String str29 = str16;
        String str30 = careServiceDetailDto.J;
        if (str30 == null) {
            str4 = str30;
            str3 = "";
        } else {
            str3 = str30;
            str4 = str3;
        }
        String str31 = careServiceDetailDto.K;
        String str32 = str31;
        String str33 = str4;
        String str34 = str31 == null ? "" : str32;
        String str35 = careServiceDetailDto.L;
        String str36 = str23;
        String str37 = str35 == null ? "" : str35;
        if (str29 == null) {
            str29 = "";
        }
        if (str28 == null) {
            str28 = "";
        }
        if (str36 == null) {
            str36 = "";
        }
        if (str22 == null) {
            str22 = "";
        }
        if (str26 == null) {
            str26 = "";
        }
        if (str33 == null) {
            str33 = "";
        }
        if (str32 == null) {
            str32 = "";
        }
        String str38 = str35 == null ? "" : str35;
        String str39 = careServiceDetailDto.A;
        String str40 = str39 == null ? "" : str39;
        String str41 = careServiceDetailDto.B;
        List list = careServiceDetailDto.O;
        String str42 = str14;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CareServiceLineDto careServiceLineDto = (CareServiceLineDto) it.next();
            careServiceLineDto.getClass();
            Iterator it2 = it;
            String str43 = careServiceLineDto.f44816a;
            String str44 = str43 == null ? "" : str43;
            String str45 = careServiceLineDto.f44817b;
            String str46 = str45 == null ? "" : str45;
            String str47 = careServiceLineDto.f44818c;
            String str48 = str47 == null ? "" : str47;
            String str49 = careServiceLineDto.d;
            String str50 = str49 == null ? "" : str49;
            Double d4 = careServiceLineDto.f44819e;
            double dDoubleValue2 = d4 != null ? d4.doubleValue() : 0.0d;
            Double d5 = careServiceLineDto.f44820f;
            Double d6 = careServiceLineDto.g;
            String str51 = str6;
            RepairType repairType3 = repairType2;
            arrayList.add(new CareServiceItem(str44, str46, str48, str50, dDoubleValue2, d5, d6 != null ? (int) d6.doubleValue() : 0, careServiceLineDto.f44821h, careServiceLineDto.f44822i));
            it = it2;
            str6 = str51;
            repairType2 = repairType3;
        }
        String str52 = str6;
        RepairType repairType4 = repairType2;
        String str53 = careServiceDetailDto.M;
        if (str53 == null) {
            str53 = "";
        }
        CareServiceOriginDto careServiceOriginDto = careServiceDetailDto.C;
        CareServiceOrigin careServiceOriginValueOf = careServiceOriginDto == null ? CareServiceOrigin.AppForm : CareServiceOrigin.valueOf(careServiceOriginDto.name());
        String str54 = careServiceDetailDto.P;
        String str55 = str54 == null ? "" : str54;
        String str56 = careServiceDetailDto.Q;
        String str57 = str56 == null ? "" : str56;
        String str58 = careServiceDetailDto.R;
        String str59 = str58 == null ? "" : str58;
        String str60 = careServiceDetailDto.r;
        String str61 = str60 == null ? "" : str60;
        String str62 = careServiceDetailDto.s;
        String str63 = str62 == null ? "" : str62;
        String str64 = careServiceDetailDto.f44800f;
        String str65 = careServiceDetailDto.v;
        String str66 = str65 == null ? "" : str65;
        String str67 = careServiceDetailDto.x;
        String str68 = str67 == null ? "" : str67;
        String str69 = careServiceDetailDto.f44801h;
        String str70 = str69 == null ? "" : str69;
        String str71 = careServiceDetailDto.f44802i;
        String str72 = str71 == null ? "" : str71;
        String str73 = careServiceDetailDto.S;
        String str74 = str73 == null ? "" : str73;
        String str75 = careServiceDetailDto.T;
        String str76 = str75 == null ? "" : str75;
        String str77 = careServiceDetailDto.U;
        if (str77 == null) {
            str77 = "";
        }
        String str78 = str53;
        String str79 = careServiceDetailDto.V;
        if (str79 == null) {
            str79 = "";
        }
        String str80 = careServiceDetailDto.W;
        return new CareServiceDetail(str52, repairType4, repairStatus, str8, str10, str12, d3, d2, str13, str42, str15, str17, str19, str, str24, str27, str3, str34, str37, str29, str28, str36, str22, str26, str33, str32, str38, str40, str41, arrayList, str78, careServiceOriginValueOf, str55, str57, str59, str61, str63, str64, str66, str68, str70, str72, str74, str76, str77, str79, str80 == null ? "" : str80, null);
    }
}
