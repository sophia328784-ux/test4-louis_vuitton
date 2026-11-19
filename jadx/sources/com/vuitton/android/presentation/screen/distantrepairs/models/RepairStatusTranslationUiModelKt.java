package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairStatusTranslation;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairStatusTranslationUiModelKt {
    public static final ArrayList a(List list, boolean z) {
        list.getClass();
        ArrayList<RepairStatusTranslation> arrayList = new ArrayList();
        for (Object obj : list) {
            RepairStatusTranslation repairStatusTranslation = (RepairStatusTranslation) obj;
            if (z || repairStatusTranslation.f68180a != RepairStatus.SHIPPED_FROM_EHUB) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (RepairStatusTranslation repairStatusTranslation2 : arrayList) {
            repairStatusTranslation2.getClass();
            arrayList2.add(new RepairStatusTranslationUiModel(RepairStatusUiModelKt.e(repairStatusTranslation2.f68180a, z), repairStatusTranslation2.f68181b, repairStatusTranslation2.f68182c));
        }
        return arrayList2;
    }
}
