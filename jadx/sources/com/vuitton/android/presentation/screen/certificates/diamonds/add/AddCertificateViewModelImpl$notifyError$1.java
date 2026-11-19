package com.vuitton.android.presentation.screen.certificates.diamonds.add;

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
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$notifyError$1", f = "AddCertificateViewModelImpl.kt", l = {242}, m = "invokeSuspend", v = 2)
final class AddCertificateViewModelImpl$notifyError$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddCertificateViewModelImpl f55772c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCertificateViewModelImpl$notifyError$1(Continuation continuation, AddCertificateViewModelImpl addCertificateViewModelImpl) {
        super(2, continuation);
        this.f55772c = addCertificateViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddCertificateViewModelImpl$notifyError$1(continuation, this.f55772c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddCertificateViewModelImpl$notifyError$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55771b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddCertificateViewModelImpl addCertificateViewModelImpl = this.f55772c;
            BufferedChannel bufferedChannel = addCertificateViewModelImpl.q;
            NotificationUiModel notificationUiModelA = NotificationBuilder.a(addCertificateViewModelImpl.d, new StringResourceUiModel.ResId(R.string.certificate_activation_generic_error, null, 2, null), false, null, null, 60);
            this.f55771b = 1;
            if (bufferedChannel.u(notificationUiModelA, this) == coroutineSingletons) {
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
