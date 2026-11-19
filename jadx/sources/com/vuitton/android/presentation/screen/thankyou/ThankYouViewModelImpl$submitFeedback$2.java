package com.vuitton.android.presentation.screen.thankyou;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$submitFeedback$2", f = "ThankYouViewModelImpl.kt", l = {198}, m = "invokeSuspend", v = 2)
final class ThankYouViewModelImpl$submitFeedback$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewModelImpl f65232c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouViewModelImpl$submitFeedback$2(ThankYouViewModelImpl thankYouViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f65232c = thankYouViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouViewModelImpl$submitFeedback$2(this.f65232c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouViewModelImpl$submitFeedback$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65231b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ThankYouViewModelImpl thankYouViewModelImpl = this.f65232c;
            thankYouViewModelImpl.V3(null);
            SharedFlowImpl sharedFlowImpl = thankYouViewModelImpl.q;
            NotificationUiModel notificationUiModelA = NotificationBuilder.a(thankYouViewModelImpl.d, new StringResourceUiModel.ResId(R.string.checkout_confirmation_feedback_success_message, null, 2, null), true, null, null, 44);
            this.f65231b = 1;
            if (sharedFlowImpl.emit(notificationUiModelA, this) == coroutineSingletons) {
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
