package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import defpackage.md;
import defpackage.v40;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$showNotification$1", f = "FeedViewModelImpl.kt", l = {1003}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$showNotification$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedNotification f57727c;
    public final /* synthetic */ FeedViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$showNotification$1(FeedNotification feedNotification, FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57727c = feedNotification;
        this.d = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$showNotification$1(this.f57727c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$showNotification$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        StringResourceUiModel.ResId resId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57726b;
        if (i2 == 0) {
            ResultKt.b(obj);
            FeedNotification feedNotification = this.f57727c;
            boolean z = feedNotification instanceof FeedNotification.CalendarAddingSuccess;
            if (z) {
                resId = new StringResourceUiModel.ResId(R.string.feed_calendar_add_successfully, null, 2, null);
            } else if (feedNotification instanceof FeedNotification.CalendarAddingError) {
                resId = new StringResourceUiModel.ResId(R.string.feed_calendar_add_error, null, 2, null);
            } else if (feedNotification instanceof FeedNotification.CalendarRemoveSuccess) {
                resId = new StringResourceUiModel.ResId(R.string.feed_calendar_deleted_successfully, null, 2, null);
            } else if (feedNotification instanceof FeedNotification.CalendarRemoveError) {
                resId = new StringResourceUiModel.ResId(R.string.feed_calendar_deleted_error, null, 2, null);
            } else if (feedNotification instanceof FeedNotification.NotificationAlreadyEnabled) {
                resId = new StringResourceUiModel.ResId(R.string.toast_success_already_register, null, 2, null);
            } else {
                if (!(feedNotification instanceof FeedNotification.ErrorGeneric)) {
                    v40.g();
                    return null;
                }
                resId = new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
            }
            StringResourceUiModel.ResId resId2 = resId;
            FeedViewModelImpl feedViewModelImpl = this.d;
            BufferedChannel bufferedChannel = feedViewModelImpl.U;
            NotificationUiModel notificationUiModelA = NotificationBuilder.a(feedViewModelImpl.f57619h, resId2, z || (feedNotification instanceof FeedNotification.CalendarRemoveSuccess), null, null, 60);
            this.f57726b = 1;
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
