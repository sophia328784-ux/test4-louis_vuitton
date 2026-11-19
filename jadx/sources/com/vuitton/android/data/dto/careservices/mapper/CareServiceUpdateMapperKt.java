package com.vuitton.android.data.dto.careservices.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.CareServiceUpdateDto;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceUpdateMapperKt {
    public static final CareServiceUpdateDto a(CareServiceUpdate careServiceUpdate) {
        String str;
        String str2;
        careServiceUpdate.getClass();
        String str3 = careServiceUpdate.w;
        String lowerCase = careServiceUpdate.f66810a.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String str4 = careServiceUpdate.f66812c;
        String str5 = careServiceUpdate.d;
        String str6 = careServiceUpdate.f66813e;
        String str7 = careServiceUpdate.f66814f;
        String str8 = careServiceUpdate.g;
        String str9 = careServiceUpdate.f66815h;
        String str10 = careServiceUpdate.f66816i;
        String str11 = careServiceUpdate.f66817j;
        String str12 = careServiceUpdate.f66818k;
        String str13 = str12.length() > 0 ? str12 : null;
        String str14 = careServiceUpdate.l;
        String str15 = careServiceUpdate.m;
        String str16 = careServiceUpdate.n;
        String str17 = careServiceUpdate.o;
        String str18 = careServiceUpdate.p;
        String str19 = careServiceUpdate.q;
        String str20 = careServiceUpdate.r;
        Instant instant = careServiceUpdate.s;
        String string = instant != null ? instant.toString() : null;
        if (string == null) {
            str2 = "";
            str = str2;
        } else {
            str = string;
            str2 = "";
        }
        String str21 = careServiceUpdate.t;
        String str22 = careServiceUpdate.u;
        String str23 = careServiceUpdate.v;
        RepairStatus repairStatus = RepairStatus.REQUEST_SUBMITTED;
        RepairStatus repairStatus2 = careServiceUpdate.f66811b;
        return new CareServiceUpdateDto(lowerCase, str4, str5, str6, str7, str8, str9, str10, str11, str13, str14, str15, str16, str17, str18, str19, str20, str, str21, str22, str23, (repairStatus2 != repairStatus || str3 == null) ? str2 : str3, (repairStatus2 != RepairStatus.PRELIMINARY_ASSESSMENT || str3 == null) ? str2 : str3);
    }
}
