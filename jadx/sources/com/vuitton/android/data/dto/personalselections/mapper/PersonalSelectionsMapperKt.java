package com.vuitton.android.data.dto.personalselections.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.personalselections.PersonalSharingDto;
import com.vuitton.android.data.dto.personalselections.SelectionTypeDto;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSharing;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionType;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsMapperKt {
    public static final ArrayList a(List list) {
        SelectionType selectionType;
        list.getClass();
        List<PersonalSharingDto> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (PersonalSharingDto personalSharingDto : list2) {
            personalSharingDto.getClass();
            String str = personalSharingDto.f46328a;
            String str2 = personalSharingDto.f46329b;
            SelectionTypeDto selectionTypeDto = personalSharingDto.f46330c;
            selectionTypeDto.getClass();
            int i2 = PersonalSelectionsDetailMapperKt.WhenMappings.f46349a[selectionTypeDto.ordinal()];
            if (i2 == 1) {
                selectionType = SelectionType.IN_STORE;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                selectionType = SelectionType.ADVISOR_CURATION;
            }
            arrayList.add(new PersonalSharing(str, str2, selectionType, personalSharingDto.d, personalSharingDto.f46331e, personalSharingDto.f46332f, personalSharingDto.g));
        }
        return arrayList;
    }
}
