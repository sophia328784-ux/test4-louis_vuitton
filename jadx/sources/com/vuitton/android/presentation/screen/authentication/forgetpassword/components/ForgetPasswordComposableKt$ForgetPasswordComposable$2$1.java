package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$2$1", f = "ForgetPasswordComposable.kt", l = {83}, m = "invokeSuspend", v = 2)
final class ForgetPasswordComposableKt$ForgetPasswordComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ForgetPasswordViewModel f53546c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f53547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f53548f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "isSuccess", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1", f = "ForgetPasswordComposable.kt", l = {84}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ boolean f53550c;
        public final /* synthetic */ SnackbarHostState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ NotificationBuilder f53551e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f53552f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
            super(2, continuation);
            this.d = snackbarHostState;
            this.f53551e = notificationBuilder;
            this.f53552f = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53551e, this.f53552f, continuation);
            anonymousClass1.f53550c = ((Boolean) obj).booleanValue();
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z = this.f53550c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53549b;
            if (i2 == 0) {
                ResultKt.b(obj);
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.f53551e, z ? new StringResourceUiModel.ResId(R.string.mylv_authent_native_resend_code_success_banner, null, 2, null) : new StringResourceUiModel.ResId(R.string.mylv_authent_native_resend_code_error_banner, null, 2, null), z, null, null, 60);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, this.f53552f, LVColorScheme.DEFAULT);
                this.f53550c = z;
                this.f53549b = 1;
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
    public ForgetPasswordComposableKt$ForgetPasswordComposable$2$1(ForgetPasswordViewModel forgetPasswordViewModel, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Context context, Continuation continuation) {
        super(2, continuation);
        this.f53546c = forgetPasswordViewModel;
        this.d = snackbarHostState;
        this.f53547e = notificationBuilder;
        this.f53548f = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ForgetPasswordComposableKt$ForgetPasswordComposable$2$1(this.f53546c, this.d, this.f53547e, this.f53548f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ForgetPasswordComposableKt$ForgetPasswordComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53545b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowL5 = this.f53546c.L5();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53547e, this.f53548f, null);
            this.f53545b = 1;
            if (FlowKt.g(flowL5, anonymousClass1, this) == coroutineSingletons) {
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
