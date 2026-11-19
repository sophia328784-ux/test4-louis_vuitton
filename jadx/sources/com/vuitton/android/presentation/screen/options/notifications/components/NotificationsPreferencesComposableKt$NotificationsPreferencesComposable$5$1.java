package com.vuitton.android.presentation.screen.options.notifications.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import defpackage.k40;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1", f = "NotificationsPreferencesComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f59916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f59917c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1(MutableState mutableState, LVModalBottomSheetState lVModalBottomSheetState, Continuation continuation) {
        super(2, continuation);
        this.f59916b = lVModalBottomSheetState;
        this.f59917c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1(this.f59917c, this.f59916b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        boolean zC = Intrinsics.c((NotificationsPreferencesBottomSheet) this.f59917c.getF10755b(), NotificationsPreferencesBottomSheet.None.f59948e);
        LVModalBottomSheetState lVModalBottomSheetState = this.f59916b;
        if (zC) {
            lVModalBottomSheetState.b(new k40(28));
        } else {
            lVModalBottomSheetState.e();
        }
        return Unit.f71739a;
    }
}
