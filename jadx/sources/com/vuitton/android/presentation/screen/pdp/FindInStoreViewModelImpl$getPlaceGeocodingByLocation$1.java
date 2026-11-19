package com.vuitton.android.presentation.screen.pdp;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1", f = "FindInStoreViewModelImpl.kt", l = {100, 101}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61025c;
    public final /* synthetic */ FindInStoreViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ double f61026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ double f61027f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1(FindInStoreViewModelImpl findInStoreViewModelImpl, double d, double d2, Continuation continuation) {
        super(2, continuation);
        this.d = findInStoreViewModelImpl;
        this.f61026e = d;
        this.f61027f = d2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1(this.d, this.f61026e, this.f61027f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        if (r2.u(r1, r9) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.f61025c
            com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl r2 = r9.d
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r10)
            goto L5c
        L12:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L19:
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.f71708b
            goto L42
        L21:
            kotlin.ResultKt.b(r10)
            com.vuitton.android.domain.usecase.products.availability.GetPlaceGeocodingByLocationUseCase r10 = r2.f61014b
            kotlin.Pair r1 = new kotlin.Pair
            java.lang.Double r5 = new java.lang.Double
            double r6 = r9.f61026e
            r5.<init>(r6)
            java.lang.Double r6 = new java.lang.Double
            double r7 = r9.f61027f
            r6.<init>(r7)
            r1.<init>(r5, r6)
            r9.f61025c = r4
            java.lang.Object r10 = r10.a(r1, r9)
            if (r10 != r0) goto L42
            goto L5b
        L42:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r10 instanceof kotlin.Result.Failure
            if (r1 != 0) goto L5c
            r1 = r10
            com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding r1 = (com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding) r1
            kotlinx.coroutines.channels.BufferedChannel r2 = r2.l
            com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel r1 = com.vuitton.android.presentation.model.location.GeocodingMapperKt.a(r1)
            r9.f61024b = r10
            r9.f61025c = r3
            java.lang.Object r9 = r2.u(r1, r9)
            if (r9 != r0) goto L5c
        L5b:
            return r0
        L5c:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
