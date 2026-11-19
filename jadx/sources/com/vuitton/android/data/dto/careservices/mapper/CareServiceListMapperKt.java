package com.vuitton.android.data.dto.careservices.mapper;

import com.google.ar.core.ImageMetadata;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.CareServicesDto;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.careservices.CareService;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.v40;
import java.util.Date;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceListMapperKt {
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    public static final CareService a(CareServicesDto careServicesDto) {
        RepairStatus repairStatusA;
        RepairType repairType;
        careServicesDto.getClass();
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        String str = careServicesDto.f44839a;
        companion.getClass();
        if (str == null) {
            str = CareServiceId.f66878b;
        }
        String str2 = str;
        String str3 = careServicesDto.f44841c;
        String str4 = str3 == null ? "" : str3;
        String str5 = careServicesDto.f44843f;
        String str6 = str5 == null ? "" : str5;
        RepairStatusDto repairStatusDto = careServicesDto.d;
        if (repairStatusDto == null || (repairStatusA = RepairStatusMapperKt.a(repairStatusDto)) == null) {
            repairStatusA = RepairStatus.CANCELLED;
        }
        RepairStatus repairStatus = repairStatusA;
        Date date = careServicesDto.g;
        String str7 = careServicesDto.o;
        String str8 = careServicesDto.p;
        String str9 = careServicesDto.f44846j;
        String str10 = careServicesDto.s;
        String str11 = str10 == null ? "" : str10;
        String str12 = careServicesDto.u;
        String str13 = str12 == null ? "" : str12;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        String str14 = careServicesDto.q;
        companion2.getClass();
        if (str14 == null) {
            str14 = SkuId.f67932b;
        }
        String str15 = str14;
        String str16 = careServicesDto.t;
        String str17 = str16 == null ? "" : str16;
        String str18 = careServicesDto.v;
        String str19 = str18 == null ? "" : str18;
        RepairTypeDto repairTypeDto = careServicesDto.f44840b;
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
        String str20 = careServicesDto.f44847k;
        Float f2 = careServicesDto.m;
        return new CareService(str2, str4, str6, repairStatus, date, str7, str8, str9, str11, str13, str15, str20, Double.valueOf(f2 != null ? f2.floatValue() : 0.0d), str17, str19, repairType2, null, false, ImageMetadata.EDGE_MODE, null);
    }
}
