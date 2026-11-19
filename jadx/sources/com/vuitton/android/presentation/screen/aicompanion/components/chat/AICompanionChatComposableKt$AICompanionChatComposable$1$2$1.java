package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatComposableKt$AICompanionChatComposable$1$2$1", f = "AICompanionChatComposable.kt", l = {72}, m = "invokeSuspend", v = 2)
final class AICompanionChatComposableKt$AICompanionChatComposable$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModel f52787c;
    public final /* synthetic */ HapticFeedback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f52788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f52789f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatComposableKt$AICompanionChatComposable$1$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatComposableKt$AICompanionChatComposable$1$2$1$1", f = "AICompanionChatComposable.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f52790b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f52791c;
        public final /* synthetic */ HapticFeedback d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f52792e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f52793f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(HapticFeedback hapticFeedback, Context context, SnackbarHostState snackbarHostState, Continuation continuation) {
            super(2, continuation);
            this.d = hapticFeedback;
            this.f52792e = context;
            this.f52793f = snackbarHostState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f52792e, this.f52793f, continuation);
            anonymousClass1.f52791c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationUiModel notificationUiModel = (NotificationUiModel) this.f52791c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f52790b;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (notificationUiModel.f51844e) {
                    HapticFeedbackType.f9193b.getClass();
                    int i3 = PlatformHapticFeedbackType.f9196a;
                    this.d.a(0);
                }
                StringResourceUiModel stringResourceUiModel = notificationUiModel.f51841a;
                Context context = this.f52792e;
                AccessibilityUtils.a(context, StringResourceUiModelKt.a(stringResourceUiModel, context));
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, context, LVColorScheme.DEFAULT);
                this.f52791c = null;
                this.f52790b = 1;
                if (this.f52793f.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
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
    public AICompanionChatComposableKt$AICompanionChatComposable$1$2$1(AICompanionViewModel aICompanionViewModel, HapticFeedback hapticFeedback, Context context, SnackbarHostState snackbarHostState, Continuation continuation) {
        super(2, continuation);
        this.f52787c = aICompanionViewModel;
        this.d = hapticFeedback;
        this.f52788e = context;
        this.f52789f = snackbarHostState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionChatComposableKt$AICompanionChatComposable$1$2$1(this.f52787c, this.d, this.f52788e, this.f52789f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionChatComposableKt$AICompanionChatComposable$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52786b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowB = this.f52787c.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f52788e, this.f52789f, null);
            this.f52786b = 1;
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
