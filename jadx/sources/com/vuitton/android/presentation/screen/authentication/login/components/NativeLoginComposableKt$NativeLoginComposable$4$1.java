package com.vuitton.android.presentation.screen.authentication.login.components;

import android.content.Context;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountCredentials;
import com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$4$1", f = "NativeLoginComposable.kt", l = {EACTags.CURRENCY_EXPONENT}, m = "invokeSuspend", v = 2)
final class NativeLoginComposableKt$NativeLoginComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeLoginViewModel f53636c;
    public final /* synthetic */ AccountManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f53637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f53638f;
    public final /* synthetic */ State g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Context f53639h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$4$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$4$1$1", f = "NativeLoginComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AccountManager f53640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function0 f53641c;
        public final /* synthetic */ CoroutineScope d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ State f53642e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f53643f;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$4$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$4$1$1$1", f = "NativeLoginComposable.kt", l = {EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
        final class C02681 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53644b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AccountManager f53645c;
            public final /* synthetic */ Context d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ State f53646e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02681(AccountManager accountManager, Context context, State state, Continuation continuation) {
                super(2, continuation);
                this.f53645c = accountManager;
                this.d = context;
                this.f53646e = state;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02681(this.f53645c, this.d, this.f53646e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02681) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53644b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    NativeLoginUiModel nativeLoginUiModel = ((NativeLoginViewState) this.f53646e.getF10755b()).f53692a;
                    nativeLoginUiModel.getClass();
                    AccountCredentials accountCredentials = new AccountCredentials(nativeLoginUiModel.f53689a, (String) ((SnapshotMutableStateImpl) nativeLoginUiModel.f53690b.f53493b).getF10755b());
                    this.f53644b = 1;
                    if (this.f53645c.a(this.d, accountCredentials, this) == coroutineSingletons) {
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
        public AnonymousClass1(AccountManager accountManager, Function0 function0, CoroutineScope coroutineScope, State state, Context context, Continuation continuation) {
            super(2, continuation);
            this.f53640b = accountManager;
            this.f53641c = function0;
            this.d = coroutineScope;
            this.f53642e = state;
            this.f53643f = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f53640b, this.f53641c, this.d, this.f53642e, this.f53643f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0032  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            Function0 function0 = this.f53641c;
            AccountManager accountManager = this.f53640b;
            if (accountManager != null) {
                State state = this.f53642e;
                if (((NativeLoginViewState) state.getF10755b()).d) {
                    function0.mo47invoke();
                } else {
                    BuildersKt.c(this.d, null, null, new C02681(accountManager, this.f53643f, state, null), 3).invokeOnCompletion(new y2(function0, 23));
                }
            } else {
                function0.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeLoginComposableKt$NativeLoginComposable$4$1(NativeLoginViewModel nativeLoginViewModel, AccountManager accountManager, Function0 function0, CoroutineScope coroutineScope, State state, Context context, Continuation continuation) {
        super(2, continuation);
        this.f53636c = nativeLoginViewModel;
        this.d = accountManager;
        this.f53637e = function0;
        this.f53638f = coroutineScope;
        this.g = state;
        this.f53639h = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeLoginComposableKt$NativeLoginComposable$4$1(this.f53636c, this.d, this.f53637e, this.f53638f, this.g, this.f53639h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeLoginComposableKt$NativeLoginComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53635b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow u = this.f53636c.getU();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53637e, this.f53638f, this.g, this.f53639h, null);
            this.f53635b = 1;
            if (FlowKt.g(u, anonymousClass1, this) == coroutineSingletons) {
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
