package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f721c;
    public final /* synthetic */ BackHandlerCompat d;

    public /* synthetic */ b(BackHandlerCompat backHandlerCompat, boolean z, int i2) {
        this.f720b = i2;
        this.d = backHandlerCompat;
        this.f721c = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f720b;
        boolean z = this.f721c;
        BackHandlerCompat backHandlerCompat = this.d;
        switch (i2) {
            case 0:
                final ComposeBackHandler composeBackHandler = (ComposeBackHandler) backHandlerCompat;
                final LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj;
                composeBackHandler.f724a.f(z);
                composeBackHandler.f725b.i(z);
                return new LifecycleStopOrDisposeEffectResult(lifecycleStartStopEffectScope, composeBackHandler) { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final /* synthetic */ ComposeBackHandler f698a;

                    {
                        this.f698a = composeBackHandler;
                    }

                    @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
                    public final void a() {
                        ComposeBackHandler composeBackHandler2 = this.f698a;
                        composeBackHandler2.f724a.f(false);
                        composeBackHandler2.f725b.i(false);
                    }
                };
            default:
                final ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) backHandlerCompat;
                final LifecycleStartStopEffectScope lifecycleStartStopEffectScope2 = (LifecycleStartStopEffectScope) obj;
                composePredictiveBackHandler.f(z);
                return new LifecycleStopOrDisposeEffectResult(lifecycleStartStopEffectScope2, composePredictiveBackHandler) { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$lambda$3$0$$inlined$onStopOrDispose$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final /* synthetic */ ComposePredictiveBackHandler f715a;

                    {
                        this.f715a = composePredictiveBackHandler;
                    }

                    @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
                    public final void a() {
                        this.f715a.f(false);
                    }
                };
        }
    }
}
