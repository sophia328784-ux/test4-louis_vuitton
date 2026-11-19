package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

import android.content.Context;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent;
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
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt$AccountActivationComposable$3$1", f = "AccountActivationComposable.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class AccountActivationComposableKt$AccountActivationComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountActivationViewModel f53372c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f53373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f53374f;
    public final /* synthetic */ NotificationBuilder g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt$AccountActivationComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt$AccountActivationComposable$3$1$1", f = "AccountActivationComposable.kt", l = {61, 70}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AccountActivationUiEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53375b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f53376c;
        public final /* synthetic */ PagerState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f53377e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f53378f;
        public final /* synthetic */ NotificationBuilder g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PagerState pagerState, Context context, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Continuation continuation) {
            super(2, continuation);
            this.d = pagerState;
            this.f53377e = context;
            this.f53378f = snackbarHostState;
            this.g = notificationBuilder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53377e, this.f53378f, this.g, continuation);
            anonymousClass1.f53376c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AccountActivationUiEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        
            if (androidx.compose.foundation.pager.PagerState.g(r12.d, 1, null, r12, 6) == r1) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0075, code lost:
        
            if (r12.f53378f.a(r13, r12) == r1) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0077, code lost:
        
            return r1;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = r12.f53376c
                com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent r0 = (com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent) r0
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r12.f53375b
                r3 = 1
                r4 = 2
                r5 = 0
                if (r2 == 0) goto L1c
                if (r2 == r3) goto L18
                if (r2 != r4) goto L12
                goto L18
            L12:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r12)
                return r5
            L18:
                kotlin.ResultKt.b(r13)
                goto L78
            L1c:
                kotlin.ResultKt.b(r13)
                com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$InitiateSuccess r13 = com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent.InitiateSuccess.f53392a
                boolean r13 = kotlin.jvm.internal.Intrinsics.c(r0, r13)
                if (r13 == 0) goto L35
                r12.f53376c = r5
                r12.f53375b = r3
                androidx.compose.foundation.pager.PagerState r13 = r12.d
                r0 = 6
                java.lang.Object r12 = androidx.compose.foundation.pager.PagerState.g(r13, r3, r5, r12, r0)
                if (r12 != r1) goto L78
                goto L77
            L35:
                com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$ActivationSuccess r13 = com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent.ActivationSuccess.f53390a
                boolean r13 = kotlin.jvm.internal.Intrinsics.c(r0, r13)
                android.content.Context r2 = r12.f53377e
                if (r13 == 0) goto L49
                androidx.appcompat.app.AppCompatActivity r12 = com.vuitton.android.presentation.extensions.ContextExtKt.b(r2)
                if (r12 == 0) goto L78
                r12.finish()
                goto L78
            L49:
                boolean r13 = r0 instanceof com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent.Error
                if (r13 == 0) goto L7b
                com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$Error r0 = (com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent.Error) r0
                java.lang.String r13 = r0.f53391a
                if (r13 == 0) goto L78
                com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text r7 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$Text
                r7.<init>(r13)
                r10 = 0
                r11 = 60
                com.vuitton.android.presentation.notification.NotificationBuilder r6 = r12.g
                r8 = 0
                r9 = 0
                com.vuitton.android.presentation.notification.NotificationUiModel r13 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r6, r7, r8, r9, r10, r11)
                com.vuitton.android.presentation.notification.NotificationBuilder r0 = com.vuitton.android.presentation.notification.NotificationBuilderKt.f51837a
                com.vuitton.android.designkit.ui.theme.LVColorScheme r0 = com.vuitton.android.designkit.ui.theme.LVColorScheme.DEFAULT
                com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals r13 = com.vuitton.android.presentation.notification.NotificationBuilderKt.b(r13, r2, r0)
                r12.f53376c = r5
                r12.f53375b = r4
                androidx.compose.material3.SnackbarHostState r0 = r12.f53378f
                java.lang.Object r12 = r0.a(r13, r12)
                if (r12 != r1) goto L78
            L77:
                return r1
            L78:
                kotlin.Unit r12 = kotlin.Unit.f71739a
                return r12
            L7b:
                defpackage.v40.g()
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt$AccountActivationComposable$3$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationComposableKt$AccountActivationComposable$3$1(AccountActivationViewModel accountActivationViewModel, PagerState pagerState, Context context, SnackbarHostState snackbarHostState, NotificationBuilder notificationBuilder, Continuation continuation) {
        super(2, continuation);
        this.f53372c = accountActivationViewModel;
        this.d = pagerState;
        this.f53373e = context;
        this.f53374f = snackbarHostState;
        this.g = notificationBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountActivationComposableKt$AccountActivationComposable$3$1(this.f53372c, this.d, this.f53373e, this.f53374f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountActivationComposableKt$AccountActivationComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53371b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow event = this.f53372c.getEvent();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53373e, this.f53374f, this.g, null);
            this.f53371b = 1;
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
