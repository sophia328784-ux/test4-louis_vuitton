package com.vuitton.android.presentation.screen.audioguide.models;

import android.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import com.vuitton.android.presentation.extensions.LongExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.SoundUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuide;
import com.vuitton.foundation.model.domain.model.common.Sound;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideMapperKt {
    public static final AudioGuideUiModel a(AudioGuide audioGuide) {
        Object next;
        AudioGuideUiModel.AvailableLanguageUiModel availableLanguageUiModel;
        audioGuide.getClass();
        String str = audioGuide.f66548a;
        String str2 = audioGuide.f66549b;
        String str3 = audioGuide.f66550c;
        AssetImageUiModel assetImageUiModelA = AssetMapperKt.a(audioGuide.d);
        long jB = ColorKt.b(Color.parseColor(audioGuide.f66551e));
        FeatureThemeUiModel featureThemeUiModelB = FeatureThemeMapperKt.b(audioGuide.f66552f);
        int i2 = audioGuide.g;
        String str4 = audioGuide.f66553h;
        List list = audioGuide.f66555j;
        List<AudioGuide.AvailableLanguage> list2 = list;
        Iterator it = list2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((AudioGuide.AvailableLanguage) next).f66560a, audioGuide.f66554i));
        AudioGuide.AvailableLanguage availableLanguage = (AudioGuide.AvailableLanguage) next;
        if (availableLanguage != null) {
            availableLanguageUiModel = new AudioGuideUiModel.AvailableLanguageUiModel(availableLanguage.f66560a, availableLanguage.f66561b);
        } else {
            AudioGuide.AvailableLanguage availableLanguage2 = (AudioGuide.AvailableLanguage) CollectionsKt.B(list);
            availableLanguageUiModel = new AudioGuideUiModel.AvailableLanguageUiModel(availableLanguage2.f66560a, availableLanguage2.f66561b);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (AudioGuide.AvailableLanguage availableLanguage3 : list2) {
            arrayList.add(new AudioGuideUiModel.AvailableLanguageUiModel(availableLanguage3.f66560a, availableLanguage3.f66561b));
        }
        AudioGuide.AudioGuideCard audioGuideCard = audioGuide.f66556k;
        AudioGuideUiModel.AudioGuideCardUiModel audioGuideCardUiModel = audioGuideCard != null ? new AudioGuideUiModel.AudioGuideCardUiModel(audioGuideCard.f66557a, audioGuideCard.f66558b, AssetMapperKt.a(audioGuideCard.f66559c)) : null;
        AudioGuide.Summary summary = audioGuide.l;
        AudioGuideUiModel.AudioGuideCardUiModel audioGuideCardUiModel2 = audioGuideCardUiModel;
        AudioGuideUiModel.SummaryUiModel summaryUiModel = new AudioGuideUiModel.SummaryUiModel(summary.f66564a, summary.f66565b);
        List list3 = audioGuide.m;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            AudioGuide.Track track = (AudioGuide.Track) it2.next();
            Iterator it3 = it2;
            String str5 = track.f66566a;
            String str6 = track.f66567b;
            String str7 = track.f66568c;
            AssetImageUiModel assetImageUiModelA2 = AssetMapperKt.a(track.d);
            AssetImageUiModel assetImageUiModelA3 = AssetMapperKt.a(track.f66569e);
            Sound sound = track.f66570f;
            String str8 = sound.f67140a;
            String str9 = str2;
            String str10 = sound.f67141b;
            long j2 = sound.f67142c;
            arrayList2.add(new AudioGuideUiModel.TrackUiModel(str5, str6, str7, assetImageUiModelA2, assetImageUiModelA3, new SoundUiModel(str8, str10, j2, LongExtKt.c(j2)), null, 64, null));
            it2 = it3;
            str2 = str9;
        }
        String str11 = str2;
        AudioGuide.Credits credits = audioGuide.n;
        return new AudioGuideUiModel(str, str11, str3, assetImageUiModelA, jB, featureThemeUiModelB, i2, str4, availableLanguageUiModel, arrayList, audioGuideCardUiModel2, summaryUiModel, arrayList2, credits != null ? new AudioGuideUiModel.CreditsUiModel(credits.f66562a, credits.f66563b) : null, null);
    }
}
