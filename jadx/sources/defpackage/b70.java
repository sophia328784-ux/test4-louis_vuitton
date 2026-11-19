package defpackage;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b70 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f20778c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ b70(boolean z, Function0 function0, int i2) {
        this.f20777b = i2;
        this.f20778c = z;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f20777b;
        final Function0 function0 = this.d;
        final boolean z = this.f20778c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVPushCardKt.f48653a;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                if (z) {
                    SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new py(function0, 18));
                } else {
                    SemanticsPropertiesKt.a(semanticsPropertyReceiver);
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj).intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSegmentedControlKt.f48661b;
                if (z) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 2:
                float f2 = LVSwipeToRevealKt.f48255a;
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.designkit.components.components.LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        if (z) {
                            function0.mo47invoke();
                        }
                    }
                };
            default:
                ((Long) obj).longValue();
                float f3 = StaggeredGridItemKt.f55396a;
                if (!z) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
        }
    }
}
