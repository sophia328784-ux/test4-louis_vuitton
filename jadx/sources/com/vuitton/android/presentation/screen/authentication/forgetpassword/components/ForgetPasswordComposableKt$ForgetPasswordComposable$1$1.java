package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordExceptionUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordUiEvent;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.eac.EACTags;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1", f = "ForgetPasswordComposable.kt", l = {40}, m = "invokeSuspend", v = 2)
final class ForgetPasswordComposableKt$ForgetPasswordComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ForgetPasswordViewModel f53530c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f53531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f53532f;
    public final /* synthetic */ SnackbarHostState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ NotificationBuilder f53533h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordUiEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1$1", f = "ForgetPasswordComposable.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<ForgetPasswordUiEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f53535c;
        public final /* synthetic */ PagerState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f53536e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f53537f;
        public final /* synthetic */ SnackbarHostState g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ NotificationBuilder f53538h;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1$1$1", f = "ForgetPasswordComposable.kt", l = {EACTags.LANGUAGE_PREFERENCES}, m = "invokeSuspend", v = 2)
        final class C02671 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53539b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PagerState f53540c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02671(PagerState pagerState, Continuation continuation) {
                super(2, continuation);
                this.f53540c = pagerState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02671(this.f53540c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02671) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53539b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    PagerState pagerState = this.f53540c;
                    int iK = pagerState.k() + 1;
                    this.f53539b = 1;
                    if (PagerState.g(pagerState, iK, null, this, 6) == coroutineSingletons) {
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

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$1$1$1$2", f = "ForgetPasswordComposable.kt", l = {62}, m = "invokeSuspend", v = 2)
        final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53541b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PagerState f53542c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(PagerState pagerState, Continuation continuation) {
                super(2, continuation);
                this.f53542c = pagerState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.f53542c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53541b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f53541b = 1;
                    if (PagerState.g(this.f53542c, 1, null, this, 6) == coroutineSingletons) {
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
        public AnonymousClass1(PagerState pagerState, CoroutineScope coroutineScope, Context context, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Continuation continuation) {
            super(2, continuation);
            this.d = pagerState;
            this.f53536e = coroutineScope;
            this.f53537f = context;
            this.g = snackbarHostState;
            this.f53538h = notificationBuilder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53536e, this.f53537f, this.g, this.f53538h, continuation);
            anonymousClass1.f53535c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((ForgetPasswordUiEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ForgetPasswordUiEvent forgetPasswordUiEvent = (ForgetPasswordUiEvent) this.f53535c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f53534b;
            if (i2 == 0) {
                ResultKt.b(obj);
                boolean zC = Intrinsics.c(forgetPasswordUiEvent, ForgetPasswordUiEvent.ForgetPasswordInitiateSuccess.f53584a);
                CoroutineScope coroutineScope = this.f53536e;
                PagerState pagerState = this.d;
                if (!zC) {
                    boolean zC2 = Intrinsics.c(forgetPasswordUiEvent, ForgetPasswordUiEvent.ForgetPasswordSuccess.f53585a);
                    Context context = this.f53537f;
                    if (zC2) {
                        AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                        if (appCompatActivityB != null) {
                            appCompatActivityB.finish();
                        }
                    } else {
                        if (!(forgetPasswordUiEvent instanceof ForgetPasswordUiEvent.ForgetPasswordError)) {
                            v40.g();
                            return null;
                        }
                        ForgetPasswordExceptionUiModel forgetPasswordExceptionUiModel = ((ForgetPasswordUiEvent.ForgetPasswordError) forgetPasswordUiEvent).f53583a;
                        if (!(forgetPasswordExceptionUiModel instanceof ForgetPasswordExceptionUiModel.PasswordAlreadyUsed)) {
                            if ((forgetPasswordExceptionUiModel instanceof ForgetPasswordExceptionUiModel.InvalidOtp) || (forgetPasswordExceptionUiModel instanceof ForgetPasswordExceptionUiModel.ExpiredOtp)) {
                                BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(pagerState, null), 3);
                            } else {
                                String f53567a = forgetPasswordExceptionUiModel.getF53567a();
                                if (f53567a == null) {
                                    f53567a = context.getString(R.string.error_generic);
                                    f53567a.getClass();
                                }
                                NotificationUiModel notificationUiModelA = NotificationBuilder.a(this.f53538h, new StringResourceUiModel.Text(f53567a), false, null, null, 60);
                                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModelA, context, LVColorScheme.DEFAULT);
                                this.f53535c = null;
                                this.f53534b = 1;
                                if (this.g.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            }
                        }
                    }
                } else if (pagerState.k() < 2) {
                    BuildersKt.c(coroutineScope, null, null, new C02671(pagerState, null), 3);
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
    public ForgetPasswordComposableKt$ForgetPasswordComposable$1$1(ForgetPasswordViewModel forgetPasswordViewModel, PagerState pagerState, CoroutineScope coroutineScope, Context context, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Continuation continuation) {
        super(2, continuation);
        this.f53530c = forgetPasswordViewModel;
        this.d = pagerState;
        this.f53531e = coroutineScope;
        this.f53532f = context;
        this.g = snackbarHostState;
        this.f53533h = notificationBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ForgetPasswordComposableKt$ForgetPasswordComposable$1$1(this.f53530c, this.d, this.f53531e, this.f53532f, this.g, this.f53533h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ForgetPasswordComposableKt$ForgetPasswordComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53529b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow event = this.f53530c.getEvent();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53531e, this.f53532f, this.g, this.f53533h, null);
            this.f53529b = 1;
            if (FlowKt.g(event, anonymousClass1, this) == coroutineSingletons) {
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
