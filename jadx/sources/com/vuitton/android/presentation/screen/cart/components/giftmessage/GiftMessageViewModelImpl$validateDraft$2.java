package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import com.vuitton.foundation.model.domain.model.cart.GiftDraftUiModel;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
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
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl$validateDraft$2", f = "GiftMessageViewModelImpl.kt", l = {95}, m = "invokeSuspend", v = 2)
final class GiftMessageViewModelImpl$validateDraft$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GiftDraftUiModel f55084c;
    public final /* synthetic */ GiftMessageViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiftMessageViewModelImpl$validateDraft$2(GiftDraftUiModel giftDraftUiModel, GiftMessageViewModelImpl giftMessageViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f55084c = giftDraftUiModel;
        this.d = giftMessageViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GiftMessageViewModelImpl$validateDraft$2(this.f55084c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GiftMessageViewModelImpl$validateDraft$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55083b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GiftDraftUiModel giftDraftUiModel = this.f55084c;
            Object message = giftDraftUiModel.f66972a ? GiftOption.Blank.f66976a : new GiftOption.Message(giftDraftUiModel.f66973b);
            SharedFlowImpl sharedFlowImpl = this.d.f55077e;
            this.f55083b = 1;
            if (sharedFlowImpl.emit(message, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
