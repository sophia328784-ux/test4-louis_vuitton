package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.DisposableEffectResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsNestedScrollConnection f5157c;

    public /* synthetic */ f(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, int i2) {
        this.f5156b = i2;
        this.f5157c = windowInsetsNestedScrollConnection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f5156b;
        final WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.f5157c;
        switch (i2) {
            case 0:
                float f2 = WindowInsetsConnection_androidKt.f5070a;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.layout.WindowInsetsConnection_androidKt$rememberWindowInsetsConnection_VRgvIgI$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        windowInsetsNestedScrollConnection.c();
                    }
                };
            default:
                WindowInsetsNestedScrollConnection.a(windowInsetsNestedScrollConnection, ((Number) ((Animatable) obj).d()).floatValue());
                return Unit.f71739a;
        }
    }
}
