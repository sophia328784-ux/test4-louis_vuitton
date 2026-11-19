package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j5 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Density f71301c;

    public /* synthetic */ j5(Density density, int i2) {
        this.f71300b = i2;
        this.f71301c = density;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        float fU1;
        int i2 = this.f71300b;
        Density density = this.f71301c;
        switch (i2) {
            case 0:
                p pVar = AnchoredDraggableKt.f4345a;
                Dp.Companion companion = Dp.f11004c;
                fU1 = density.u1(125.0f);
                break;
            case 1:
                SheetState.Companion companion2 = SheetState.f7207h;
                fU1 = density.u1(BottomSheetDefaults.d);
                break;
            case 2:
                SheetState.Companion companion3 = SheetState.f7207h;
                fU1 = density.u1(BottomSheetDefaults.f6578e);
                break;
            default:
                SwipeToDismissBoxState.Companion companion4 = SwipeToDismissBoxState.f7345c;
                fU1 = density.u1(SwipeToDismissBoxKt.f7342a);
                break;
        }
        return Float.valueOf(fU1);
    }
}
