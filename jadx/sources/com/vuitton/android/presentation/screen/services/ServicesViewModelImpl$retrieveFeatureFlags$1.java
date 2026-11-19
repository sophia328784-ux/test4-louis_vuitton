package com.vuitton.android.presentation.screen.services;

import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.services.models.ServicesFeatureFlags;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveFeatureFlags$1", f = "ServicesViewModelImpl.kt", l = {197, 198, 199, 200, 201}, m = "invokeSuspend", v = 2)
final class ServicesViewModelImpl$retrieveFeatureFlags$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f64341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f64342c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f64343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f64344f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModelImpl f64345h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$retrieveFeatureFlags$1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
        super(2, continuation);
        this.f64345h = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ServicesViewModelImpl$retrieveFeatureFlags$1(continuation, this.f64345h);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesViewModelImpl$retrieveFeatureFlags$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:30:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f1  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableStateFlow mutableStateFlow;
        boolean z;
        boolean zBooleanValue;
        Object objC;
        boolean z2;
        MutableStateFlow mutableStateFlow2;
        boolean zBooleanValue2;
        Object objC2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean zBooleanValue3;
        Object objC3;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        MutableStateFlow mutableStateFlow3;
        ServicesViewModelImpl servicesViewModelImpl = this.f64345h;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = servicesViewModelImpl.f64307f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.g;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow = servicesViewModelImpl.u;
            Feature[] featureArr = {Feature.OSA_CREATE};
            this.f64341b = mutableStateFlow;
            this.g = 1;
            obj = isFeatureAvailableUseCase.c(featureArr, false, this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            mutableStateFlow = this.f64341b;
            ResultKt.b(obj);
        } else {
            if (i2 == 2) {
                boolean z10 = this.f64342c;
                MutableStateFlow mutableStateFlow4 = this.f64341b;
                ResultKt.b(obj);
                z = z10;
                mutableStateFlow = mutableStateFlow4;
                zBooleanValue = ((Boolean) obj).booleanValue();
                Feature[] featureArr2 = {Feature.MY_CARE_SERVICES};
                this.f64341b = mutableStateFlow;
                this.f64342c = z;
                this.d = zBooleanValue;
                this.g = 3;
                objC = isFeatureAvailableUseCase.c(featureArr2, false, this);
                if (objC != coroutineSingletons) {
                    MutableStateFlow mutableStateFlow5 = mutableStateFlow;
                    z2 = zBooleanValue;
                    obj = objC;
                    mutableStateFlow2 = mutableStateFlow5;
                    zBooleanValue2 = ((Boolean) obj).booleanValue();
                    Feature[] featureArr3 = {Feature.DISTANT_REPAIRS};
                    this.f64341b = mutableStateFlow2;
                    this.f64342c = z;
                    this.d = z2;
                    this.f64343e = zBooleanValue2;
                    this.g = 4;
                    objC2 = isFeatureAvailableUseCase.c(featureArr3, false, this);
                    if (objC2 != coroutineSingletons) {
                        boolean z11 = z2;
                        z3 = zBooleanValue2;
                        obj = objC2;
                        z4 = z;
                        z5 = z11;
                        zBooleanValue3 = ((Boolean) obj).booleanValue();
                        Feature[] featureArr4 = {Feature.CLIENT_QR_CODE};
                        this.f64341b = mutableStateFlow2;
                        this.f64342c = z4;
                        this.d = z5;
                        this.f64343e = z3;
                        this.f64344f = zBooleanValue3;
                        this.g = 5;
                        objC3 = isFeatureAvailableUseCase.c(featureArr4, false, this);
                        if (objC3 != coroutineSingletons) {
                            z6 = zBooleanValue3;
                            z7 = z5;
                            z8 = z4;
                            obj = objC3;
                            z9 = z3;
                            mutableStateFlow3 = mutableStateFlow2;
                        }
                    }
                }
                return coroutineSingletons;
            }
            if (i2 == 3) {
                z2 = this.d;
                z = this.f64342c;
                mutableStateFlow2 = this.f64341b;
                ResultKt.b(obj);
                zBooleanValue2 = ((Boolean) obj).booleanValue();
                Feature[] featureArr5 = {Feature.DISTANT_REPAIRS};
                this.f64341b = mutableStateFlow2;
                this.f64342c = z;
                this.d = z2;
                this.f64343e = zBooleanValue2;
                this.g = 4;
                objC2 = isFeatureAvailableUseCase.c(featureArr5, false, this);
                if (objC2 != coroutineSingletons) {
                    boolean z12 = z2;
                    z3 = zBooleanValue2;
                    obj = objC2;
                    z4 = z;
                    z5 = z12;
                    zBooleanValue3 = ((Boolean) obj).booleanValue();
                    Feature[] featureArr6 = {Feature.CLIENT_QR_CODE};
                    this.f64341b = mutableStateFlow2;
                    this.f64342c = z4;
                    this.d = z5;
                    this.f64343e = z3;
                    this.f64344f = zBooleanValue3;
                    this.g = 5;
                    objC3 = isFeatureAvailableUseCase.c(featureArr6, false, this);
                    if (objC3 != coroutineSingletons) {
                        z6 = zBooleanValue3;
                        z7 = z5;
                        z8 = z4;
                        obj = objC3;
                        z9 = z3;
                        mutableStateFlow3 = mutableStateFlow2;
                    }
                }
                return coroutineSingletons;
            }
            if (i2 == 4) {
                z3 = this.f64343e;
                z5 = this.d;
                z4 = this.f64342c;
                mutableStateFlow2 = this.f64341b;
                ResultKt.b(obj);
                zBooleanValue3 = ((Boolean) obj).booleanValue();
                Feature[] featureArr7 = {Feature.CLIENT_QR_CODE};
                this.f64341b = mutableStateFlow2;
                this.f64342c = z4;
                this.d = z5;
                this.f64343e = z3;
                this.f64344f = zBooleanValue3;
                this.g = 5;
                objC3 = isFeatureAvailableUseCase.c(featureArr7, false, this);
                if (objC3 != coroutineSingletons) {
                    z6 = zBooleanValue3;
                    z7 = z5;
                    z8 = z4;
                    obj = objC3;
                    z9 = z3;
                    mutableStateFlow3 = mutableStateFlow2;
                }
                return coroutineSingletons;
            }
            if (i2 != 5) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            boolean z13 = this.f64344f;
            boolean z14 = this.f64343e;
            z7 = this.d;
            boolean z15 = this.f64342c;
            mutableStateFlow3 = this.f64341b;
            ResultKt.b(obj);
            z9 = z14;
            z8 = z15;
            z6 = z13;
        }
        mutableStateFlow3.setValue(new ServicesFeatureFlags(z8, z7, z9, z6, ((Boolean) obj).booleanValue()));
        return Unit.f71739a;
        boolean zBooleanValue4 = ((Boolean) obj).booleanValue();
        Feature[] featureArr8 = {Feature.BOOKING_MY_EXPERIENCES};
        this.f64341b = mutableStateFlow;
        this.f64342c = zBooleanValue4;
        this.g = 2;
        Object objC4 = isFeatureAvailableUseCase.c(featureArr8, false, this);
        if (objC4 != coroutineSingletons) {
            z = zBooleanValue4;
            obj = objC4;
            zBooleanValue = ((Boolean) obj).booleanValue();
            Feature[] featureArr9 = {Feature.MY_CARE_SERVICES};
            this.f64341b = mutableStateFlow;
            this.f64342c = z;
            this.d = zBooleanValue;
            this.g = 3;
            objC = isFeatureAvailableUseCase.c(featureArr9, false, this);
            if (objC != coroutineSingletons) {
                MutableStateFlow mutableStateFlow6 = mutableStateFlow;
                z2 = zBooleanValue;
                obj = objC;
                mutableStateFlow2 = mutableStateFlow6;
                zBooleanValue2 = ((Boolean) obj).booleanValue();
                Feature[] featureArr10 = {Feature.DISTANT_REPAIRS};
                this.f64341b = mutableStateFlow2;
                this.f64342c = z;
                this.d = z2;
                this.f64343e = zBooleanValue2;
                this.g = 4;
                objC2 = isFeatureAvailableUseCase.c(featureArr10, false, this);
                if (objC2 != coroutineSingletons) {
                    boolean z16 = z2;
                    z3 = zBooleanValue2;
                    obj = objC2;
                    z4 = z;
                    z5 = z16;
                    zBooleanValue3 = ((Boolean) obj).booleanValue();
                    Feature[] featureArr11 = {Feature.CLIENT_QR_CODE};
                    this.f64341b = mutableStateFlow2;
                    this.f64342c = z4;
                    this.d = z5;
                    this.f64343e = z3;
                    this.f64344f = zBooleanValue3;
                    this.g = 5;
                    objC3 = isFeatureAvailableUseCase.c(featureArr11, false, this);
                    if (objC3 != coroutineSingletons) {
                        z6 = zBooleanValue3;
                        z7 = z5;
                        z8 = z4;
                        obj = objC3;
                        z9 = z3;
                        mutableStateFlow3 = mutableStateFlow2;
                        mutableStateFlow3.setValue(new ServicesFeatureFlags(z8, z7, z9, z6, ((Boolean) obj).booleanValue()));
                        return Unit.f71739a;
                    }
                }
            }
        }
        return coroutineSingletons;
    }
}
