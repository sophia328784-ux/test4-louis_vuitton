package com.vuitton.android.presentation.screen.osa.form.storeselection;

import com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt;
import com.vuitton.android.presentation.model.storelocator.StoreAddressUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.StoreSlotsUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$generateAppointmentList$1", f = "OsaLocationFormViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$generateAppointmentList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60762b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$generateAppointmentList$1(Continuation continuation, OsaLocationFormViewModelImpl osaLocationFormViewModelImpl) {
        super(2, continuation);
        this.f60762b = osaLocationFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$generateAppointmentList$1(continuation, this.f60762b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$generateAppointmentList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        OsaFormItemUiModel osaFormItemUiModel;
        StoreSlotsUiModel storeSlotsUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ArrayList arrayList = new ArrayList();
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.f60762b;
        Pair pair = new Pair(osaLocationFormViewModelImpl.C.getValue(), osaLocationFormViewModelImpl.D.getValue());
        Object obj3 = pair.f71705b;
        if (obj3 != null && (obj2 = pair.f71706c) != null) {
            List list = (List) obj2;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj4 : (List) obj3) {
                StoreUiModel storeUiModel = (StoreUiModel) obj4;
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(((StoreSlotsUiModel) it.next()).d, storeUiModel.f51817a)) {
                            arrayList2.add(obj4);
                            break;
                        }
                    }
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                Object obj5 = null;
                if (!it2.hasNext()) {
                    MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.E;
                    MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.H;
                    mutableStateFlow.setValue(arrayList);
                    MutableStateFlow mutableStateFlow3 = osaLocationFormViewModelImpl.K;
                    for (Object obj6 : arrayList) {
                        if (Intrinsics.c(((OsaFormItemUiModel) obj6).f60914b, mutableStateFlow2.getValue())) {
                            obj5 = obj6;
                            break;
                        }
                    }
                    mutableStateFlow3.setValue(obj5);
                    MutableStateFlow mutableStateFlow4 = osaLocationFormViewModelImpl.I;
                    if (mutableStateFlow4.getValue() != null || (osaFormItemUiModel = (OsaFormItemUiModel) CollectionsKt.j0(arrayList)) == null) {
                        break;
                        break;
                    }
                    String str = osaFormItemUiModel.f60914b;
                    boolean zIsEmpty = osaFormItemUiModel.f60918h.isEmpty();
                    boolean zIsEmpty2 = osaFormItemUiModel.f60919i.isEmpty();
                    if (!zIsEmpty && zIsEmpty2) {
                        mutableStateFlow2.setValue(str);
                        mutableStateFlow4.setValue(AppointmentTypeUiModel.IN_STORE);
                        break;
                    }
                    if (zIsEmpty2 || !zIsEmpty) {
                        break;
                        break;
                    }
                    mutableStateFlow2.setValue(str);
                    mutableStateFlow4.setValue(AppointmentTypeUiModel.DISTANT);
                    break;
                }
                StoreUiModel storeUiModel2 = (StoreUiModel) it2.next();
                Iterator it3 = list.iterator();
                do {
                    if (!it3.hasNext()) {
                        zy0.c("Collection contains no element matching the predicate.");
                        return null;
                    }
                    storeSlotsUiModel = (StoreSlotsUiModel) it3.next();
                } while (!Intrinsics.c(storeSlotsUiModel.d, storeUiModel2.f51817a));
                String str2 = storeUiModel2.f51817a;
                StoreAddressUiModel storeAddressUiModel = storeUiModel2.f51820e;
                arrayList.add(new OsaFormItemUiModel(str2, storeUiModel2.f51818b, storeAddressUiModel.f51811a, AppointmentsMapperKt.a(storeAddressUiModel.f51812b, storeAddressUiModel.d), storeUiModel2.d, storeUiModel2.f51821f, CollectionsKt.z0(storeSlotsUiModel.f57413b), CollectionsKt.z0(storeSlotsUiModel.f57414c), storeSlotsUiModel.f57415e, storeUiModel2.f51823i));
            }
        }
        return Unit.f71739a;
    }
}
