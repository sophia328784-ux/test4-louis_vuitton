package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.cart.CartNotificationAction;
import com.vuitton.android.presentation.screen.cart.NativeCartDestinations;
import com.vuitton.android.presentation.screen.cart.NativeCartDestinationsKt;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$5$1", f = "NativeCartComposable.kt", l = {203}, m = "invokeSuspend", v = 2)
final class NativeCartComposableKt$NativeCartComposable$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModel f55017c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f55018e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$5$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$5$1$1", f = "NativeCartComposable.kt", l = {204}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f55019b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f55020c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f55021e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.d = snackbarHostState;
            this.f55021e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f55021e, continuation);
            anonymousClass1.f55020c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationUiModel notificationUiModel = (NotificationUiModel) this.f55020c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f55019b;
            Context context = this.f55021e;
            if (i2 == 0) {
                ResultKt.b(obj);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, context, LVColorScheme.DEFAULT);
                this.f55020c = notificationUiModel;
                this.f55019b = 1;
                obj = this.d.a(lVSnackbarVisualsB, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            if (((SnackbarResult) obj) == SnackbarResult.ActionPerformed && (notificationUiModel.g instanceof CartNotificationAction.GoToWishlist)) {
                context.startActivity(NativeCartDestinationsKt.a(new NativeCartDestinations.ToWishlistPage(false, 1, null), context));
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartComposableKt$NativeCartComposable$5$1(NativeCartViewModel nativeCartViewModel, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f55017c = nativeCartViewModel;
        this.d = snackbarHostState;
        this.f55018e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartComposableKt$NativeCartComposable$5$1(this.f55017c, this.d, this.f55018e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartComposableKt$NativeCartComposable$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55016b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowB = this.f55017c.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f55018e, null);
            this.f55016b = 1;
            if (FlowKt.g(flowB, anonymousClass1, this) == coroutineSingletons) {
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
