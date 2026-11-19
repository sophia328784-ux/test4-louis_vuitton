package com.vuitton.android.presentation.screen.pdp;

import android.location.Geocoder;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1", f = "FindInStoreViewModelImpl.kt", l = {167, 182}, m = "invokeSuspend", v = 2)
final class FindInStoreViewModelImpl$openStoreMap$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Number f61035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Number f61036c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PlaceGeocodingUiModel f61038f;
    public final /* synthetic */ Geocoder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ StoreUiModel f61039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ FindInStoreViewModelImpl f61040i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindInStoreViewModelImpl$openStoreMap$1(PlaceGeocodingUiModel placeGeocodingUiModel, Geocoder geocoder, StoreUiModel storeUiModel, FindInStoreViewModelImpl findInStoreViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f61038f = placeGeocodingUiModel;
        this.g = geocoder;
        this.f61039h = storeUiModel;
        this.f61040i = findInStoreViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FindInStoreViewModelImpl$openStoreMap$1(this.f61038f, this.g, this.f61039h, this.f61040i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FindInStoreViewModelImpl$openStoreMap$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
    
        if (kotlinx.coroutines.BuildersKt.f(r0, r5, r12) == r1) goto L41;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) throws java.lang.Throwable {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r12.f61037e
            r2 = 2
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L23
            if (r0 == r3) goto L18
            if (r0 != r2) goto L12
            kotlin.ResultKt.b(r13)
            goto Lb9
        L12:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r4
        L18:
            java.lang.Number r3 = r12.f61036c
            java.lang.Number r5 = r12.f61035b
            kotlin.ResultKt.b(r13)     // Catch: java.lang.Throwable -> L20
            goto L66
        L20:
            r0 = move-exception
            r13 = r0
            goto L73
        L23:
            kotlin.ResultKt.b(r13)
            com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel r13 = r12.f61038f
            r0 = 0
            if (r13 == 0) goto L34
            double r5 = r13.f51805c
            java.lang.Double r7 = new java.lang.Double
            r7.<init>(r5)
            r5 = r7
            goto L39
        L34:
            java.lang.Integer r5 = new java.lang.Integer
            r5.<init>(r0)
        L39:
            if (r13 == 0) goto L44
            double r6 = r13.d
            java.lang.Double r0 = new java.lang.Double
            r0.<init>(r6)
            r6 = r0
            goto L49
        L44:
            java.lang.Integer r6 = new java.lang.Integer
            r6.<init>(r0)
        L49:
            android.location.Geocoder r0 = r12.g
            com.vuitton.android.presentation.model.storelocator.StoreUiModel r7 = r12.f61039h
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L70
            kotlinx.coroutines.scheduling.DefaultScheduler r8 = kotlinx.coroutines.Dispatchers.f74659a     // Catch: java.lang.Throwable -> L70
            kotlinx.coroutines.scheduling.DefaultIoScheduler r8 = kotlinx.coroutines.scheduling.DefaultIoScheduler.f75161b     // Catch: java.lang.Throwable -> L70
            com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$1$1 r9 = new com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$1$1     // Catch: java.lang.Throwable -> L70
            r9.<init>(r13, r0, r7, r4)     // Catch: java.lang.Throwable -> L70
            r12.f61035b = r5     // Catch: java.lang.Throwable -> L70
            r12.f61036c = r6     // Catch: java.lang.Throwable -> L70
            r12.f61037e = r3     // Catch: java.lang.Throwable -> L70
            java.lang.Object r13 = kotlinx.coroutines.BuildersKt.f(r8, r9, r12)     // Catch: java.lang.Throwable -> L70
            if (r13 != r1) goto L65
            goto Lb8
        L65:
            r3 = r6
        L66:
            android.location.Address r13 = (android.location.Address) r13     // Catch: java.lang.Throwable -> L20
            kotlin.Result r0 = new kotlin.Result     // Catch: java.lang.Throwable -> L20
            r0.<init>(r13)     // Catch: java.lang.Throwable -> L20
        L6d:
            r8 = r3
            r7 = r5
            goto L7b
        L70:
            r0 = move-exception
            r13 = r0
            r3 = r6
        L73:
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r0 = new kotlin.Result$Failure
            r0.<init>(r13)
            goto L6d
        L7b:
            java.lang.Throwable r13 = kotlin.Result.a(r0)
            if (r13 != 0) goto L82
            goto L91
        L82:
            boolean r0 = r13 instanceof java.util.concurrent.CancellationException
            if (r0 != 0) goto Lbc
            kotlin.Result$Failure r0 = new kotlin.Result$Failure
            r0.<init>(r13)
            kotlin.Result r13 = new kotlin.Result
            r13.<init>(r0)
            r0 = r13
        L91:
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r13 = r0.f71708b
            boolean r0 = r13 instanceof kotlin.Result.Failure
            if (r0 != 0) goto Lb9
            r6 = r13
            android.location.Address r6 = (android.location.Address) r6
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.f74659a
            kotlinx.coroutines.MainCoroutineDispatcher r0 = kotlinx.coroutines.internal.MainDispatcherLoader.f75131a
            com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$2$1 r5 = new com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$2$1
            r11 = 0
            com.vuitton.android.presentation.model.storelocator.StoreUiModel r9 = r12.f61039h
            com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl r10 = r12.f61040i
            r5.<init>(r6, r7, r8, r9, r10, r11)
            r12.f61035b = r4
            r12.f61036c = r4
            r12.d = r13
            r12.f61037e = r2
            java.lang.Object r12 = kotlinx.coroutines.BuildersKt.f(r0, r5, r12)
            if (r12 != r1) goto Lb9
        Lb8:
            return r1
        Lb9:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        Lbc:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
