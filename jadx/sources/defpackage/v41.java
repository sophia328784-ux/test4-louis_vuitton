package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.DisposableEffectResult;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v41 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Transition f80496c;

    public /* synthetic */ v41(Transition transition, int i2) {
        this.f80495b = i2;
        this.f80496c = transition;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80495b;
        final Transition transition = this.f80496c;
        switch (i2) {
            case 0:
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Transition transition2 = transition;
                        transition2.k();
                        transition2.f3988a.e();
                    }
                };
            default:
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$rememberTransition$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Transition transition2 = transition;
                        transition2.k();
                        transition2.f3988a.e();
                    }
                };
        }
    }
}
