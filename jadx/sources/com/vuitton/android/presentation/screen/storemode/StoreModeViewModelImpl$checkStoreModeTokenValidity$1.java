package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.domain.usecase.storemode.GetStoreModeValidityUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$checkStoreModeTokenValidity$1", f = "StoreModeViewModelImpl.kt", l = {231}, m = "invokeSuspend", v = 2)
final class StoreModeViewModelImpl$checkStoreModeTokenValidity$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StoreModeViewModelImpl f64802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64803c;
    public final /* synthetic */ StoreModeViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f64804e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$checkStoreModeTokenValidity$1(StoreModeViewModelImpl storeModeViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = storeModeViewModelImpl;
        this.f64804e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeViewModelImpl$checkStoreModeTokenValidity$1(this.d, this.f64804e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeViewModelImpl$checkStoreModeTokenValidity$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        StoreModeViewModelImpl storeModeViewModelImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64803c;
        if (i2 == 0) {
            ResultKt.b(obj);
            StoreModeViewModelImpl storeModeViewModelImpl2 = this.d;
            String str = (String) storeModeViewModelImpl2.x.getValue();
            if (str != null) {
                GetStoreModeValidityUseCase getStoreModeValidityUseCase = storeModeViewModelImpl2.f64793j;
                this.f64802b = storeModeViewModelImpl2;
                this.f64803c = 1;
                Object objA = getStoreModeValidityUseCase.a(str, this.f64804e, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj2 = objA;
                storeModeViewModelImpl = storeModeViewModelImpl2;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        storeModeViewModelImpl = this.f64802b;
        ResultKt.b(obj);
        obj2 = ((Result) obj).f71708b;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            storeModeViewModelImpl.z.setValue(Boolean.TRUE);
        }
        if (Result.a(obj2) != null) {
            storeModeViewModelImpl.z.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
