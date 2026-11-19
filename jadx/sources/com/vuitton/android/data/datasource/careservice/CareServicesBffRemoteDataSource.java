package com.vuitton.android.data.datasource.careservice;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAddressDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAppointmentDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationDto;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CareServicesBffRemoteDataSource {
    Object a(String str, CareServiceAddressDto careServiceAddressDto, ContinuationImpl continuationImpl);

    Object b(String str, ContinuationImpl continuationImpl);

    Object c(String str, CareServiceAppointmentDto careServiceAppointmentDto, ContinuationImpl continuationImpl);

    Object d(String str, CareServiceAddressDto careServiceAddressDto, CareServiceAddressDto careServiceAddressDto2, ContinuationImpl continuationImpl);

    Object e(String str, String str2, ContinuationImpl continuationImpl);

    Object f(String str, CareServiceAddressDto careServiceAddressDto, ContinuationImpl continuationImpl);

    Object g(ContinuationImpl continuationImpl);

    Object h(CareServiceCreationDto careServiceCreationDto, ContinuationImpl continuationImpl);
}
