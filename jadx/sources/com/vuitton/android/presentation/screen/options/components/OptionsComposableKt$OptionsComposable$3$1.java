package com.vuitton.android.presentation.screen.options.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.components.OptionsComposableKt$OptionsComposable$3$1", f = "OptionsComposable.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "invokeSuspend", v = 2)
final class OptionsComposableKt$OptionsComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OptionsViewModel f59764c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f59765e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.components.OptionsComposableKt$OptionsComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.components.OptionsComposableKt$OptionsComposable$3$1$1", f = "OptionsComposable.kt", l = {EACTags.ANSWER_TO_RESET}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f59767c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f59768e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.d = snackbarHostState;
            this.f59768e = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f59768e, continuation);
            anonymousClass1.f59767c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationUiModel notificationUiModel = (NotificationUiModel) this.f59767c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59766b;
            if (i2 == 0) {
                ResultKt.b(obj);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f59768e, LVColorScheme.DEFAULT);
                this.f59767c = null;
                this.f59766b = 1;
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
    public OptionsComposableKt$OptionsComposable$3$1(OptionsViewModel optionsViewModel, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f59764c = optionsViewModel;
        this.d = snackbarHostState;
        this.f59765e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OptionsComposableKt$OptionsComposable$3$1(this.f59764c, this.d, this.f59765e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OptionsComposableKt$OptionsComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59763b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowB = this.f59764c.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f59765e, null);
            this.f59763b = 1;
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
