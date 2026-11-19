package androidx.compose.animation.core;

import androidx.compose.runtime.DisposableEffectResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4091b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f4092c;
    public final /* synthetic */ Object d;

    public /* synthetic */ a(Thread thread, CoroutineScope coroutineScope) {
        this.d = thread;
        this.f4092c = coroutineScope;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f4091b) {
            case 0:
                Transition transition = (Transition) this.d;
                BuildersKt.c(this.f4092c, null, CoroutineStart.UNDISPATCHED, new Transition$animateTo$1$1$1(transition, null), 1);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.Transition$animateTo$lambda$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                    }
                };
            default:
                Function0 function0 = (Function0) obj;
                if (this.d == Thread.currentThread()) {
                    function0.mo47invoke();
                } else {
                    BuildersKt.c(this.f4092c, null, null, new TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1(function0, null), 3);
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ a(CoroutineScope coroutineScope, Transition transition) {
        this.f4092c = coroutineScope;
        this.d = transition;
    }
}
