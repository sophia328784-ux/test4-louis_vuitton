package com.vuitton.android.presentation.screenshot.observer;

import android.app.Activity;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.presentation.screenshot.ScreenshotViewModel;
import defpackage.ct0;
import defpackage.md;
import defpackage.xn0;
import kotlin.Lazy;
import kotlin.LazyKt;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/activity/ComponentActivity;", ActionFloatingViewItem.f37018a, "Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;", "viewModel", "Lkotlin/Function0;", "", "onScreenshotTaken", "<init>", "(Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScreenshotObserver implements DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComponentActivity f65793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScreenshotViewModel f65794c;
    public final Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f65795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f65796f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screenshot.observer.ScreenshotObserver$onResume$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screenshot.observer.ScreenshotObserver$onResume$2", f = "ScreenshotObserver.kt", l = {61}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65797b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screenshot.observer.ScreenshotObserver$onResume$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "it"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screenshot.observer.ScreenshotObserver$onResume$2$1", f = "ScreenshotObserver.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ScreenshotObserver f65799b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(ScreenshotObserver screenshotObserver, Continuation continuation) {
                super(2, continuation);
                this.f65799b = screenshotObserver;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f65799b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((Unit) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f65799b.d.mo47invoke();
                return Unit.f71739a;
            }
        }

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ScreenshotObserver.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65797b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ScreenshotObserver screenshotObserver = ScreenshotObserver.this;
                SharedFlow sharedFlowD3 = screenshotObserver.f65794c.d3(screenshotObserver.f65795e);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(screenshotObserver, null);
                this.f65797b = 1;
                if (FlowKt.g(sharedFlowD3, anonymousClass1, this) == coroutineSingletons) {
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

    public ScreenshotObserver(ComponentActivity componentActivity, ScreenshotViewModel screenshotViewModel, Function0<Unit> function0) {
        componentActivity.getClass();
        screenshotViewModel.getClass();
        function0.getClass();
        this.f65793b = componentActivity;
        this.f65794c = screenshotViewModel;
        this.d = function0;
        String localClassName = componentActivity.getLocalClassName();
        localClassName.getClass();
        this.f65795e = localClassName;
        this.f65796f = LazyKt.b(new xn0(this, 24));
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
        try {
            if (Build.VERSION.SDK_INT < 34) {
                this.f65794c.R7(this.f65795e);
                return;
            }
            Activity.ScreenCaptureCallback screenCaptureCallbackA = ct0.a(this.f65796f.getF71699b());
            if (screenCaptureCallbackA != null) {
                this.f65793b.unregisterScreenCaptureCallback(screenCaptureCallbackA);
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        if (Build.VERSION.SDK_INT < 34) {
            BuildersKt.c(LifecycleOwnerKt.a(lifecycleOwner), null, null, new AnonymousClass2(null), 3);
            return;
        }
        Activity.ScreenCaptureCallback screenCaptureCallbackA = ct0.a(this.f65796f.getF71699b());
        if (screenCaptureCallbackA != null) {
            ComponentActivity componentActivity = this.f65793b;
            componentActivity.registerScreenCaptureCallback(componentActivity.getMainExecutor(), screenCaptureCallbackA);
        }
    }
}
