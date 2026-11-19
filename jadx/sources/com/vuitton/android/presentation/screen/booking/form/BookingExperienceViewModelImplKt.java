package com.vuitton.android.presentation.screen.booking.form;

import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingMapperKt;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModule;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingExperienceViewModelImplKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f54444a = Reflection.f71922a.b(BookingExperienceViewModelImpl.class).B();

    public static final List a(String str, List list) {
        List list2 = list;
        ArrayList<BookingFormModuleUiModel> arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(BookingMapperKt.b((BookingFormModule) it.next()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (BookingFormModuleUiModel bookingFormModuleUiModel : arrayList) {
            arrayList2.add(BookingFormModuleUiModel.a(bookingFormModuleUiModel, Intrinsics.c(bookingFormModuleUiModel.f54536a, str), false, null, false, 4063));
        }
        return c(b(arrayList2));
    }

    public static final ArrayList b(List list) {
        boolean z;
        List<BookingFormModuleUiModel> list2 = list;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (((BookingFormModuleUiModel) it.next()).l) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        boolean z2 = true;
        for (BookingFormModuleUiModel bookingFormModuleUiModel : list2) {
            boolean z3 = z2 && !z;
            if (!bookingFormModuleUiModel.g && !bookingFormModuleUiModel.f54544k.isCompleted()) {
                z2 = false;
            }
            arrayList.add(BookingFormModuleUiModel.a(bookingFormModuleUiModel, false, z3, null, false, 3967));
        }
        return arrayList;
    }

    public static final List c(ArrayList arrayList) {
        LocalDateTime localDateTime;
        Object next;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                localDateTime = null;
                break;
            }
            BookingFormModuleDataUiModel bookingFormModuleDataUiModel = ((BookingFormModuleUiModel) it.next()).f54544k;
            BookingFormModuleDataUiModel.Calendar calendar = bookingFormModuleDataUiModel instanceof BookingFormModuleDataUiModel.Calendar ? (BookingFormModuleDataUiModel.Calendar) bookingFormModuleDataUiModel : null;
            LocalDateTime localDateTime2 = calendar != null ? calendar.f54508b : null;
            if (localDateTime2 != null) {
                localDateTime = localDateTime2;
                break;
            }
        }
        if (localDateTime == null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            BookingFormModuleUiModel bookingFormModuleUiModelA = (BookingFormModuleUiModel) it2.next();
            BookingFormModuleDataUiModel bookingFormModuleDataUiModel2 = bookingFormModuleUiModelA.f54544k;
            BookingFormModuleDataUiModel.Slot slot = bookingFormModuleDataUiModel2 instanceof BookingFormModuleDataUiModel.Slot ? (BookingFormModuleDataUiModel.Slot) bookingFormModuleDataUiModel2 : null;
            if (slot != null) {
                Iterator it3 = slot.f54527a.iterator();
                do {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it3.next();
                } while (!Intrinsics.c(((BookingFormModuleDataUiModel.SlotDate) next).f54530a.toLocalDate(), localDateTime.toLocalDate()));
                BookingFormModuleDataUiModel.SlotDate slotDate = (BookingFormModuleDataUiModel.SlotDate) next;
                if (slotDate == null) {
                    EmptyList emptyList = EmptyList.f71768b;
                    slotDate = new BookingFormModuleDataUiModel.SlotDate(localDateTime, emptyList, emptyList, null, 8, null);
                }
                bookingFormModuleUiModelA = BookingFormModuleUiModel.a(bookingFormModuleUiModelA, false, false, BookingFormModuleDataUiModel.Slot.b(slot, slotDate, null, 5), false, 3071);
            }
            arrayList2.add(bookingFormModuleUiModelA);
        }
        return arrayList2;
    }
}
