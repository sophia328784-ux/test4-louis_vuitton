package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y2 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f81259c;

    public /* synthetic */ y2(Function0 function0, int i2) {
        this.f81258b = i2;
        this.f81259c = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81258b;
        final Function0 function0 = this.f81259c;
        switch (i2) {
            case 0:
                ((KeyboardActionScope) obj).getClass();
                function0.mo47invoke();
                return Unit.f71739a;
            case 1:
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                if (focusState.a()) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 2:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.f6561a;
                ((GraphicsLayerScope) obj).d(((Number) function0.mo47invoke()).floatValue());
                return Unit.f71739a;
            case 3:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AppBarKt.f6561a;
                ((GraphicsLayerScope) obj).d(((Number) function0.mo47invoke()).floatValue());
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new h1(function0, 5));
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f2 = BeautyDualColorComparatorKt.f62002a;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                SemanticsPropertiesKt.e(semanticsPropertyReceiver2, null, new h1(function0, 13));
                return Unit.f71739a;
            case 6:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 7:
                ((Long) obj).longValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 8:
                float f3 = DragGestureDetectorKt.f4487a;
                function0.mo47invoke();
                return Unit.f71739a;
            case 9:
                ((Long) obj).longValue();
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 10:
                ((KeyboardActionScope) obj).getClass();
                function0.mo47invoke();
                return Unit.f71739a;
            case 11:
                ((KeyboardActionScope) obj).getClass();
                function0.mo47invoke();
                return Unit.f71739a;
            case 12:
                ((KeyboardActionScope) obj).getClass();
                function0.mo47invoke();
                return Unit.f71739a;
            case 13:
                ((KeyboardActionScope) obj).getClass();
                function0.mo47invoke();
                return Unit.f71739a;
            case 14:
                ((Integer) obj).intValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                if (function0 != null) {
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver3, 0);
                }
                return Unit.f71739a;
            case 16:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 17:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 18:
                ((Boolean) obj).booleanValue();
                Lv3dViewerUiModel lv3dViewerUiModel = Lv3dViewerComposableKt.f58587a;
                function0.mo47invoke();
                return Unit.f71739a;
            case 19:
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.main.components.MainNavBarKt$NavBarIconAnimation$lambda$5$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        function0.mo47invoke();
                    }
                };
            case 20:
                float f4 = ModalBottomSheetKt.f7058a;
                function0.mo47invoke();
                return Unit.f71739a;
            case 21:
                function0.mo47invoke();
                return Unit.f71739a;
            case 22:
                InspectorInfo inspectorInfo = (InspectorInfo) obj;
                inspectorInfo.getClass();
                inspectorInfo.f10104a = function0;
                return Unit.f71739a;
            case 23:
                function0.mo47invoke();
                return Unit.f71739a;
            case 24:
                ((KeyboardActionScope) obj).getClass();
                function0.mo47invoke();
                return Unit.f71739a;
            case 25:
                function0.mo47invoke();
                return Unit.f71739a;
            case 26:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
            case 27:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                int i3 = activityResult.f731b;
                if (i3 == 1628 || i3 == 1629) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 28:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
            default:
                ((Boolean) obj).booleanValue();
                function0.mo47invoke();
                return Unit.f71739a;
        }
    }
}
