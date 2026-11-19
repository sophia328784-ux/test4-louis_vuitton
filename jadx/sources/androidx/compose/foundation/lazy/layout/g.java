package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SaveableStateRegistry f5590c;
    public final /* synthetic */ Object d;

    public /* synthetic */ g(SaveableStateRegistry saveableStateRegistry, Object obj, int i2) {
        this.f5589b = i2;
        this.f5590c = saveableStateRegistry;
        this.d = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f5589b;
        final Object obj2 = this.d;
        SaveableStateRegistry saveableStateRegistry = this.f5590c;
        switch (i2) {
            case 0:
                final LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) saveableStateRegistry;
                lazySaveableStateHolder.d.j(obj2);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$SaveableStateProvider$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lazySaveableStateHolder.d.l(obj2);
                    }
                };
            default:
                return new LazySaveableStateHolder(saveableStateRegistry, (Map) obj, (SaveableStateHolder) obj2);
        }
    }
}
