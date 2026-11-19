package com.vuitton.android.presentation.screen.osa.form.storeselection;

import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreAddressUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreTypeUIModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import java.time.LocalDateTime;
import java.time.format.FormatStyle;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$initAppointmentToModify$1", f = "OsaLocationFormViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$initAppointmentToModify$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaItemUiModel f60779c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$initAppointmentToModify$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, OsaItemUiModel osaItemUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60778b = osaLocationFormViewModelImpl;
        this.f60779c = osaItemUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$initAppointmentToModify$1(this.f60778b, this.f60779c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$initAppointmentToModify$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        String str;
        Object value3;
        Object value4;
        Object value5;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.f60778b;
        MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.y;
        do {
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        OsaItemUiModel osaItemUiModel = this.f60779c;
        StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
        LocalDateTime localDateTime = osaItemUiModel.f60928f;
        if (storeInformationItemUiModel != null) {
            MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.C;
            do {
                value4 = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value4, CollectionsKt.O(new StoreUiModel(storeInformationItemUiModel.f60938a, storeInformationItemUiModel.f60939b, StoreTypeUIModel.PHYSICAL, storeInformationItemUiModel.f60941e, new StoreAddressUiModel(storeInformationItemUiModel.f60940c, storeInformationItemUiModel.d, "", "", ""), storeInformationItemUiModel.f60942f, false, EmptyList.f71768b, null, 256, null))));
            MutableStateFlow mutableStateFlow3 = osaLocationFormViewModelImpl.H;
            do {
                value5 = mutableStateFlow3.getValue();
            } while (!mutableStateFlow3.i(value5, storeInformationItemUiModel.f60938a));
        }
        osaLocationFormViewModelImpl.F.setValue(localDateTime.toLocalDate());
        osaLocationFormViewModelImpl.G.setValue(DateTimeUtils.c(osaLocationFormViewModelImpl.p, localDateTime, FormatStyle.SHORT));
        MutableStateFlow mutableStateFlow4 = osaLocationFormViewModelImpl.B;
        do {
            value2 = mutableStateFlow4.getValue();
            StoreInformationItemUiModel storeInformationItemUiModel2 = osaItemUiModel.f60929h;
            str = storeInformationItemUiModel2 != null ? storeInformationItemUiModel2.f60939b : null;
            if (str == null) {
                str = "";
            }
        } while (!mutableStateFlow4.i(value2, new PlaceGeocodingUiModel(str, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d)));
        osaLocationFormViewModelImpl.zc(osaItemUiModel);
        MutableStateFlow mutableStateFlow5 = osaLocationFormViewModelImpl.I;
        do {
            value3 = mutableStateFlow5.getValue();
        } while (!mutableStateFlow5.i(value3, osaItemUiModel.f60925b));
        osaLocationFormViewModelImpl.L.setValue(Boolean.TRUE);
        return Unit.f71739a;
    }
}
