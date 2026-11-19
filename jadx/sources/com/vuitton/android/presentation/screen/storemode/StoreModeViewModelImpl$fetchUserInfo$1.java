package com.vuitton.android.presentation.screen.storemode;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$fetchUserInfo$1", f = "StoreModeViewModelImpl.kt", l = {248}, m = "invokeSuspend", v = 2)
final class StoreModeViewModelImpl$fetchUserInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModelImpl f64806c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$fetchUserInfo$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ StoreModeViewModelImpl f64807b;

        public AnonymousClass1(StoreModeViewModelImpl storeModeViewModelImpl) {
            this.f64807b = storeModeViewModelImpl;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object emit(LoginState loginState, Continuation continuation) {
            StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1 storeModeViewModelImpl$fetchUserInfo$1$1$emit$1;
            if (continuation instanceof StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1) {
                storeModeViewModelImpl$fetchUserInfo$1$1$emit$1 = (StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1) continuation;
                int i2 = storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64810e;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64810e = i2 - Integer.MIN_VALUE;
                } else {
                    storeModeViewModelImpl$fetchUserInfo$1$1$emit$1 = new StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1(this, continuation);
                }
            } else {
                storeModeViewModelImpl$fetchUserInfo$1$1$emit$1 = new StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1(this, continuation);
            }
            Object obj = storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64809c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64810e;
            StoreModeViewModelImpl storeModeViewModelImpl = this.f64807b;
            if (i3 == 0) {
                ResultKt.b(obj);
                storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64808b = loginState;
                storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64810e = 1;
                if (StoreModeViewModelImpl.yc(storeModeViewModelImpl, loginState, storeModeViewModelImpl$fetchUserInfo$1$1$emit$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                loginState = storeModeViewModelImpl$fetchUserInfo$1$1$emit$1.f64808b;
                ResultKt.b(obj);
            }
            if (loginState.a()) {
                BuildersKt.c(ViewModelKt.a(storeModeViewModelImpl), null, null, new StoreModeViewModelImpl$getWishlist$1(storeModeViewModelImpl, null), 3);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$fetchUserInfo$1(StoreModeViewModelImpl storeModeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64806c = storeModeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeViewModelImpl$fetchUserInfo$1(this.f64806c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeViewModelImpl$fetchUserInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64805b;
        if (i2 == 0) {
            ResultKt.b(obj);
            StoreModeViewModelImpl storeModeViewModelImpl = this.f64806c;
            StateFlow stateFlow = storeModeViewModelImpl.f64789e.g;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(storeModeViewModelImpl);
            this.f64805b = 1;
            if (stateFlow.f(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
