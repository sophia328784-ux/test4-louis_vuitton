package com.vuitton.android.presentation.screen.osa.form.storeselection;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.appointment.GetStoreTimeSlotListUseCase;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.mappers.AvailabilitiesCallerMapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.mappers.RepairTimeSlotMapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AvailabilitiesCallerUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.StoreSlotsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import com.vuitton.foundation.model.domain.model.distantrepairs.StoreSlots;
import defpackage.md;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreSlotModify$1", f = "OsaLocationFormViewModelImpl.kt", l = {680}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$getStoreSlotModify$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60774c;
    public final /* synthetic */ OsaItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f60775e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$getStoreSlotModify$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, OsaItemUiModel osaItemUiModel, List list, Continuation continuation) {
        super(2, continuation);
        this.f60774c = osaLocationFormViewModelImpl;
        this.d = osaItemUiModel;
        this.f60775e = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$getStoreSlotModify$1(this.f60774c, this.d, this.f60775e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$getStoreSlotModify$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:135:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:146:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:99:0x0234 A[EDGE_INSN: B:99:0x0234->B:100:0x0235 BREAK  A[LOOP:1: B:82:0x01e4->B:165:0x01e4]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v15 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? failure;
        Object value;
        Object value2;
        boolean z;
        Object value3;
        Object next;
        TimeSlotUiModel timeSlotUiModel;
        List list;
        Object next2;
        List list2;
        Object next3;
        String str;
        StoreInformationItemUiModel storeInformationItemUiModel;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.f60774c;
        MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.D;
        MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.F;
        MutableStateFlow mutableStateFlow3 = osaLocationFormViewModelImpl.y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60773b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow3.setValue(Boolean.TRUE);
            Iterable iterable = (Iterable) osaLocationFormViewModelImpl.C.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((StoreUiModel) it.next()).f51817a);
            }
            GetStoreTimeSlotListUseCase getStoreTimeSlotListUseCase = osaLocationFormViewModelImpl.n;
            AvailabilitiesCaller availabilitiesCallerA = AvailabilitiesCallerMapperKt.a(AvailabilitiesCallerUiModel.APPOINTMENT);
            String strValueOf = String.valueOf(mutableStateFlow2.getValue());
            this.f60773b = 1;
            Object objA = getStoreTimeSlotListUseCase.a(availabilitiesCallerA, arrayList, strValueOf, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        boolean z2 = failure instanceof Result.Failure;
        OsaItemUiModel osaItemUiModel = this.d;
        if (!z2) {
            try {
                List list3 = (List) failure;
                ArrayList<StoreSlotsUiModel> arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it2 = list3.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(RepairTimeSlotMapperKt.a((StoreSlots) it2.next()));
                }
                failure = new ArrayList(CollectionsKt.t(arrayList2, 10));
                for (StoreSlotsUiModel storeSlotsUiModel : arrayList2) {
                    String str2 = storeSlotsUiModel.d;
                    List list4 = storeSlotsUiModel.f57414c;
                    List listO0 = storeSlotsUiModel.f57413b;
                    StoreInformationItemUiModel storeInformationItemUiModel2 = osaItemUiModel.f60929h;
                    LocalDateTime localDateTime = osaItemUiModel.d;
                    if (Intrinsics.c(str2, storeInformationItemUiModel2 != null ? storeInformationItemUiModel2.f60938a : null)) {
                        String str3 = osaItemUiModel.f60931j;
                        if (str3 == null) {
                            str3 = "";
                        }
                        TimeSlotUiModel timeSlotUiModel2 = new TimeSlotUiModel(str3, DateTimeUtils.j("HH:mm", localDateTime), DateTimeUtils.j("yyyy-MM-dd'T'HH:mm:ss.SSS", localDateTime), osaItemUiModel.f60924a, DateTimeUtils.j("yyyy-MM-dd", localDateTime));
                        String str4 = timeSlotUiModel2.f57416b;
                        if (!osaItemUiModel.f60932k) {
                            ListBuilder listBuilderV = CollectionsKt.v();
                            listBuilderV.addAll(listO0);
                            List list5 = listO0;
                            if (!(list5 instanceof Collection) || !list5.isEmpty()) {
                                Iterator it3 = list5.iterator();
                                do {
                                    if (it3.hasNext()) {
                                    }
                                } while (!Intrinsics.c(((TimeSlotUiModel) it3.next()).f57416b, str4));
                                listO0 = CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$1
                                    @Override // java.util.Comparator
                                    public final int compare(Object obj2, Object obj3) {
                                        return ComparisonsKt.a(((TimeSlotUiModel) obj2).d, ((TimeSlotUiModel) obj3).d);
                                    }
                                });
                            }
                            listBuilderV.add(timeSlotUiModel2);
                            listO0 = CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$1
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    return ComparisonsKt.a(((TimeSlotUiModel) obj2).d, ((TimeSlotUiModel) obj3).d);
                                }
                            });
                        }
                        List list6 = listO0;
                        ListBuilder listBuilderV2 = CollectionsKt.v();
                        listBuilderV2.addAll(list4);
                        List list7 = list4;
                        if (!(list7 instanceof Collection) || !list7.isEmpty()) {
                            Iterator it4 = list7.iterator();
                            do {
                                if (it4.hasNext()) {
                                }
                            } while (!Intrinsics.c(((TimeSlotUiModel) it4.next()).f57416b, str4));
                            List listO1 = CollectionsKt.o0(CollectionsKt.r(listBuilderV2), new Comparator() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$2
                                @Override // java.util.Comparator
                                public final int compare(Object obj2, Object obj3) {
                                    return ComparisonsKt.a(((TimeSlotUiModel) obj2).d, ((TimeSlotUiModel) obj3).d);
                                }
                            });
                            String str5 = storeSlotsUiModel.f57412a;
                            String str6 = storeSlotsUiModel.d;
                            String str7 = storeSlotsUiModel.f57415e;
                            str5.getClass();
                            list6.getClass();
                            listO1.getClass();
                            str6.getClass();
                            str7.getClass();
                            storeSlotsUiModel = new StoreSlotsUiModel(str5, list6, listO1, str6, str7);
                        }
                        listBuilderV2.add(timeSlotUiModel2);
                        List listO2 = CollectionsKt.o0(CollectionsKt.r(listBuilderV2), new Comparator() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$2
                            @Override // java.util.Comparator
                            public final int compare(Object obj2, Object obj3) {
                                return ComparisonsKt.a(((TimeSlotUiModel) obj2).d, ((TimeSlotUiModel) obj3).d);
                            }
                        });
                        String str8 = storeSlotsUiModel.f57412a;
                        String str9 = storeSlotsUiModel.d;
                        String str10 = storeSlotsUiModel.f57415e;
                        str8.getClass();
                        list6.getClass();
                        listO2.getClass();
                        str9.getClass();
                        str10.getClass();
                        storeSlotsUiModel = new StoreSlotsUiModel(str8, list6, listO2, str9, str10);
                    }
                    failure.add(storeSlotsUiModel);
                }
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            List list8 = (List) failure;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, list8));
            LocalDate localDate = (LocalDate) mutableStateFlow2.getValue();
            if (localDate == null) {
                z = false;
                break;
            }
            List list9 = list8;
            if ((list9 instanceof Collection) && list9.isEmpty()) {
                z = false;
                break;
            }
            Iterator it5 = list9.iterator();
            loop1: while (true) {
                if (!it5.hasNext()) {
                    z = false;
                    break;
                }
                StoreSlotsUiModel storeSlotsUiModel2 = (StoreSlotsUiModel) it5.next();
                List list10 = Intrinsics.c(osaLocationFormViewModelImpl.q, OsaOriginScreen.PDP.getTrackingName()) ? storeSlotsUiModel2.f57414c : storeSlotsUiModel2.f57413b;
                if (!(list10 instanceof Collection) || !list10.isEmpty()) {
                    Iterator it6 = list10.iterator();
                    while (it6.hasNext()) {
                        String str11 = ((TimeSlotUiModel) it6.next()).d;
                        String string = localDate.toString();
                        string.getClass();
                        if (StringsKt.P(str11, string, false)) {
                            z = true;
                            break loop1;
                        }
                    }
                }
            }
            MutableStateFlow mutableStateFlow4 = osaLocationFormViewModelImpl.A;
            List list11 = this.f60775e;
            if (!z && localDate != null) {
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : list11) {
                    if (!Intrinsics.c((LocalDate) obj2, localDate)) {
                        arrayList3.add(obj2);
                    }
                }
                list11 = arrayList3;
            }
            mutableStateFlow4.setValue(list11);
            MutableStateFlow mutableStateFlow5 = osaLocationFormViewModelImpl.J;
            do {
                value3 = mutableStateFlow5.getValue();
                Iterator it7 = ((Iterable) mutableStateFlow.getValue()).iterator();
                do {
                    if (!it7.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it7.next();
                    str = ((StoreSlotsUiModel) next).d;
                    storeInformationItemUiModel = osaItemUiModel.f60929h;
                } while (!Intrinsics.c(str, storeInformationItemUiModel != null ? storeInformationItemUiModel.f60938a : null));
                StoreSlotsUiModel storeSlotsUiModel3 = (StoreSlotsUiModel) next;
                if (storeSlotsUiModel3 != null && (list2 = storeSlotsUiModel3.f57413b) != null) {
                    Iterator it8 = list2.iterator();
                    do {
                        if (!it8.hasNext()) {
                            next3 = null;
                            break;
                        }
                        next3 = it8.next();
                    } while (!Intrinsics.c(((TimeSlotUiModel) next3).f57416b, osaItemUiModel.f60931j));
                    timeSlotUiModel = (TimeSlotUiModel) next3;
                    if (timeSlotUiModel == null) {
                        if (storeSlotsUiModel3 != null) {
                            timeSlotUiModel = null;
                        } else {
                            timeSlotUiModel = null;
                        }
                    }
                } else if (storeSlotsUiModel3 != null || (list = storeSlotsUiModel3.f57414c) == null) {
                    timeSlotUiModel = null;
                } else {
                    Iterator it9 = list.iterator();
                    do {
                        if (!it9.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it9.next();
                    } while (!Intrinsics.c(((TimeSlotUiModel) next2).f57416b, osaItemUiModel.f60931j));
                    timeSlotUiModel = (TimeSlotUiModel) next2;
                }
            } while (!mutableStateFlow5.i(value3, timeSlotUiModel));
            BuildersKt.c(ViewModelKt.a(osaLocationFormViewModelImpl), null, null, new OsaLocationFormViewModelImpl$generateAppointmentListToModify$1(osaLocationFormViewModelImpl, osaItemUiModel, null), 3);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            LegacyLogger.f66205a.c("OsaLocationFormViewModelImpl", "Unable to retrieve the store timeslot list", thA);
        }
        do {
            value = mutableStateFlow3.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow3.i(value, Boolean.FALSE));
        return Unit.f71739a;
    }
}
