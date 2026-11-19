package com.vuitton.android.presentation.chat;

import com.vuitton.android.domain.usecase.cart.GetConfirmationDetailsUseCase;
import com.vuitton.foundation.model.domain.model.cart.CheckoutConfirmationDetail;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatCoordinator$getConfirmationDetails$1", f = "ChatCoordinator.kt", l = {118}, m = "invokeSuspend", v = 2)
final class ChatCoordinator$getConfirmationDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatCoordinator f50686c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatCoordinator$getConfirmationDetails$1(ChatCoordinator chatCoordinator, String str, Continuation continuation) {
        super(2, continuation);
        this.f50686c = chatCoordinator;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ChatCoordinator$getConfirmationDetails$1(this.f50686c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ChatCoordinator$getConfirmationDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50685b;
        ChatCoordinator chatCoordinator = this.f50686c;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetConfirmationDetailsUseCase getConfirmationDetailsUseCase = chatCoordinator.g;
            this.f50685b = 1;
            objA = getConfirmationDetailsUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CheckoutConfirmationDetail checkoutConfirmationDetail = (CheckoutConfirmationDetail) objA;
            if (Intrinsics.c(checkoutConfirmationDetail.f66931b, this.d)) {
                chatCoordinator.d(checkoutConfirmationDetail);
            }
        }
        if (Result.a(objA) != null) {
            chatCoordinator.f50682h.f49645a.z();
        }
        return Unit.f71739a;
    }
}
