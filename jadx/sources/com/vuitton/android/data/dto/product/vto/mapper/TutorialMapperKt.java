package com.vuitton.android.data.dto.product.vto.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.product.vto.TutorialDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionDataDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionDto;
import com.vuitton.android.data.dto.product.vto.TutorialSectionTypeDto;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.product.vto.Tutorial;
import com.vuitton.foundation.model.domain.model.product.vto.TutorialSection;
import com.vuitton.foundation.model.domain.model.product.vto.TutorialSectionData;
import com.vuitton.foundation.model.domain.model.product.vto.TutorialSectionType;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46589a;

        static {
            int[] iArr = new int[TutorialSectionTypeDto.values().length];
            try {
                iArr[TutorialSectionTypeDto.ASSET_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TutorialSectionTypeDto.STEPS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46589a = iArr;
        }
    }

    public static final Tutorial a(TutorialDto tutorialDto) {
        TutorialSectionType tutorialSectionType;
        TutorialSectionData stepsSection;
        tutorialDto.getClass();
        String str = tutorialDto.f46570a;
        String str2 = tutorialDto.f46571b;
        String str3 = tutorialDto.f46572c;
        String str4 = tutorialDto.d;
        AssetImageDto assetImageDto = tutorialDto.f46573e;
        AssetImage assetImageB = assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null;
        String str5 = tutorialDto.f46574f;
        List<TutorialSectionDto> list = tutorialDto.g;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (TutorialSectionDto tutorialSectionDto : list) {
            String str6 = tutorialSectionDto.f46584a;
            int i2 = WhenMappings.f46589a[tutorialSectionDto.f46585b.ordinal()];
            if (i2 == 1) {
                tutorialSectionType = TutorialSectionType.ASSET_LIST;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                tutorialSectionType = TutorialSectionType.STEPS;
            }
            TutorialSectionDataDto tutorialSectionDataDto = tutorialSectionDto.f46586c;
            if (tutorialSectionDataDto instanceof TutorialSectionDataDto.AssetListSectionDto) {
                List list2 = ((TutorialSectionDataDto.AssetListSectionDto) tutorialSectionDataDto).f46577a;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(AssetMapperKt.a((AssetDto) it.next()));
                }
                stepsSection = new TutorialSectionData.AssetListSection(arrayList2);
            } else {
                if (!(tutorialSectionDataDto instanceof TutorialSectionDataDto.StepsSectionDto)) {
                    v40.g();
                    return null;
                }
                TutorialSectionDataDto.StepsSectionDto stepsSectionDto = (TutorialSectionDataDto.StepsSectionDto) tutorialSectionDataDto;
                stepsSection = new TutorialSectionData.StepsSection(stepsSectionDto.f46580a, stepsSectionDto.f46581b);
            }
            arrayList.add(new TutorialSection(str6, tutorialSectionType, stepsSection));
        }
        return new Tutorial(str, str2, str3, str4, assetImageB, str5, arrayList);
    }
}
