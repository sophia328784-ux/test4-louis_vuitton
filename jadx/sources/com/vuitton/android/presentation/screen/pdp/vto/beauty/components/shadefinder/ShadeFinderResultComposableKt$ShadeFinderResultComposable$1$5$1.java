package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import androidx.compose.runtime.MutableState;
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
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1", f = "ShadeFinderResultComposable.kt", l = {96}, m = "invokeSuspend", v = 2)
final class ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModel f62078c;
    public final /* synthetic */ HapticFeedback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f62079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f62080f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f62081h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ HapticFeedback f62082b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f62083c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function0 f62084e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ BeautyVtoViewModel f62085f;
        public final /* synthetic */ MutableState g;

        public AnonymousClass1(HapticFeedback hapticFeedback, SnackbarHostState snackbarHostState, Context context, Function0 function0, BeautyVtoViewModel beautyVtoViewModel, MutableState mutableState) {
            this.f62082b = hapticFeedback;
            this.f62083c = snackbarHostState;
            this.d = context;
            this.f62084e = function0;
            this.f62085f = beautyVtoViewModel;
            this.g = mutableState;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object emit(NotificationUiModel notificationUiModel, Continuation continuation) {
            ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1 shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1;
            if (continuation instanceof ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1) {
                shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1 = (ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1) continuation;
                int i2 = shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62088e;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62088e = i2 - Integer.MIN_VALUE;
                } else {
                    shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1(this, continuation);
                }
            } else {
                shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1 = new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1(this, continuation);
            }
            Object objA = shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62087c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62088e;
            if (i3 == 0) {
                ResultKt.b(objA);
                if (notificationUiModel.f51844e) {
                    HapticFeedbackType.f9193b.getClass();
                    int i4 = PlatformHapticFeedbackType.f9196a;
                    this.f62082b.a(0);
                }
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.d, LVColorScheme.DEFAULT);
                shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62086b = notificationUiModel;
                shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62088e = 1;
                objA = this.f62083c.a(lVSnackbarVisualsB, shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                notificationUiModel = shadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1$1$emit$1.f62086b;
                ResultKt.b(objA);
            }
            if (((SnackbarResult) objA) == SnackbarResult.ActionPerformed) {
                NotificationAction notificationAction = notificationUiModel.g;
                if (notificationAction instanceof BeautyNotificationAction.GoToCart) {
                    this.f62084e.mo47invoke();
                } else if (notificationAction instanceof BeautyNotificationAction.NotifyItem) {
                    this.f62085f.ta(new BeautyBottomSheet.BackInStock(((BeautyNotificationAction.NotifyItem) notificationAction).f62146b, ((ShadeFinderViewState) this.g.getF10755b()).f62182f.f62139e), false);
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1(BeautyVtoViewModel beautyVtoViewModel, HapticFeedback hapticFeedback, SnackbarHostState snackbarHostState, Context context, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f62078c = beautyVtoViewModel;
        this.d = hapticFeedback;
        this.f62079e = snackbarHostState;
        this.f62080f = context;
        this.g = function0;
        this.f62081h = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1(this.f62078c, this.d, this.f62079e, this.f62080f, this.g, this.f62081h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62077b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowB = this.f62078c.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f62079e, this.f62080f, this.g, this.f62078c, this.f62081h);
            this.f62077b = 1;
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
