package com.vuitton.android.presentation.screen.options.notifications;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3", f = "NotificationsPreferencesViewModelImpl.kt", l = {215}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NotificationsPreferencesViewModelImpl f59894c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3(NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59894c = notificationsPreferencesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3(this.f59894c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59893b;
        if (i2 == 0) {
            ResultKt.b(obj);
            BufferedChannel bufferedChannel = this.f59894c.r;
            NotificationsPreferencesDestination notificationsPreferencesDestination = NotificationsPreferencesDestination.BACKWARD;
            this.f59893b = 1;
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
