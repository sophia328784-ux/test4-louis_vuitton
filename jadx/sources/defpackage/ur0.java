package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ur0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairsViewState f80386c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ ur0(RepairsViewState repairsViewState, Function0 function0, int i2) {
        this.f80385b = i2;
        this.f80386c = repairsViewState;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        RepairStatusUiModel repairStatusUiModel;
        int i2 = this.f80385b;
        Function0 function0 = this.d;
        RepairsViewState repairsViewState = this.f80386c;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    CareServiceDetailUiModel careServiceDetailUiModel = repairsViewState.f64018h;
                    RepairConfirmAddressComposableKt.b(0, composer, function0, (careServiceDetailUiModel == null || (repairStatusUiModel = careServiceDetailUiModel.d) == null || !ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.PAYMENT_INITIATED})) ? false : true);
                } else {
                    composer.D();
                }
                break;
            default:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (repairsViewState.m.f64010b) {
                        RepairListScreenKt.b(0, composer, WindowInsetsPadding_androidKt.b(BackgroundKt.b(pq0.j(857172367, composer, "RepairListScreen$lambda$1"), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a)), function0);
                        composer.F();
                    } else {
                        composer.L(857478926);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
