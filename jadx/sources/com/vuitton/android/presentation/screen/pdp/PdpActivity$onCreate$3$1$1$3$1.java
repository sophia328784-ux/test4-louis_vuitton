package com.vuitton.android.presentation.screen.pdp;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import defpackage.md;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$3$1$1$3$1", f = "PdpActivity.kt", l = {282}, m = "invokeSuspend", v = 2)
final class PdpActivity$onCreate$3$1$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpActivity f61070c;
    public final /* synthetic */ HapticFeedback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f61071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f61072f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$3$1$1$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$3$1$1$3$1$1", f = "PdpActivity.kt", l = {290}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f61074c;
        public final /* synthetic */ HapticFeedback d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f61075e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f61076f;
        public final /* synthetic */ PdpActivity g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ MutableState f61077h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, SnackbarHostState snackbarHostState, MutableState mutableState, HapticFeedback hapticFeedback, PdpActivity pdpActivity, Continuation continuation) {
            super(2, continuation);
            this.d = hapticFeedback;
            this.f61075e = context;
            this.f61076f = snackbarHostState;
            this.g = pdpActivity;
            this.f61077h = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            PdpActivity pdpActivity = this.g;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f61075e, this.f61076f, this.f61077h, this.d, pdpActivity, continuation);
            anonymousClass1.f61074c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationUiModel notificationUiModel = (NotificationUiModel) this.f61074c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f61073b;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (notificationUiModel.f51844e) {
                    HapticFeedbackType.f9193b.getClass();
                    int i3 = PlatformHapticFeedbackType.f9196a;
                    this.d.a(0);
                }
                StringResourceUiModel stringResourceUiModel = notificationUiModel.f51841a;
                Context context = this.f61075e;
                AccessibilityUtils.a(context, StringResourceUiModelKt.a(stringResourceUiModel, context));
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, context, LVColorScheme.DEFAULT);
                this.f61074c = notificationUiModel;
                this.f61073b = 1;
                obj = this.f61076f.a(lVSnackbarVisualsB, this);
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
            if (((SnackbarResult) obj) == SnackbarResult.ActionPerformed && Intrinsics.c(notificationUiModel.g, ProductNotificationAction.GoToWishlist.f61271b)) {
                PdpActivity.Companion companion = PdpActivity.D;
                PdpDestinations.ToWishlistPage toWishlistPage = new PdpDestinations.ToWishlistPage(((PdpViewState) this.f61077h.getF10755b()).m);
                PdpActivity pdpActivity = this.g;
                IntentExtensionKt.b(PdpDestinationsKt.a(toWishlistPage, pdpActivity), pdpActivity.z);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpActivity$onCreate$3$1$1$3$1(Context context, SnackbarHostState snackbarHostState, MutableState mutableState, HapticFeedback hapticFeedback, PdpActivity pdpActivity, Continuation continuation) {
        super(2, continuation);
        this.f61070c = pdpActivity;
        this.d = hapticFeedback;
        this.f61071e = context;
        this.f61072f = snackbarHostState;
        this.g = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpActivity$onCreate$3$1$1$3$1(this.f61071e, this.f61072f, this.g, this.d, this.f61070c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpActivity$onCreate$3$1$1$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61069b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PdpActivity.Companion companion = PdpActivity.D;
            PdpActivity pdpActivity = this.f61070c;
            Flow flowB = pdpActivity.I().b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f61071e, this.f61072f, this.g, this.d, pdpActivity, null);
            this.f61069b = 1;
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
