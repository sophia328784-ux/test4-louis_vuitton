package com.vuitton.android.presentation.screen.osa.form.storeselection;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.appointment.GetStoreTimeSlotListUseCase;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.mappers.AvailabilitiesCallerMapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.mappers.RepairTimeSlotMapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AvailabilitiesCallerUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import com.vuitton.foundation.model.domain.model.distantrepairs.StoreSlots;
import defpackage.md;
import java.time.LocalDate;
import java.util.ArrayList;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreTimeSlotList$1", f = "OsaLocationFormViewModelImpl.kt", l = {266}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$getStoreTimeSlotList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60777c;
    public final /* synthetic */ LocalDate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$getStoreTimeSlotList$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, LocalDate localDate, Continuation continuation) {
        super(2, continuation);
        this.f60777c = osaLocationFormViewModelImpl;
        this.d = localDate;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$getStoreTimeSlotList$1(this.f60777c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$getStoreTimeSlotList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [kotlin.Result$Failure] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object obj2;
        ?? failure;
        Object value2;
        Object value3;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.f60777c;
        MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60776b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            Iterable iterable = (Iterable) osaLocationFormViewModelImpl.C.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((StoreUiModel) it.next()).f51817a);
            }
            GetStoreTimeSlotListUseCase getStoreTimeSlotListUseCase = osaLocationFormViewModelImpl.n;
            AvailabilitiesCaller availabilitiesCallerA = AvailabilitiesCallerMapperKt.a(AvailabilitiesCallerUiModel.APPOINTMENT);
            String string = this.d.toString();
            string.getClass();
            this.f60776b = 1;
            Object objA = getStoreTimeSlotListUseCase.a(availabilitiesCallerA, arrayList, string, this);
            obj2 = objA;
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        boolean z = obj2 instanceof Result.Failure;
        ?? r9 = obj2;
        if (!z) {
            try {
                List list = (List) obj2;
                failure = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    failure.add(RepairTimeSlotMapperKt.a((StoreSlots) it2.next()));
                }
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            r9 = failure;
        }
        if (!(r9 instanceof Result.Failure)) {
            List list2 = (List) r9;
            MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.D;
            do {
                value3 = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value3, list2));
            BuildersKt.c(ViewModelKt.a(osaLocationFormViewModelImpl), null, null, new OsaLocationFormViewModelImpl$generateAppointmentList$1(null, osaLocationFormViewModelImpl), 3);
        }
        Throwable thA = Result.a(r9);
        if (thA != null) {
            LegacyLogger.f66205a.c("OsaLocationFormViewModelImpl", "Unable to retrieve the store timeslot list", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
