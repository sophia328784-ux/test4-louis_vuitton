package com.vuitton.android.data.dto.audioguide.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.audioguide.AudioGuideDto;
import com.vuitton.android.data.dto.common.SoundDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.common.mapper.FeatureThemeMapperKt;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuide;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import com.vuitton.foundation.model.domain.model.common.Sound;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideMapperKt {
    public static final AudioGuide a(AudioGuideDto audioGuideDto) {
        audioGuideDto.getClass();
        String str = audioGuideDto.f44496a;
        String str2 = audioGuideDto.f44497b;
        String str3 = audioGuideDto.f44498c;
        AssetImage assetImageB = AssetMapperKt.b(audioGuideDto.d);
        String str4 = audioGuideDto.f44499e;
        FeatureTheme featureThemeA = FeatureThemeMapperKt.a(audioGuideDto.f44500f);
        int i2 = audioGuideDto.g;
        String str5 = audioGuideDto.f44501h;
        String str6 = audioGuideDto.f44502i;
        List<AudioGuideDto.AvailableLanguageDto> list = audioGuideDto.f44503j;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (AudioGuideDto.AvailableLanguageDto availableLanguageDto : list) {
            arrayList.add(new AudioGuide.AvailableLanguage(availableLanguageDto.f44510a, availableLanguageDto.f44511b));
        }
        AudioGuideDto.AudioGuideCardDto audioGuideCardDto = audioGuideDto.f44504k;
        AudioGuide.AudioGuideCard audioGuideCard = audioGuideCardDto != null ? new AudioGuide.AudioGuideCard(audioGuideCardDto.f44506a, audioGuideCardDto.f44507b, AssetMapperKt.b(audioGuideCardDto.f44508c)) : null;
        AudioGuideDto.SummaryDto summaryDto = audioGuideDto.l;
        AudioGuide.Summary summary = new AudioGuide.Summary(summaryDto.f44516a, summaryDto.f44517b);
        List<AudioGuideDto.TrackDto> list2 = audioGuideDto.m;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (AudioGuideDto.TrackDto trackDto : list2) {
            String str7 = str;
            String str8 = trackDto.f44519a;
            String str9 = trackDto.f44520b;
            String str10 = trackDto.f44521c;
            AssetImage assetImageB2 = AssetMapperKt.b(trackDto.d);
            AssetImage assetImageB3 = AssetMapperKt.b(trackDto.f44522e);
            SoundDto soundDto = trackDto.f44523f;
            soundDto.getClass();
            arrayList2.add(new AudioGuide.Track(str8, str9, str10, assetImageB2, assetImageB3, new Sound(soundDto.f45264a, soundDto.f45265b, (long) soundDto.f45266c)));
            str = str7;
            str2 = str2;
            str3 = str3;
            assetImageB = assetImageB;
            str4 = str4;
        }
        String str11 = str;
        String str12 = str2;
        String str13 = str3;
        AssetImage assetImage = assetImageB;
        String str14 = str4;
        AudioGuideDto.CreditsDto creditsDto = audioGuideDto.n;
        return new AudioGuide(str11, str12, str13, assetImage, str14, featureThemeA, i2, str5, str6, arrayList, audioGuideCard, summary, arrayList2, creditsDto != null ? new AudioGuide.Credits(creditsDto.f44513a, creditsDto.f44514b) : null);
    }
}
