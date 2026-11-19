package com.vuitton.android.presentation.screen.osa.form.storeselection;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.osa.OSAMonitoring;
import com.vuitton.android.domain.usecase.osa.GetLocatedStoreListUseCase;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreMapperKt;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
import com.vuitton.foundation.model.domain.model.storelocator.Store;
import defpackage.md;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getLocatedStoreList$1", f = "OsaLocationFormViewModelImpl.kt", l = {242}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$getLocatedStoreList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60769c;
    public final /* synthetic */ OsaLocationFormViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlaceGeocodingUiModel f60770e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$getLocatedStoreList$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, PlaceGeocodingUiModel placeGeocodingUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = osaLocationFormViewModelImpl;
        this.f60770e = placeGeocodingUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$getLocatedStoreList$1(this.d, this.f60770e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$getLocatedStoreList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object value;
        Object failure;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60769c;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = osaLocationFormViewModelImpl.f60746a.a(osaLocationFormViewModelImpl.p, OSAMonitoring.Action.RetrieveAppointmentSlots.f48964a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            GetLocatedStoreListUseCase getLocatedStoreListUseCase = osaLocationFormViewModelImpl.m;
            PlaceGeocodingUiModel placeGeocodingUiModel = this.f60770e;
            PlaceGeocoding placeGeocoding = new PlaceGeocoding(placeGeocodingUiModel.f51804b, placeGeocodingUiModel.f51805c, placeGeocodingUiModel.d, placeGeocodingUiModel.f51806e, placeGeocodingUiModel.f51807f, placeGeocodingUiModel.g, placeGeocodingUiModel.f51808h);
            this.f60768b = monitorActionA;
            this.f60769c = 1;
            Object objA = getLocatedStoreListUseCase.a(placeGeocoding, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MonitorAction monitorAction = this.f60768b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
            monitorActionA = monitorAction;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                List list = (List) failure;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(StoreMapperKt.a((Store) it.next(), false));
                }
                failure = arrayList;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            osaLocationFormViewModelImpl.C.setValue((List) failure);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            monitorActionA.d(new OSAMonitoring.Error.RetrieveAppointmentSlotsError(thA));
            String message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl, message);
            osaLocationFormViewModelImpl.o8();
            LegacyLogger.f66205a.c("OsaLocationFormViewModelImpl", "Unable to retrieve the store list", thA);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
    }
}
