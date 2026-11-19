package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.runtime.MutableState;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$6$1", f = "NativeCartComposable.kt", l = {463}, m = "invokeSuspend", v = 2)
final class NativeCartComposableKt$NativeCartComposable$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModel f55023c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f55024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CartPreviousScreen f55025f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$6$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$6$1$1", f = "NativeCartComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f55026b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f55027c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ CartPreviousScreen f55028e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MutableState f55029f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ManagedActivityResultLauncher managedActivityResultLauncher, Context context, CartPreviousScreen cartPreviousScreen, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f55027c = managedActivityResultLauncher;
            this.d = context;
            this.f55028e = cartPreviousScreen;
            this.f55029f = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f55027c, this.d, this.f55028e, this.f55029f, continuation);
            anonymousClass1.f55026b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((String) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str = (String) this.f55026b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            WebViewActivity.Companion companion = WebViewActivity.v;
            MutableState mutableState = this.f55029f;
            CartUiModel cartUiModel = ((NativeCartViewState) mutableState.getF10755b()).f55204a;
            String str2 = cartUiModel != null ? cartUiModel.f55181a : null;
            if (str2 == null) {
                str2 = "";
            }
            this.f55027c.a(WebViewActivity.Companion.a(companion, this.d, str, false, false, null, this.f55028e, str2, false, ((NativeCartViewState) mutableState.getF10755b()).n.f51154a, null, 1688));
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartComposableKt$NativeCartComposable$6$1(NativeCartViewModel nativeCartViewModel, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, CartPreviousScreen cartPreviousScreen, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f55023c = nativeCartViewModel;
        this.d = managedActivityResultLauncher;
        this.f55024e = context;
        this.f55025f = cartPreviousScreen;
        this.g = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartComposableKt$NativeCartComposable$6$1(this.f55023c, this.d, this.f55024e, this.f55025f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartComposableKt$NativeCartComposable$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55022b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow f2 = this.f55023c.getF();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f55024e, this.f55025f, this.g, null);
            f2.getClass();
            this.f55022b = 1;
            if (FlowKt.g(f2, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }
}
