package defpackage;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o90 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LifecycleOwner f76732c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ o90(LifecycleOwner lifecycleOwner, MutableState mutableState, int i2) {
        this.f76731b = i2;
        this.f76732c = lifecycleOwner;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76731b;
        final MutableState mutableState = this.d;
        final LifecycleOwner lifecycleOwner = this.f76732c;
        DisposableEffectScope disposableEffectScope = (DisposableEffectScope) obj;
        switch (i2) {
            case 0:
                disposableEffectScope.getClass();
                final int i3 = 0;
                final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: p90
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                        int i4 = i3;
                        MutableState mutableState2 = mutableState;
                        switch (i4) {
                            case 0:
                                mutableState2.setValue(event);
                                break;
                            case 1:
                                mutableState2.setValue(event);
                                break;
                            default:
                                mutableState2.setValue(event);
                                break;
                        }
                    }
                };
                lifecycleOwner.getF13561b().a(lifecycleEventObserver);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.compose.components.LifecycleEventKt$rememberLifecycleEvent$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycleOwner.getF13561b().d(lifecycleEventObserver);
                    }
                };
            case 1:
                disposableEffectScope.getClass();
                final int i4 = 1;
                final LifecycleEventObserver lifecycleEventObserver2 = new LifecycleEventObserver() { // from class: p90
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                        int i5 = i4;
                        MutableState mutableState2 = mutableState;
                        switch (i5) {
                            case 0:
                                mutableState2.setValue(event);
                                break;
                            case 1:
                                mutableState2.setValue(event);
                                break;
                            default:
                                mutableState2.setValue(event);
                                break;
                        }
                    }
                };
                lifecycleOwner.getF13561b().a(lifecycleEventObserver2);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.livevideo.component.LiveVideoPlayerComponentKt$LiveVideoPlayerComponent$lambda$15$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycleOwner.getF13561b().d(lifecycleEventObserver2);
                    }
                };
            default:
                disposableEffectScope.getClass();
                final int i5 = 2;
                final LifecycleEventObserver lifecycleEventObserver3 = new LifecycleEventObserver() { // from class: p90
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                        int i6 = i5;
                        MutableState mutableState2 = mutableState;
                        switch (i6) {
                            case 0:
                                mutableState2.setValue(event);
                                break;
                            case 1:
                                mutableState2.setValue(event);
                                break;
                            default:
                                mutableState2.setValue(event);
                                break;
                        }
                    }
                };
                lifecycleOwner.getF13561b().a(lifecycleEventObserver3);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.video.components.VideoPlayerComponentKt$VideoPlayerComponent$lambda$15$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lifecycleOwner.getF13561b().d(lifecycleEventObserver3);
                    }
                };
        }
    }
}
