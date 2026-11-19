package com.vuitton.android.data.dto.distantrepairs.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.distantrepairs.AppointmentAvailabilitiesDtoResponse;
import com.vuitton.android.data.dto.distantrepairs.SlotDto;
import com.vuitton.android.data.dto.distantrepairs.StoreSlotInfoDto;
import com.vuitton.foundation.model.domain.model.distantrepairs.RepairTimeSlot;
import com.vuitton.foundation.model.domain.model.distantrepairs.StoreSlots;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AppointmentAvailabilitiesMapperKt {
    public static final ArrayList a(AppointmentAvailabilitiesDtoResponse appointmentAvailabilitiesDtoResponse) {
        StoreSlots storeSlots;
        appointmentAvailabilitiesDtoResponse.getClass();
        List<StoreSlotInfoDto> list = appointmentAvailabilitiesDtoResponse.f45708b;
        ArrayList arrayList = new ArrayList();
        for (StoreSlotInfoDto storeSlotInfoDto : list) {
            storeSlotInfoDto.getClass();
            List list2 = storeSlotInfoDto.d;
            String str = storeSlotInfoDto.f45735c;
            List list3 = storeSlotInfoDto.f45736e;
            if (list2.isEmpty() && list3.isEmpty()) {
                storeSlots = null;
            } else {
                String str2 = storeSlotInfoDto.f45735c;
                String str3 = storeSlotInfoDto.f45733a;
                List<SlotDto> list4 = list2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
                for (SlotDto slotDto : list4) {
                    slotDto.getClass();
                    str.getClass();
                    String str4 = slotDto.f45728a;
                    String str5 = slotDto.f45729b;
                    arrayList2.add(new RepairTimeSlot(str4, str5, str5, "", str));
                }
                List<SlotDto> list5 = list3;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
                for (SlotDto slotDto2 : list5) {
                    slotDto2.getClass();
                    str.getClass();
                    String str6 = slotDto2.f45728a;
                    String str7 = slotDto2.f45729b;
                    arrayList3.add(new RepairTimeSlot(str6, str7, str7, "", str));
                }
                storeSlots = new StoreSlots(str2, arrayList2, arrayList3, str3, storeSlotInfoDto.f45734b);
            }
            if (storeSlots != null) {
                arrayList.add(storeSlots);
            }
        }
        return arrayList;
    }
}
