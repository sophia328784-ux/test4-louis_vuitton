package defpackage;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rk0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewState f79548c;

    public /* synthetic */ rk0(QuickAccessFiltersViewState quickAccessFiltersViewState, int i2) {
        this.f79547b = i2;
        this.f79548c = quickAccessFiltersViewState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79547b;
        QuickAccessFiltersViewState quickAccessFiltersViewState = this.f79548c;
        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
        switch (i2) {
            case 0:
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver, (quickAccessFiltersViewState != null ? quickAccessFiltersViewState.f58169a : null) != FiltersButtonState.OpenCategoriesAnimation);
                break;
            case 1:
                semanticsPropertyReceiver.getClass();
                if (quickAccessFiltersViewState.f58169a != FiltersButtonState.OpenCategoriesAnimation) {
                    SemanticsPropertiesKt.w(semanticsPropertyReceiver, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                break;
            case 2:
                semanticsPropertyReceiver.getClass();
                if (quickAccessFiltersViewState.f58169a != FiltersButtonState.OpenCategoriesAnimation) {
                    SemanticsPropertiesKt.w(semanticsPropertyReceiver, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                break;
            default:
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver, quickAccessFiltersViewState.f58169a != FiltersButtonState.OpenCategoriesAnimation);
                break;
        }
        return Unit.f71739a;
    }
}
