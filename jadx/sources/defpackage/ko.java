package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightBottomStepperKt;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ko implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f71691c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ ko(int i2, MutableState mutableState, int i3) {
        this.f71690b = i3;
        this.f71691c = i2;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71690b;
        MutableState mutableState = this.d;
        int i3 = this.f71691c;
        switch (i2) {
            case 0:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() < i3) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() + 1));
                }
                break;
            case 1:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt2 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() < i3) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() + 1));
                }
                break;
            case 2:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt3 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() < i3) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() + 1));
                }
                break;
            case 3:
                ((Integer) obj).getClass();
                ComposableSingletons$SpotlightBottomStepperKt composableSingletons$SpotlightBottomStepperKt4 = ComposableSingletons$SpotlightBottomStepperKt.f64575a;
                if (((Number) mutableState.getF10755b()).intValue() < i3) {
                    mutableState.setValue(Integer.valueOf(((Number) mutableState.getF10755b()).intValue() + 1));
                }
                break;
            case 4:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                mutableState.setValue(MapsKt.l((Map) mutableState.getF10755b(), new Pair(Integer.valueOf(i3), Integer.valueOf((int) (((IntSize) obj).f11021a >> 32)))));
                break;
            default:
                Integer num = (Integer) obj;
                num.getClass();
                mutableState.setValue(new Pair(num, Integer.valueOf(i3)));
                break;
        }
        return Unit.f71739a;
    }
}
