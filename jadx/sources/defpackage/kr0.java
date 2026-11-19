package defpackage;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.TrackingClickType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kr0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f75861c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ThemeItemUiModel f75862e;

    public /* synthetic */ kr0(HapticFeedback hapticFeedback, Function2 function2, ThemeItemUiModel themeItemUiModel, int i2) {
        this.f75860b = i2;
        this.f75861c = hapticFeedback;
        this.d = function2;
        this.f75862e = themeItemUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f75860b;
        ThemeItemUiModel themeItemUiModel = this.f75862e;
        Function2 function2 = this.d;
        HapticFeedback hapticFeedback = this.f75861c;
        switch (i2) {
            case 0:
                HapticFeedbackType.f9193b.getClass();
                int i3 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback.a(0);
                function2.invoke(new SkuIdUiModel(themeItemUiModel.f55432a.f62987e), TrackingClickType.SIMPLE_CLICK);
                break;
            default:
                float f2 = StaggeredGridItemKt.f55396a;
                HapticFeedbackType.f9193b.getClass();
                int i4 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback.a(0);
                function2.invoke(new SkuIdUiModel(themeItemUiModel.f55432a.f62987e), TrackingClickType.SIMPLE_CLICK);
                break;
        }
        return Unit.f71739a;
    }
}
