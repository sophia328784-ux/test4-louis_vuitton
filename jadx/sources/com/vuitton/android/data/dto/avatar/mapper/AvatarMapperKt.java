package com.vuitton.android.data.dto.avatar.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.avatar.AvatarItemDto;
import com.vuitton.android.data.dto.avatar.AvatarResponseDto;
import com.vuitton.android.data.dto.avatar.AvatarSectionDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.foundation.model.domain.model.avatar.AvatarItem;
import com.vuitton.foundation.model.domain.model.avatar.AvatarResponse;
import com.vuitton.foundation.model.domain.model.avatar.AvatarSection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AvatarMapperKt {
    public static final AvatarResponse a(AvatarResponseDto avatarResponseDto) {
        avatarResponseDto.getClass();
        List<AvatarSectionDto> list = avatarResponseDto.f44613a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (AvatarSectionDto avatarSectionDto : list) {
            avatarSectionDto.getClass();
            String str = avatarSectionDto.f44616a;
            List<AvatarItemDto> list2 = avatarSectionDto.f44618c;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (AvatarItemDto avatarItemDto : list2) {
                boolean z = avatarSectionDto.f44617b;
                avatarItemDto.getClass();
                arrayList2.add(new AvatarItem(avatarItemDto.f44609a, AssetMapperKt.b(avatarItemDto.f44610b), z));
            }
            arrayList.add(new AvatarSection(str, arrayList2));
        }
        AvatarItemDto avatarItemDto2 = avatarResponseDto.f44614b;
        avatarItemDto2.getClass();
        return new AvatarResponse(arrayList, new AvatarItem(avatarItemDto2.f44609a, AssetMapperKt.b(avatarItemDto2.f44610b), false));
    }
}
