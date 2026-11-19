package com.vuitton.android.presentation.screen.distantrepairs.form.mappers;

import com.vuitton.android.presentation.screen.distantrepairs.models.StoreSlotsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.distantrepairs.RepairTimeSlot;
import com.vuitton.foundation.model.domain.model.distantrepairs.StoreSlots;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairTimeSlotMapperKt {
    public static final StoreSlotsUiModel a(StoreSlots storeSlots) throws Throwable {
        storeSlots.getClass();
        String str = storeSlots.f67537a;
        List list = storeSlots.f67538b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object objB = b((RepairTimeSlot) it.next());
            TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) (objB instanceof Result.Failure ? null : objB);
            if (timeSlotUiModel != null) {
                arrayList.add(timeSlotUiModel);
            }
        }
        List list2 = storeSlots.f67539c;
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            Object objB2 = b((RepairTimeSlot) it2.next());
            if (objB2 instanceof Result.Failure) {
                objB2 = null;
            }
            TimeSlotUiModel timeSlotUiModel2 = (TimeSlotUiModel) objB2;
            if (timeSlotUiModel2 != null) {
                arrayList2.add(timeSlotUiModel2);
            }
        }
        return new StoreSlotsUiModel(str, arrayList, arrayList2, storeSlots.d, storeSlots.f67540e);
    }

    public static final Object b(RepairTimeSlot repairTimeSlot) throws Throwable {
        Object failure;
        repairTimeSlot.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = repairTimeSlot.f67533a;
            Object objU = DateTimeUtils.u(repairTimeSlot.f67534b);
            ResultKt.b(objU);
            failure = new Result(new TimeSlotUiModel(str, (String) objU, StringsKt.J(repairTimeSlot.f67535c, "Z", ""), repairTimeSlot.d, repairTimeSlot.f67536e));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
