package com.vuitton.android.presentation.screen.authentication.register.components;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountCredentials;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterCredentialsUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import defpackage.md;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$4$1", f = "NativeRegisterComposable.kt", l = {97}, m = "invokeSuspend", v = 2)
final class NativeRegisterComposableKt$NativeRegisterComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModel f53825c;
    public final /* synthetic */ AccountManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f53826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f53827f;
    public final /* synthetic */ Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f53828h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$4$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$4$1$1", f = "NativeRegisterComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AccountManager f53829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f53830c;
        public final /* synthetic */ Function0 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Context f53831e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MutableState f53832f;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$4$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$4$1$1$1", f = "NativeRegisterComposable.kt", l = {100}, m = "invokeSuspend", v = 2)
        final class C02701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53833b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AccountManager f53834c;
            public final /* synthetic */ Context d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ MutableState f53835e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02701(AccountManager accountManager, Context context, MutableState mutableState, Continuation continuation) {
                super(2, continuation);
                this.f53834c = accountManager;
                this.d = context;
                this.f53835e = mutableState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02701(this.f53834c, this.d, this.f53835e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02701) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53833b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel = ((NativeRegisterViewState) this.f53835e.getF10755b()).f54029a;
                    nativeRegisterCredentialsUiModel.getClass();
                    AccountCredentials accountCredentials = new AccountCredentials(nativeRegisterCredentialsUiModel.f53951a, (String) ((SnapshotMutableStateImpl) nativeRegisterCredentialsUiModel.f53952b.f53493b).getF10755b());
                    this.f53833b = 1;
                    if (this.f53834c.a(this.d, accountCredentials, this) == coroutineSingletons) {
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
        public AnonymousClass1(AccountManager accountManager, CoroutineScope coroutineScope, Function0 function0, Context context, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f53829b = accountManager;
            this.f53830c = coroutineScope;
            this.d = function0;
            this.f53831e = context;
            this.f53832f = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f53829b, this.f53830c, this.d, this.f53831e, this.f53832f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            Function0 function0 = this.d;
            AccountManager accountManager = this.f53829b;
            if (accountManager != null) {
                BuildersKt.c(this.f53830c, null, null, new C02701(accountManager, this.f53831e, this.f53832f, null), 3).invokeOnCompletion(new y2(function0, 25));
            } else {
                function0.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterComposableKt$NativeRegisterComposable$4$1(NativeRegisterViewModel nativeRegisterViewModel, AccountManager accountManager, CoroutineScope coroutineScope, Function0 function0, Context context, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f53825c = nativeRegisterViewModel;
        this.d = accountManager;
        this.f53826e = coroutineScope;
        this.f53827f = function0;
        this.g = context;
        this.f53828h = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterComposableKt$NativeRegisterComposable$4$1(this.f53825c, this.d, this.f53826e, this.f53827f, this.g, this.f53828h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterComposableKt$NativeRegisterComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53824b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow s = this.f53825c.getS();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53826e, this.f53827f, this.g, this.f53828h, null);
            this.f53824b = 1;
            if (FlowKt.g(s, anonymousClass1, this) == coroutineSingletons) {
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
