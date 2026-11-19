package com.vuitton.android.presentation.screen.options.notifications.components;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1", f = "NotificationsPreferencesComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NotificationsPreferencesViewModel f59914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f59915c;
    public final /* synthetic */ State d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1(NotificationsPreferencesViewModel notificationsPreferencesViewModel, MutableState mutableState, State state, Continuation continuation) {
        super(2, continuation);
        this.f59914b = notificationsPreferencesViewModel;
        this.f59915c = mutableState;
        this.d = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1(this.f59914b, this.f59915c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f59915c;
        boolean z = ((NotificationsPreferencesViewState) mutableState.getF10755b()).f59960c;
        NotificationsPreferencesViewModel notificationsPreferencesViewModel = this.f59914b;
        if (!z) {
            notificationsPreferencesViewModel.m3(NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e);
        } else if (((NotificationsPreferencesViewState) mutableState.getF10755b()).f59959b) {
            State state = this.d;
            if (Intrinsics.c((NotificationsPreferencesBottomSheet) state.getF10755b(), NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e) || Intrinsics.c((NotificationsPreferencesBottomSheet) state.getF10755b(), NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e)) {
                notificationsPreferencesViewModel.h5();
            }
        } else {
            notificationsPreferencesViewModel.m3(NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e);
        }
        return Unit.f71739a;
    }
}
