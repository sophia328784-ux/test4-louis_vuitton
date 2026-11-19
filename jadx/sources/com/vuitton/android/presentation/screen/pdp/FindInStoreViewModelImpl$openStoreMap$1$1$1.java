package com.vuitton.android.presentation.screen.pdp;

import android.location.Address;
import android.location.Geocoder;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/location/Address;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$1$1", f = "FindInStoreViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$openStoreMap$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Address>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlaceGeocodingUiModel f61041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Geocoder f61042c;
    public final /* synthetic */ StoreUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$openStoreMap$1$1$1(PlaceGeocodingUiModel placeGeocodingUiModel, Geocoder geocoder, StoreUiModel storeUiModel, Continuation continuation) {
        super(2, continuation);
        this.f61041b = placeGeocodingUiModel;
        this.f61042c = geocoder;
        this.d = storeUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$openStoreMap$1$1$1(this.f61041b, this.f61042c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$openStoreMap$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PlaceGeocodingUiModel placeGeocodingUiModel = this.f61041b;
        if (placeGeocodingUiModel != null) {
            List<Address> fromLocationName = this.f61042c.getFromLocationName(this.d.f51820e.toString(), 1, placeGeocodingUiModel.g, placeGeocodingUiModel.f51808h, placeGeocodingUiModel.f51806e, placeGeocodingUiModel.f51807f);
            if (fromLocationName != null) {
                if (!CollectionExtKt.a(fromLocationName)) {
                    fromLocationName = null;
                }
                if (fromLocationName != null) {
                    return fromLocationName.get(0);
                }
            }
        }
        return null;
    }
}
