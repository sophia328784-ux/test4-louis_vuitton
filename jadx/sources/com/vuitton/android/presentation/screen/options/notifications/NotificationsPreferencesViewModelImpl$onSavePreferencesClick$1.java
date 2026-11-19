package com.vuitton.android.presentation.screen.options.notifications;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1", f = "NotificationsPreferencesViewModelImpl.kt", l = {172, 175, 184}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f59892c;
    public final /* synthetic */ NotificationsPreferencesViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1(NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = notificationsPreferencesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x0093  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bd  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b7, code lost:
    
        if (r1.u(r0, r11) == r2) goto L31;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl r0 = r11.d
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.n
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r11.f59892c
            r4 = 3
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L2b
            if (r3 == r6) goto L27
            if (r3 == r5) goto L1f
            if (r3 != r4) goto L18
            kotlin.ResultKt.b(r12)
            goto Lba
        L18:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            r11 = 0
            return r11
        L1f:
            kotlin.ResultKt.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r12 = r12.f71708b
            goto L7c
        L27:
            kotlin.ResultKt.b(r12)
            goto L64
        L2b:
            kotlin.ResultKt.b(r12)
            com.vuitton.android.domain.usecase.account.notifications.GetNotificationsPreferencesUseCase r12 = r0.f59875f
            com.vuitton.android.domain.repository.NotificationsPreferencesRepository r12 = r12.f49103a
            java.util.Map r12 = r12.c()
            kotlinx.coroutines.flow.MutableStateFlow r3 = r0.m
            java.lang.Object r3 = r3.getValue()
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 != 0) goto Lbd
            com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType r3 = com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType.NOTIFY_ME
            java.lang.Object r12 = r12.get(r3)
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r12 = kotlin.jvm.internal.Intrinsics.c(r12, r3)
            if (r12 == 0) goto Lbd
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r12 = r0.f59873c
            com.vuitton.foundation.model.domain.model.sync.Feature r3 = com.vuitton.foundation.model.domain.model.sync.Feature.BACK_IN_STOCK
            com.vuitton.foundation.model.domain.model.sync.Feature[] r3 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r3}
            r11.f59892c = r6
            r6 = 0
            java.lang.Object r12 = r12.c(r3, r6, r11)
            if (r12 != r2) goto L64
            goto Lb9
        L64:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto Lbd
            java.lang.Boolean r12 = java.lang.Boolean.TRUE
            r1.setValue(r12)
            com.vuitton.android.domain.usecase.pdp.backinstock.UnsubscribeBackInStockUseCase r12 = r0.g
            r11.f59892c = r5
            java.lang.Object r12 = r12.a(r11)
            if (r12 != r2) goto L7c
            goto Lb9
        L7c:
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            boolean r3 = r12 instanceof kotlin.Result.Failure
            if (r3 != 0) goto L8d
            r3 = r12
            kotlin.Unit r3 = (kotlin.Unit) r3
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            r1.setValue(r3)
            com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl.yc(r0)
        L8d:
            java.lang.Throwable r3 = kotlin.Result.a(r12)
            if (r3 == 0) goto Lba
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            r1.setValue(r3)
            r0.M()
            kotlinx.coroutines.channels.BufferedChannel r1 = r0.q
            com.vuitton.android.presentation.notification.NotificationBuilder r5 = r0.f59877i
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text r6 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text
            java.lang.String r0 = "Error during unsubscribing."
            r6.<init>(r0)
            r9 = 0
            r10 = 60
            r7 = 0
            r8 = 0
            com.vuitton.android.presentation.notification.NotificationUiModel r0 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r5, r6, r7, r8, r9, r10)
            r11.f59891b = r12
            r11.f59892c = r4
            java.lang.Object r11 = r1.u(r0, r11)
            if (r11 != r2) goto Lba
        Lb9:
            return r2
        Lba:
            kotlin.Result$Companion r11 = kotlin.Result.INSTANCE
            goto Lc0
        Lbd:
            com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl.yc(r0)
        Lc0:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
