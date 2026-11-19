package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import androidx.compose.runtime.State;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationAction;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyNotificationAction;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$1$1", f = "BeautyVtoComposable.kt", l = {84}, m = "invokeSuspend", v = 2)
final class BeautyVtoComposableKt$BeautyVtoComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModel f62008c;
    public final /* synthetic */ HapticFeedback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f62009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f62010f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f62011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ State f62012i;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$1$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ HapticFeedback f62013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f62014c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function0 f62015e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Function0 f62016f;
        public final /* synthetic */ BeautyVtoViewModel g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ State f62017h;

        public AnonymousClass1(HapticFeedback hapticFeedback, SnackbarHostState snackbarHostState, Context context, Function0 function0, Function0 function1, BeautyVtoViewModel beautyVtoViewModel, State state) {
            this.f62013b = hapticFeedback;
            this.f62014c = snackbarHostState;
            this.d = context;
            this.f62015e = function0;
            this.f62016f = function1;
            this.g = beautyVtoViewModel;
            this.f62017h = state;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object emit(NotificationUiModel notificationUiModel, Continuation continuation) {
            BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1 beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1;
            if (continuation instanceof BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1) {
                beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1 = (BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1) continuation;
                int i2 = beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62020e;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62020e = i2 - Integer.MIN_VALUE;
                } else {
                    beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1 = new BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1(this, continuation);
                }
            } else {
                beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1 = new BeautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1(this, continuation);
            }
            Object objA = beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62019c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62020e;
            if (i3 == 0) {
                ResultKt.b(objA);
                if (notificationUiModel.f51844e) {
                    HapticFeedbackType.f9193b.getClass();
                    int i4 = PlatformHapticFeedbackType.f9196a;
                    this.f62013b.a(0);
                }
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.d, LVColorScheme.DEFAULT);
                beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62018b = notificationUiModel;
                beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62020e = 1;
                objA = this.f62014c.a(lVSnackbarVisualsB, beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                notificationUiModel = beautyVtoComposableKt$BeautyVtoComposable$1$1$1$emit$1.f62018b;
                ResultKt.b(objA);
            }
            if (((SnackbarResult) objA) == SnackbarResult.ActionPerformed) {
                NotificationAction notificationAction = notificationUiModel.g;
                if (notificationAction instanceof BeautyNotificationAction.GoToWishlist) {
                    this.f62015e.mo47invoke();
                } else if (notificationAction instanceof BeautyNotificationAction.GoToCart) {
                    this.f62016f.mo47invoke();
                } else if (notificationAction instanceof BeautyNotificationAction.NotifyItem) {
                    this.g.ta(new BeautyBottomSheet.BackInStock(((BeautyNotificationAction.NotifyItem) notificationAction).f62146b, ((BeautyVtoViewState) this.f62017h.getF10755b()).u.f62139e), false);
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoComposableKt$BeautyVtoComposable$1$1(BeautyVtoViewModel beautyVtoViewModel, HapticFeedback hapticFeedback, SnackbarHostState snackbarHostState, Context context, Function0 function0, Function0 function1, State state, Continuation continuation) {
        super(2, continuation);
        this.f62008c = beautyVtoViewModel;
        this.d = hapticFeedback;
        this.f62009e = snackbarHostState;
        this.f62010f = context;
        this.g = function0;
        this.f62011h = function1;
        this.f62012i = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoComposableKt$BeautyVtoComposable$1$1(this.f62008c, this.d, this.f62009e, this.f62010f, this.g, this.f62011h, this.f62012i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoComposableKt$BeautyVtoComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62007b;
        if (i2 == 0) {
            ResultKt.b(obj);
            BeautyVtoViewModel beautyVtoViewModel = this.f62008c;
            beautyVtoViewModel.g3();
            Flow flowB = beautyVtoViewModel.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f62009e, this.f62010f, this.g, this.f62011h, this.f62008c, this.f62012i);
            this.f62007b = 1;
            if (flowB.f(anonymousClass1, this) == coroutineSingletons) {
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
