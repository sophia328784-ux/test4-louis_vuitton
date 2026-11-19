package defpackage;

import androidx.compose.material3.ExposedDropdownMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.TermsAndConditionsComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.options.settings.components.ProfileConsentCardKt;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpLoadingScreenKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBottomSheetLayoutKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeExpiredComposableKt;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pu implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f78926c;
    public final /* synthetic */ int d;

    public /* synthetic */ pu(int i2, int i3, Function0 function0) {
        this.f78925b = i3;
        this.f78926c = function0;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (this.f78925b) {
            case 0:
                num.getClass();
                DistantRepairFormBottomSheetScreenKt.e(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 1:
                num.getClass();
                ExposedDropdownMenu_androidKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 2:
                num.intValue();
                MyInformationBottomSheetScreenKt.b(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 3:
                num.intValue();
                PdpLoadingScreenKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 4:
                num.intValue();
                ProfileConsentCardKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 5:
                num.intValue();
                RepairDetailBottomSheetLayoutKt.b(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 6:
                num.intValue();
                ScreenshotListenerKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 7:
                num.intValue();
                ScreenshotListenerKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 8:
                num.getClass();
                SettingsComposableKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            case 9:
                num.intValue();
                StoreModeExpiredComposableKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
            default:
                num.getClass();
                TermsAndConditionsComposableKt.a(this.f78926c, composer, RecomposeScopeImplKt.a(this.d | 1));
                break;
        }
        return Unit.f71739a;
    }
}
