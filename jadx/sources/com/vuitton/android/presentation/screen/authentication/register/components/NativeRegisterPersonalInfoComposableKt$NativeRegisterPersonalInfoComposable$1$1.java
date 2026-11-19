package com.vuitton.android.presentation.screen.authentication.register.components;

import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterPersonalInfoComposableKt$NativeRegisterPersonalInfoComposable$1$1", f = "NativeRegisterPersonalInfoComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class NativeRegisterPersonalInfoComposableKt$NativeRegisterPersonalInfoComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f53852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f53853c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterPersonalInfoComposableKt$NativeRegisterPersonalInfoComposable$1$1(boolean z, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f53852b = z;
        this.f53853c = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterPersonalInfoComposableKt$NativeRegisterPersonalInfoComposable$1$1(this.f53852b, this.f53853c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterPersonalInfoComposableKt$NativeRegisterPersonalInfoComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f53852b) {
            this.f53853c.invoke(NativeRegisterTrackingUiModel.NativeRegisterPersonalInformationScreen.f54000a);
        }
        return Unit.f71739a;
    }
}
