package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1", f = "FindInStoreViewModelImpl.kt", l = {110, 111}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61029c;
    public final /* synthetic */ FindInStoreViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlaceAutocompleteUiModel f61030e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1(FindInStoreViewModelImpl findInStoreViewModelImpl, PlaceAutocompleteUiModel placeAutocompleteUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = findInStoreViewModelImpl;
        this.f61030e = placeAutocompleteUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1(this.d, this.f61030e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        if (r3.u(r1, r7) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f61029c
            r2 = 2
            r3 = 1
            com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl r4 = r7.d
            if (r1 == 0) goto L21
            if (r1 == r3) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r8)
            goto L59
        L12:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L19:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L3f
        L21:
            kotlin.ResultKt.b(r8)
            kotlinx.coroutines.flow.MutableStateFlow r8 = r4.f61021k
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text r1 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text
            com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel r5 = r7.f61030e
            java.lang.String r6 = r5.f52127b
            r1.<init>(r6)
            r8.setValue(r1)
            com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByPlaceIdUseCase r8 = r4.f61015c
            java.lang.String r1 = r5.f52126a
            r7.f61029c = r3
            java.lang.Object r8 = r8.a(r1, r7)
            if (r8 != r0) goto L3f
            goto L58
        L3f:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r8 instanceof kotlin.Result.Failure
            if (r1 != 0) goto L59
            r1 = r8
            com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding r1 = (com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding) r1
            kotlinx.coroutines.channels.BufferedChannel r3 = r4.l
            com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel r1 = com.vuitton.android.presentation.model.location.GeocodingMapperKt.a(r1)
            r7.f61028b = r8
            r7.f61029c = r2
            java.lang.Object r7 = r3.u(r1, r7)
            if (r7 != r0) goto L59
        L58:
            return r0
        L59:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
