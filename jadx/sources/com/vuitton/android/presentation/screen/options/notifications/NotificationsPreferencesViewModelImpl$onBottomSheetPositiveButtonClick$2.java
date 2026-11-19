package com.vuitton.android.presentation.screen.options.notifications;

import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesDestination;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2", f = "NotificationsPreferencesViewModelImpl.kt", l = {NSType.AXFR}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NotificationsPreferencesViewModelImpl f59883c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2(NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59883c = notificationsPreferencesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2(this.f59883c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59882b;
        if (i2 == 0) {
            ResultKt.b(obj);
            BufferedChannel bufferedChannel = this.f59883c.r;
            NotificationsPreferencesDestination notificationsPreferencesDestination = NotificationsPreferencesDestination.LEGAL_SETTINGS;
            this.f59882b = 1;
            if (bufferedChannel.u(notificationsPreferencesDestination, this) == coroutineSingletons) {
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
