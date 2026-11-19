package com.vuitton.android.data.dto.product.reinsurance.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.product.reinsurance.error.ErrorDetailsDto;
import com.vuitton.android.data.dto.product.reinsurance.error.ErrorResponseDto;
import com.vuitton.foundation.model.domain.model.product.ReinsuranceErrorException;
import kotlin.Metadata;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceErrorMapperKt {
    public static final ReinsuranceErrorException a(ErrorResponseDto errorResponseDto) {
        errorResponseDto.getClass();
        Integer num = errorResponseDto.d;
        String str = errorResponseDto.g;
        ErrorDetailsDto errorDetailsDto = errorResponseDto.f46457f;
        if (num != null && num.intValue() == 404) {
            if (str == null) {
                str = errorDetailsDto != null ? errorDetailsDto.f46450b : null;
                if (str == null) {
                    str = "Not found";
                }
            }
            return new ReinsuranceErrorException.NotFound(str);
        }
        IntRange intRange = new IntRange(500, 505);
        if (num == null || !intRange.m(num.intValue())) {
            if (str == null) {
                str = errorDetailsDto != null ? errorDetailsDto.f46450b : null;
                if (str == null) {
                    str = "Unknown error";
                }
            }
            return new ReinsuranceErrorException.UnknownErrorException(str, null);
        }
        if (str == null) {
            str = errorDetailsDto != null ? errorDetailsDto.f46450b : null;
            if (str == null) {
                str = "Server error";
            }
        }
        return new ReinsuranceErrorException.ServerErrorException(str, errorResponseDto.d, errorDetailsDto != null ? errorDetailsDto.f46449a : null);
    }
}
