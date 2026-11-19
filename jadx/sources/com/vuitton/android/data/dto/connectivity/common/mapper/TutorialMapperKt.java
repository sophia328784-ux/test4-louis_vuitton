package com.vuitton.android.data.dto.connectivity.common.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.common.TutorialDto;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialMapperKt {
    public static final ArrayList a(List list) {
        list.getClass();
        if (list.isEmpty()) {
            list = null;
        }
        if (list == null) {
            return null;
        }
        List<TutorialDto> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (TutorialDto tutorialDto : list2) {
            tutorialDto.getClass();
            String str = tutorialDto.f45571a;
            if (str == null) {
                str = "";
            }
            arrayList.add(new Tutorial(str, new Video(tutorialDto.f45572b, tutorialDto.f45573c)));
        }
        return arrayList;
    }
}
