package defpackage;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVMultilineTextFieldKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.presentation.compose.components.LVNotificationKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailView;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n60 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76453b;

    public /* synthetic */ n60(int i2) {
        this.f76453b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f76453b) {
            case 0:
                ((SheetValue) obj).getClass();
                return Boolean.TRUE;
            case 1:
                float f2 = LVMultilineTextFieldKt.f48615a;
                ((TextLayoutResult) obj).getClass();
                return Unit.f71739a;
            case 2:
                ((Boolean) obj).booleanValue();
                float f3 = LVNotificationKt.f50993a;
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.q;
                Unit unit = Unit.f71739a;
                semanticsPropertyReceiver.a(semanticsPropertyKey, unit);
                return unit;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVRadioButtonKt.f48494a;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, Role.f10291e);
                return Unit.f71739a;
            case 5:
                ((String) obj).getClass();
                return Unit.f71739a;
            case 6:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSearchBarKt.f48654a;
                ((TextLayoutResult) obj).getClass();
                return Unit.f71739a;
            case 7:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LVSearchBarKt.f48654a;
                ((String) obj).getClass();
                return Unit.f71739a;
            case 8:
                float fFloatValue = ((Float) obj).floatValue();
                float f4 = LVSwipeToRevealKt.f48255a;
                return Float.valueOf(fFloatValue * 0.3f);
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LVSwitchKt.f48506a;
                semanticsPropertyReceiver3.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver3, Role.d);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = LVTagButtonKt.f48511a;
                semanticsPropertyReceiver4.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver4, 0);
                return Unit.f71739a;
            case 11:
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                ((TextLayoutResult) obj).getClass();
                return Unit.f71739a;
            case 12:
                ((Integer) obj).getClass();
                return Boolean.TRUE;
            case 13:
                return AnimationSpecKt.c((int) (((Float) obj).floatValue() * 300.0f), 0, EasingKt.f3862a, 2);
            case 14:
                return AnimationSpecKt.c((int) (((Float) obj).floatValue() * 400.0f), 0, EasingKt.f3862a, 2);
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver5);
                return Unit.f71739a;
            case 16:
                ((Integer) obj).getClass();
                n50 n50Var = LazyGridIntervalContent.d;
                return null;
            case 17:
                return Unit.f71739a;
            case 18:
                List list = (List) obj;
                return new LazyGridState(((Number) list.get(0)).intValue(), ((Number) list.get(1)).intValue());
            case 19:
                ((Integer) obj).intValue();
                LazyGridMeasureResult lazyGridMeasureResult = LazyGridStateKt.f5373a;
                return EmptyList.f71768b;
            case 20:
                ((Integer) obj).getClass();
                LazyGridMeasureResult lazyGridMeasureResult2 = LazyGridStateKt.f5373a;
                return -1;
            case 21:
                ((Integer) obj).getClass();
                return null;
            case 22:
                return Unit.f71739a;
            case 23:
                List list2 = (List) obj;
                return new LazyListState(((Number) list2.get(0)).intValue(), ((Number) list2.get(1)).intValue());
            case 24:
                return Unit.f71739a;
            case 25:
                List list3 = (List) obj;
                return new LazyStaggeredGridState((int[]) list3.get(0), (int[]) list3.get(1), null);
            case 26:
                return Unit.f71739a;
            case 27:
                return Unit.f71739a;
            case 28:
                return Unit.f71739a;
            default:
                ((LightUpDetailView) obj).v();
                return Unit.f71739a;
        }
    }
}
