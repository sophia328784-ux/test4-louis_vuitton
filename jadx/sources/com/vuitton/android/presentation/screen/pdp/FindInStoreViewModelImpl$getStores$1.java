package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.usecase.products.availability.GetProductAvailabilityInStoresUseCase;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreMapperKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageCode;
import com.vuitton.foundation.model.domain.model.product.availability.GetProductAvailabilityInStoreParam;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getStores$1", f = "FindInStoreViewModelImpl.kt", l = {138}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$getStores$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f61031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61032c;
    public final /* synthetic */ FindInStoreViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f61033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PlaceGeocodingUiModel f61034f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$getStores$1(FindInStoreViewModelImpl findInStoreViewModelImpl, String str, PlaceGeocodingUiModel placeGeocodingUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = findInStoreViewModelImpl;
        this.f61033e = str;
        this.f61034f = placeGeocodingUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$getStores$1(this.d, this.f61033e, this.f61034f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$getStores$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        boolean z;
        FindInStoreViewModelImpl findInStoreViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = findInStoreViewModelImpl.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61032c;
        PlaceGeocodingUiModel placeGeocodingUiModel = this.f61034f;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            InAppDispatch inAppDispatch = findInStoreViewModelImpl.f61017f;
            List list = InAppDispatchExtKt.f67487a;
            inAppDispatch.getClass();
            String languageCode = inAppDispatch.d.getLanguageCode();
            LanguageCode.f67497b.getClass();
            boolean zC = Intrinsics.c(languageCode, LanguageCode.f67498c);
            GetProductAvailabilityInStoresUseCase getProductAvailabilityInStoresUseCase = findInStoreViewModelImpl.f61016e;
            SkuIdUiModel.f61763c.getClass();
            String str = this.f61033e;
            SkuIdUiModel.Companion.b(str);
            placeGeocodingUiModel.getClass();
            GetProductAvailabilityInStoreParam getProductAvailabilityInStoreParam = new GetProductAvailabilityInStoreParam(str, new PlaceGeocoding(placeGeocodingUiModel.f51804b, placeGeocodingUiModel.f51805c, placeGeocodingUiModel.d, placeGeocodingUiModel.f51806e, placeGeocodingUiModel.f51807f, placeGeocodingUiModel.g, placeGeocodingUiModel.f51808h), null);
            this.f61031b = zC;
            this.f61032c = 1;
            Object objA = getProductAvailabilityInStoresUseCase.a(getProductAvailabilityInStoreParam, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
            z = zC;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = this.f61031b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                List list2 = (List) failure;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(StoreMapperKt.a((Store) it.next(), z));
                }
                failure = arrayList;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            findInStoreViewModelImpl.f61021k.setValue(new StringResourceUiModel.Text(placeGeocodingUiModel.f51804b));
            findInStoreViewModelImpl.f61019i.setValue((List) failure);
        }
        if (Result.a(failure) != null) {
            findInStoreViewModelImpl.f61018h.setValue(Boolean.TRUE);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
