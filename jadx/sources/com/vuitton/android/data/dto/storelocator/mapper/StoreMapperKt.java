package com.vuitton.android.data.dto.storelocator.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.CtaDto;
import com.vuitton.android.data.dto.linktype.mapper.ContributionLinkMapperKt;
import com.vuitton.android.data.dto.storelocator.MegatrioDto;
import com.vuitton.android.data.dto.storelocator.StoreAddressDto;
import com.vuitton.android.data.dto.storelocator.StoreDto;
import com.vuitton.android.data.dto.storelocator.StoreOpeningHoursDto;
import com.vuitton.foundation.model.domain.model.common.Cta;
import com.vuitton.foundation.model.domain.model.storelocator.Megatrio;
import com.vuitton.foundation.model.domain.model.storelocator.Store;
import com.vuitton.foundation.model.domain.model.storelocator.StoreAddress;
import com.vuitton.foundation.model.domain.model.storelocator.StoreOpeningHours;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreMapperKt {
    public static final Store a(StoreDto storeDto) {
        List arrayList;
        Megatrio megatrio;
        storeDto.getClass();
        String str = storeDto.f46836a;
        String str2 = storeDto.f46837b;
        String str3 = storeDto.f46838c;
        String str4 = storeDto.d;
        if (str4 == null) {
            str4 = "";
        }
        StoreAddressDto storeAddressDto = storeDto.f46839e;
        storeAddressDto.getClass();
        String str5 = storeAddressDto.f46830a;
        if (str5 == null) {
            str5 = "";
        }
        String str6 = storeAddressDto.f46831b;
        if (str6 == null) {
            str6 = "";
        }
        String str7 = storeAddressDto.f46832c;
        if (str7 == null) {
            str7 = "";
        }
        String str8 = storeAddressDto.d;
        String str9 = storeAddressDto.f46833e;
        StoreAddress storeAddress = new StoreAddress(str5, str6, str7, str8, str9 == null ? "" : str9);
        String str10 = storeDto.f46840f;
        if (str10 == null) {
            AssetImageDto assetImageDto = storeDto.g;
            str10 = assetImageDto != null ? assetImageDto.f45241b : null;
            if (str10 == null) {
                str10 = "";
            }
        }
        Boolean bool = storeDto.f46841h;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        List list = storeDto.f46842i;
        if (list != null) {
            List<StoreOpeningHoursDto> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (StoreOpeningHoursDto storeOpeningHoursDto : list2) {
                storeOpeningHoursDto.getClass();
                String str11 = storeOpeningHoursDto.f46848a;
                String str12 = storeOpeningHoursDto.f46849b;
                if (str12 == null) {
                    str12 = "";
                }
                String str13 = storeOpeningHoursDto.f46850c;
                if (str13 == null) {
                    str13 = "";
                }
                arrayList.add(new StoreOpeningHours(str11, str12, str13));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        List list3 = arrayList;
        MegatrioDto megatrioDto = storeDto.f46843j;
        if (megatrioDto != null) {
            String str14 = megatrioDto.f46826a;
            String str15 = megatrioDto.f46827b;
            List<CtaDto> list4 = megatrioDto.f46828c;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
            for (CtaDto ctaDto : list4) {
                ctaDto.getClass();
                arrayList2.add(new Cta(ctaDto.f45257a, ContributionLinkMapperKt.a(ctaDto.f45258b)));
            }
            megatrio = new Megatrio(str14, str15, arrayList2);
        } else {
            megatrio = null;
        }
        return new Store(str, str2, str3, str4, storeAddress, str10, zBooleanValue, list3, megatrio);
    }
}
