package com.vuitton.android.presentation.screen.feed.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$5$1", f = "FeedComposable.kt", l = {223}, m = "invokeSuspend", v = 2)
final class FeedComposableKt$FeedComposable$1$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f57792c;
    public final /* synthetic */ FeedTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f57793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f57794f;
    public final /* synthetic */ Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f57795h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$5$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$5$1$1", f = "FeedComposable.kt", l = {225}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57796b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ FeedTracker f57797c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ NotificationBuilder f57798e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f57799f;
        public final /* synthetic */ MutableState g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FeedTracker feedTracker, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f57797c = feedTracker;
            this.d = snackbarHostState;
            this.f57798e = notificationBuilder;
            this.f57799f = context;
            this.g = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f57797c, this.d, this.f57798e, this.f57799f, this.g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f57796b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f57797c.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnNotifyMeSuccessEvent((FeedTab) this.g.getF10755b())));
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.f57798e, new StringResourceUiModel.ResId(R.string.toast_success_register, null, 2, null), false, null, null, 54);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.f57799f, LVColorScheme.DEFAULT);
                this.f57796b = 1;
                if (this.d.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedComposableKt$FeedComposable$1$5$1(PermissionsViewModel permissionsViewModel, FeedTracker feedTracker, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f57792c = permissionsViewModel;
        this.d = feedTracker;
        this.f57793e = snackbarHostState;
        this.f57794f = notificationBuilder;
        this.g = context;
        this.f57795h = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedComposableKt$FeedComposable$1$5$1(this.f57792c, this.d, this.f57793e, this.f57794f, this.g, this.f57795h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedComposableKt$FeedComposable$1$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57791b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl t = this.f57792c.getT();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f57793e, this.f57794f, this.g, this.f57795h, null);
            this.f57791b = 1;
            if (FlowKt.g(t, anonymousClass1, this) == coroutineSingletons) {
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
