package com.vuitton.android.data.dto.story.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.story.StoryDto;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.story.Story;
import com.vuitton.foundation.model.domain.model.story.StoryAsset;
import com.vuitton.foundation.model.domain.model.story.StoryCta;
import com.vuitton.foundation.model.domain.model.story.StorySlide;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoryMapperKt {
    public static final Story a(StoryDto storyDto) throws Throwable {
        List arrayList;
        StoryAsset storyAsset;
        AssetVideo assetVideo;
        storyDto.getClass();
        String str = storyDto.f46871a;
        if (str == null) {
            str = "";
        }
        String str2 = storyDto.f46872b;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = storyDto.f46873c;
        if (str3 == null) {
            str3 = "";
        }
        List list = storyDto.d;
        if (list != null) {
            List<StoryDto.StorySlideDto> list2 = list;
            arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (StoryDto.StorySlideDto storySlideDto : list2) {
                storySlideDto.getClass();
                String str4 = storySlideDto.f46881a;
                if (str4 == null) {
                    str4 = "";
                }
                String str5 = storySlideDto.f46882b;
                if (str5 == null) {
                    str5 = "";
                }
                String str6 = storySlideDto.f46883c;
                String str7 = storySlideDto.d;
                StoryDto.StoryAssetDto storyAssetDto = storySlideDto.f46884e;
                StoryCta storyCta = null;
                if (storyAssetDto != null) {
                    AssetImageDto assetImageDto = storyAssetDto.f46875a;
                    AssetImage assetImageB = assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null;
                    AssetVideoDto assetVideoDto = storyAssetDto.f46876b;
                    if (assetVideoDto != null) {
                        Object objC = AssetMapperKt.c(assetVideoDto);
                        ResultKt.b(objC);
                        assetVideo = (AssetVideo) objC;
                    } else {
                        assetVideo = null;
                    }
                    storyAsset = new StoryAsset(assetImageB, assetVideo);
                } else {
                    storyAsset = null;
                }
                StoryDto.StoryCtaDto storyCtaDto = storySlideDto.f46885f;
                if (storyCtaDto != null) {
                    String str8 = storyCtaDto.f46878a;
                    if (str8 == null) {
                        str8 = "";
                    }
                    String str9 = storyCtaDto.f46879b;
                    if (str9 == null) {
                        str9 = "";
                    }
                    storyCta = new StoryCta(str8, str9);
                }
                arrayList.add(new StorySlide(str4, str5, str6, str7, storyAsset, storyCta));
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        return new Story(str, str2, str3, arrayList);
    }
}
