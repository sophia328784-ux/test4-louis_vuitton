package com.vuitton.android.data.dto.catalog.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.catalog.PLPEntryDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.foundation.model.domain.model.catalog.PLPEntry;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPEntryMapperKt {
    public static final PLPEntry a(PLPEntryDto pLPEntryDto) {
        pLPEntryDto.getClass();
        String str = pLPEntryDto.f45104a;
        String str2 = pLPEntryDto.f45105b;
        String str3 = pLPEntryDto.f45106c;
        AssetImageDto assetImageDto = pLPEntryDto.d;
        return new PLPEntry(str, str2, str3, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null);
    }
}
