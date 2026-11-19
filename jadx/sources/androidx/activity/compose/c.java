package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.runtime.DisposableEffectResult;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BackHandlerDispatcherCompat f723c;
    public final /* synthetic */ BackHandlerCompat d;

    public /* synthetic */ c(BackHandlerDispatcherCompat backHandlerDispatcherCompat, BackHandlerCompat backHandlerCompat, int i2) {
        this.f722b = i2;
        this.f723c = backHandlerDispatcherCompat;
        this.d = backHandlerCompat;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f722b;
        BackHandlerCompat backHandlerCompat = this.d;
        final BackHandlerDispatcherCompat backHandlerDispatcherCompat = this.f723c;
        switch (i2) {
            case 0:
                final ComposeBackHandler composeBackHandler = (ComposeBackHandler) backHandlerCompat;
                backHandlerDispatcherCompat.a(composeBackHandler);
                return new DisposableEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() throws Exception {
                        backHandlerDispatcherCompat.b(composeBackHandler);
                    }
                };
            default:
                final ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) backHandlerCompat;
                backHandlerDispatcherCompat.a(composePredictiveBackHandler);
                return new DisposableEffectResult() { // from class: androidx.activity.compose.PredictiveBackHandlerKt$PredictiveBackHandler$lambda$4$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() throws Exception {
                        backHandlerDispatcherCompat.b(composePredictiveBackHandler);
                    }
                };
        }
    }
}
