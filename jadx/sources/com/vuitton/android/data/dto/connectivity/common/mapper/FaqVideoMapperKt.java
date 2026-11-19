package com.vuitton.android.data.dto.connectivity.common.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.FaqVideoDto;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FaqVideoMapperKt {
    public static final FaqVideo a(FaqVideoDto faqVideoDto) {
        faqVideoDto.getClass();
        return new FaqVideo(faqVideoDto.f45568a, faqVideoDto.f45569b);
    }
}
