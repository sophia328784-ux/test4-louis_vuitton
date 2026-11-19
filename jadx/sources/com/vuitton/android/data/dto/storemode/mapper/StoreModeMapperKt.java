package com.vuitton.android.data.dto.storemode.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import com.vuitton.android.data.dto.linktype.mapper.LinkTypeMapperKt;
import com.vuitton.android.data.dto.storemode.StoreModeDataDto;
import com.vuitton.android.data.dto.storemode.StoreModeInfoDto;
import com.vuitton.android.data.dto.storemode.StoreModeSectionDto;
import com.vuitton.android.data.dto.storemode.StoreModeTypeDto;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.storemode.StoreModeData;
import com.vuitton.foundation.model.domain.model.storemode.StoreModeInfo;
import com.vuitton.foundation.model.domain.model.storemode.StoreModeSection;
import com.vuitton.foundation.model.domain.model.storemode.StoreModeType;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeMapperKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ArrayList] */
    public static final StoreModeInfo a(StoreModeInfoDto storeModeInfoDto) {
        ?? arrayList;
        StoreModeData.StoreModeSimple storeModeSimple;
        storeModeInfoDto.getClass();
        String str = storeModeInfoDto.f46861a;
        String str2 = str == null ? "" : str;
        AssetDto assetDto = storeModeInfoDto.f46862b;
        Asset assetA = assetDto != null ? AssetMapperKt.a(assetDto) : null;
        List list = storeModeInfoDto.f46863c;
        if (list != null) {
            List list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(AssetMapperKt.a((AssetDto) it.next()));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        List<StoreModeSectionDto> list3 = storeModeInfoDto.d;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
        for (StoreModeSectionDto storeModeSectionDto : list3) {
            storeModeSectionDto.getClass();
            String str3 = storeModeSectionDto.f46865a;
            StoreModeTypeDto storeModeTypeDto = storeModeSectionDto.f46866b;
            storeModeTypeDto.getClass();
            if (StoreModeSectionMapperKt$WhenMappings.f46869a[storeModeTypeDto.ordinal()] != 1) {
                v40.g();
                return null;
            }
            StoreModeType storeModeType = StoreModeType.SIMPLE;
            StoreModeDataDto storeModeDataDto = storeModeSectionDto.f46867c;
            storeModeDataDto.getClass();
            if (storeModeDataDto instanceof StoreModeDataDto.StoreModeSimpleDto) {
                StoreModeDataDto.StoreModeSimpleDto storeModeSimpleDto = (StoreModeDataDto.StoreModeSimpleDto) storeModeDataDto;
                String str4 = storeModeSimpleDto.f46854a;
                String str5 = storeModeSimpleDto.f46855b;
                AssetImage assetImageB = AssetMapperKt.b(storeModeSimpleDto.f46856c);
                ContributionLinkLegacyDto contributionLinkLegacyDto = storeModeSimpleDto.d;
                LinkTypeDto linkTypeDto = contributionLinkLegacyDto.f46030a;
                String str6 = contributionLinkLegacyDto.f46031b;
                if (str6 == null) {
                    str6 = "";
                }
                storeModeSimple = new StoreModeData.StoreModeSimple(str4, str5, assetImageB, LinkTypeMapperKt.a(linkTypeDto, str6, null));
            } else {
                if (!storeModeDataDto.equals(StoreModeDataDto.UnknownStoreModeDataDto.INSTANCE)) {
                    v40.g();
                    return null;
                }
                storeModeSimple = null;
            }
            arrayList2.add(new StoreModeSection(str3, storeModeType, storeModeSimple));
        }
        return new StoreModeInfo(null, str2, assetA, arrayList, arrayList2, 1, null);
    }
}
