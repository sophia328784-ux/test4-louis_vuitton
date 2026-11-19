package defpackage;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class if0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f69959c;
    public final /* synthetic */ LifecycleEventObserver d;

    public /* synthetic */ if0(MutableState mutableState, LifecycleEventObserver lifecycleEventObserver, int i2) {
        this.f69958b = i2;
        this.f69959c = mutableState;
        this.d = lifecycleEventObserver;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69958b;
        final LifecycleEventObserver lifecycleEventObserver = this.d;
        MutableState mutableState = this.f69959c;
        DisposableEffectScope disposableEffectScope = (DisposableEffectScope) obj;
        switch (i2) {
            case 0:
                disposableEffectScope.getClass();
                final Lifecycle f13561b = ((LifecycleOwner) mutableState.getF10755b()).getF13561b();
                f13561b.a(lifecycleEventObserver);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt$NativeCartNavHost$lambda$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        f13561b.d(lifecycleEventObserver);
                    }
                };
            default:
                disposableEffectScope.getClass();
                final Lifecycle f13561b2 = ((LifecycleOwner) mutableState.getF10755b()).getF13561b();
                f13561b2.a(lifecycleEventObserver);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt$HandleStoreModeAffiliation$lambda$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        f13561b2.d(lifecycleEventObserver);
                    }
                };
        }
    }
}
