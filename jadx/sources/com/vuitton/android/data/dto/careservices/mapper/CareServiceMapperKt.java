package com.vuitton.android.data.dto.careservices.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.CareServiceDto;
import com.vuitton.android.data.dto.careservices.CareServiceOriginDto;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.DistantRepairsConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceMapperKt {
    public static final CareServiceDto a(CreateCareServiceParam createCareServiceParam, AppConfig appConfig) {
        createCareServiceParam.getClass();
        String str = createCareServiceParam.f66819a;
        String str2 = createCareServiceParam.f66820b;
        String str3 = createCareServiceParam.f66821c;
        CareServiceOrigin careServiceOrigin = createCareServiceParam.d;
        careServiceOrigin.getClass();
        CareServiceOriginDto careServiceOriginDtoValueOf = CareServiceOriginDto.valueOf(careServiceOrigin.name());
        CareServiceOrigin careServiceOrigin2 = CareServiceOrigin.AppForm;
        String str4 = careServiceOrigin == careServiceOrigin2 ? "" : createCareServiceParam.f66822e;
        boolean z = careServiceOrigin == CareServiceOrigin.Call;
        boolean z2 = careServiceOrigin == careServiceOrigin2;
        boolean z3 = careServiceOrigin == CareServiceOrigin.VideoCall;
        DistantRepairsConfig distantRepairsConfig = appConfig.Q;
        String str5 = distantRepairsConfig.f67247h;
        String str6 = appConfig.C;
        if (str6 == null) {
            str6 = "";
        }
        String str7 = distantRepairsConfig.f67248i;
        if (str7 == null) {
            str7 = "";
        }
        return new CareServiceDto(str, str2, str3, careServiceOriginDtoValueOf, str4, z, z2, z3, str5, str6, str7, "Distant Care Service", createCareServiceParam.f66823f, (String) null, createCareServiceParam.g, createCareServiceParam.f66824h, 8192, (DefaultConstructorMarker) null);
    }
}
