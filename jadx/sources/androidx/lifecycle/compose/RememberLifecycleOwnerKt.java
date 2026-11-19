package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-runtime-compose"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RememberLifecycleOwnerKt {
    public static final LifecycleOwner a(Lifecycle.State state, Composer composer) {
        final LifecycleOwner lifecycleOwner = (LifecycleOwner) composer.k(LocalLifecycleOwnerKt.f13562a);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(lifecycleOwner);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            objX = new ComposeLifecycleOwner();
            composer.q(objX);
        }
        final ComposeLifecycleOwner composeLifecycleOwner = (ComposeLifecycleOwner) objX;
        boolean zY = composer.y(composeLifecycleOwner) | composer.y(lifecycleOwner);
        Object objX2 = composer.x();
        if (zY || objX2 == obj) {
            objX2 = new Function1() { // from class: androidx.lifecycle.compose.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Lifecycle f13561b;
                    final ComposeLifecycleOwner composeLifecycleOwner2 = composeLifecycleOwner;
                    final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.compose.b
                        @Override // androidx.lifecycle.LifecycleEventObserver
                        public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                            ComposeLifecycleOwner composeLifecycleOwner3 = composeLifecycleOwner2;
                            composeLifecycleOwner3.getClass();
                            composeLifecycleOwner3.f13539c = event.a();
                            composeLifecycleOwner3.a();
                        }
                    };
                    final LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                    if (lifecycleOwner2 != null && (f13561b = lifecycleOwner2.getF13561b()) != null) {
                        f13561b.a(lifecycleEventObserver);
                    }
                    if (lifecycleOwner2 == null) {
                        Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                        composeLifecycleOwner2.getClass();
                        composeLifecycleOwner2.f13539c = event.a();
                        composeLifecycleOwner2.a();
                    }
                    return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.RememberLifecycleOwnerKt$rememberLifecycleOwner$lambda$1$0$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public final void dispose() {
                            Lifecycle f13561b2;
                            LifecycleOwner lifecycleOwner3 = lifecycleOwner2;
                            if (lifecycleOwner3 != null && (f13561b2 = lifecycleOwner3.getF13561b()) != null) {
                                f13561b2.d(lifecycleEventObserver);
                            }
                            Lifecycle.Event event2 = Lifecycle.Event.ON_DESTROY;
                            ComposeLifecycleOwner composeLifecycleOwner3 = composeLifecycleOwner2;
                            composeLifecycleOwner3.getClass();
                            composeLifecycleOwner3.f13539c = event2.a();
                            composeLifecycleOwner3.a();
                        }
                    };
                }
            };
            composer.q(objX2);
        }
        EffectsKt.b(composeLifecycleOwner, lifecycleOwner, (Function1) objX2, composer);
        boolean zY2 = composer.y(composeLifecycleOwner) | composer.d(state.ordinal());
        Object objX3 = composer.x();
        if (zY2 || objX3 == obj) {
            objX3 = new RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(composeLifecycleOwner, state, null);
            composer.q(objX3);
        }
        EffectsKt.g(composeLifecycleOwner, state, (Function2) objX3, composer);
        return composeLifecycleOwner;
    }
}
