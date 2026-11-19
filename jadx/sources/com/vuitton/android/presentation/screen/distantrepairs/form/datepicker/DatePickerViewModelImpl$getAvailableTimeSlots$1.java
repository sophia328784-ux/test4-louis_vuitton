package com.vuitton.android.presentation.screen.distantrepairs.form.datepicker;

import com.vuitton.android.domain.usecase.appointment.GetStoreTimeSlotListUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.form.mappers.RepairTimeSlotMapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethodKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.CalendarAvailabilitiesUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import com.vuitton.foundation.model.domain.model.distantrepairs.RepairTimeSlot;
import com.vuitton.foundation.model.domain.model.distantrepairs.StoreSlots;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import defpackage.md;
import defpackage.v40;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$getAvailableTimeSlots$1", f = "DatePickerViewModelImpl.kt", l = {142}, m = "invokeSuspend", v = 2)
final class DatePickerViewModelImpl$getAvailableTimeSlots$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$BooleanRef f57305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f57306c;
    public final /* synthetic */ DatePickerViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f57307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f57308f;
    public final /* synthetic */ LocalDate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DistantRepairContactMethod f57309h;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57310a;

        static {
            int[] iArr = new int[AppointmentType.values().length];
            try {
                iArr[AppointmentType.DISTANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppointmentType.IN_STORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57310a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatePickerViewModelImpl$getAvailableTimeSlots$1(DatePickerViewModelImpl datePickerViewModelImpl, List list, String str, LocalDate localDate, DistantRepairContactMethod distantRepairContactMethod, Continuation continuation) {
        super(2, continuation);
        this.d = datePickerViewModelImpl;
        this.f57307e = list;
        this.f57308f = str;
        this.g = localDate;
        this.f57309h = distantRepairContactMethod;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DatePickerViewModelImpl$getAvailableTimeSlots$1(this.d, this.f57307e, this.f57308f, this.g, this.f57309h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DatePickerViewModelImpl$getAvailableTimeSlots$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objA;
        Ref$BooleanRef ref$BooleanRef;
        Object value;
        Object obj2;
        List list;
        Object value2;
        ArrayList arrayList;
        Object value3;
        CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel;
        Object value4;
        Object value5;
        Object obj3;
        List list2;
        ArrayList arrayList2;
        DatePickerViewModelImpl$getAvailableTimeSlots$1 datePickerViewModelImpl$getAvailableTimeSlots$1 = this;
        DatePickerViewModelImpl datePickerViewModelImpl = datePickerViewModelImpl$getAvailableTimeSlots$1.d;
        MutableStateFlow mutableStateFlow = datePickerViewModelImpl.f57300k;
        MutableStateFlow mutableStateFlow2 = datePickerViewModelImpl.l;
        MutableStateFlow mutableStateFlow3 = datePickerViewModelImpl.f57298i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = datePickerViewModelImpl$getAvailableTimeSlots$1.f57306c;
        String str = datePickerViewModelImpl$getAvailableTimeSlots$1.f57308f;
        LocalDate localDate = datePickerViewModelImpl$getAvailableTimeSlots$1.g;
        List list3 = datePickerViewModelImpl$getAvailableTimeSlots$1.f57307e;
        if (i2 == 0) {
            ResultKt.b(obj);
            while (true) {
                Object value6 = mutableStateFlow3.getValue();
                ((Boolean) value6).getClass();
                if (mutableStateFlow3.i(value6, Boolean.TRUE)) {
                    break;
                }
                datePickerViewModelImpl$getAvailableTimeSlots$1 = this;
            }
            if (list3 == null) {
                datePickerViewModelImpl.o = true;
                do {
                    value = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value, localDate));
            }
            List listO = CollectionsKt.O(str);
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            GetStoreTimeSlotListUseCase getStoreTimeSlotListUseCase = datePickerViewModelImpl.d;
            AvailabilitiesCaller availabilitiesCaller = AvailabilitiesCaller.DISTANT_REPAIRS;
            String string = localDate.toString();
            string.getClass();
            datePickerViewModelImpl$getAvailableTimeSlots$1.f57305b = ref$BooleanRef2;
            datePickerViewModelImpl$getAvailableTimeSlots$1.f57306c = 1;
            objA = getStoreTimeSlotListUseCase.a(availabilitiesCaller, listO, string, datePickerViewModelImpl$getAvailableTimeSlots$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$BooleanRef = ref$BooleanRef2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$BooleanRef = datePickerViewModelImpl$getAvailableTimeSlots$1.f57305b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it = ((List) objA).iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                DistantRepairContactMethod distantRepairContactMethod = datePickerViewModelImpl$getAvailableTimeSlots$1.f57309h;
                if (!zHasNext) {
                    obj2 = objA;
                    list = list3;
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj4 : arrayList3) {
                        if (hashSet.add(((TimeSlotUiModel) obj4).d)) {
                            arrayList4.add(obj4);
                        }
                    }
                    if (list == null || !arrayList4.isEmpty()) {
                        arrayList = null;
                    } else {
                        ArrayList arrayList5 = new ArrayList();
                        for (Object obj5 : list) {
                            if (!Intrinsics.c((LocalDate) obj5, localDate)) {
                                arrayList5.add(obj5);
                            }
                        }
                        arrayList = arrayList5;
                    }
                    do {
                        value3 = mutableStateFlow.getValue();
                        calendarAvailabilitiesUiModel = (CalendarAvailabilitiesUiModel) value3;
                    } while (!mutableStateFlow.i(value3, CalendarAvailabilitiesUiModel.a(calendarAvailabilitiesUiModel, arrayList == null ? list == null ? calendarAvailabilitiesUiModel.f57367a : list : arrayList, arrayList4, null, 4)));
                    if (list == null || datePickerViewModelImpl.o) {
                        break;
                        break;
                    }
                    if (arrayList != null) {
                        LocalDate localDate2 = (LocalDate) CollectionsKt.firstOrNull(arrayList);
                        do {
                            value4 = mutableStateFlow2.getValue();
                        } while (!mutableStateFlow2.i(value4, localDate2));
                        if (localDate2 == null) {
                            break;
                        }
                        ref$BooleanRef.f71917b = true;
                        datePickerViewModelImpl.Tb(localDate2, str, distantRepairContactMethod, arrayList);
                        break;
                    }
                    do {
                        value5 = mutableStateFlow2.getValue();
                    } while (!mutableStateFlow2.i(value5, localDate));
                } else {
                    StoreSlots storeSlots = (StoreSlots) it.next();
                    while (true) {
                        Object value7 = mutableStateFlow.getValue();
                        obj3 = objA;
                        list2 = list3;
                        if (mutableStateFlow.i(value7, CalendarAvailabilitiesUiModel.a((CalendarAvailabilitiesUiModel) value7, null, null, storeSlots.f67540e, 3))) {
                            break;
                        }
                        objA = obj3;
                        list3 = list2;
                    }
                    Object objA2 = DistantRepairContactMethodKt.a(distantRepairContactMethod);
                    ResultKt.b(objA2);
                    int i3 = WhenMappings.f57310a[((AppointmentType) objA2).ordinal()];
                    if (i3 == 1) {
                        List list4 = storeSlots.f67539c;
                        arrayList2 = new ArrayList();
                        Iterator it2 = list4.iterator();
                        while (it2.hasNext()) {
                            Object objB = RepairTimeSlotMapperKt.b((RepairTimeSlot) it2.next());
                            if (objB instanceof Result.Failure) {
                                objB = null;
                            }
                            TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) objB;
                            if (timeSlotUiModel != null) {
                                arrayList2.add(timeSlotUiModel);
                            }
                        }
                    } else {
                        if (i3 != 2) {
                            v40.g();
                            return null;
                        }
                        List list5 = storeSlots.f67538b;
                        arrayList2 = new ArrayList();
                        Iterator it3 = list5.iterator();
                        while (it3.hasNext()) {
                            Object objB2 = RepairTimeSlotMapperKt.b((RepairTimeSlot) it3.next());
                            if (objB2 instanceof Result.Failure) {
                                objB2 = null;
                            }
                            TimeSlotUiModel timeSlotUiModel2 = (TimeSlotUiModel) objB2;
                            if (timeSlotUiModel2 != null) {
                                arrayList2.add(timeSlotUiModel2);
                            }
                        }
                    }
                    arrayList3.addAll(arrayList2);
                    datePickerViewModelImpl$getAvailableTimeSlots$1 = this;
                    objA = obj3;
                    list3 = list2;
                }
            }
        } else {
            obj2 = objA;
            list = list3;
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            if (list != null) {
                datePickerViewModelImpl.n = false;
            }
            datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to retrieve slots list", thA);
        }
        if (!ref$BooleanRef.f71917b) {
            do {
                value2 = mutableStateFlow3.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow3.i(value2, Boolean.FALSE));
        }
        return Unit.f71739a;
    }
}
