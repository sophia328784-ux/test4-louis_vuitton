package com.vuitton.android.data.dto.connectivity.watch.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.watch.WatchDto;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WatchMapperKt {
    public static final Watch a(WatchDto watchDto, String str, String str2) {
        watchDto.getClass();
        String str3 = watchDto.f45661a;
        String str4 = watchDto.f45662b;
        String str5 = watchDto.f45663c;
        String str6 = watchDto.d;
        String str7 = watchDto.f45664e;
        String str8 = watchDto.f45665f;
        String str9 = watchDto.g;
        return new Watch(str3, str4, str5, str6, str7, str8, str2, str9 != null ? Integer.parseInt(str9) : 1, str, null);
    }
}
