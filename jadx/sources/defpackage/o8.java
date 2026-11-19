package defpackage;

import android.graphics.PathMeasure;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.presentation.compose.components.PreferenceSwitchKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o8 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76720c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ o8(MutableState mutableState, Function1 function1, int i2) {
        this.f76719b = i2;
        this.d = mutableState;
        this.f76720c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Object obj;
        int i2 = this.f76719b;
        Function1 function1 = this.f76720c;
        MutableState mutableState = this.d;
        switch (i2) {
            case 0:
                AddressUiModel addressUiModel = ((AssessmentBffViewState) mutableState.getF10755b()).f57348f;
                obj = addressUiModel != null ? addressUiModel.f52673b : null;
                function1.invoke(obj != null ? obj : "");
                return Unit.f71739a;
            case 1:
                AddressUiModel addressUiModel2 = ((AssessmentViewState) mutableState.getF10755b()).g;
                obj = addressUiModel2 != null ? addressUiModel2.f52673b : null;
                function1.invoke(obj != null ? obj : "");
                return Unit.f71739a;
            case 2:
                function1.invoke(Boolean.valueOf(((BeautyVtoViewState) mutableState.getF10755b()).l));
                return Unit.f71739a;
            case 3:
                function1.invoke((BookingUiModel) mutableState.getF10755b());
                return Unit.f71739a;
            case 4:
                function1.invoke((List) mutableState.getF10755b());
                return Unit.f71739a;
            case 5:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.getClass();
                function1.invoke(bool);
                return Unit.f71739a;
            case 6:
                float f2 = DistantRepairBottomSheetDatePickerKt.f57325a;
                TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) mutableState.getF10755b();
                if (timeSlotUiModel != null) {
                    function1.invoke(timeSlotUiModel);
                }
                return Unit.f71739a;
            case 7:
                function1.invoke((IconLauncherType) mutableState.getF10755b());
                return Unit.f71739a;
            case 8:
                CartUiModel cartUiModel = ((NativeCartViewState) mutableState.getF10755b()).f55204a;
                function1.invoke(cartUiModel != null ? cartUiModel.f55184e : null);
                return Unit.f71739a;
            case 9:
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                function1.invoke((IconLauncherType) mutableState.getF10755b());
                return Unit.f71739a;
            case 10:
                function1.invoke((String) mutableState.getF10755b());
                return Unit.f71739a;
            case 11:
                function1.invoke((String) mutableState.getF10755b());
                return Unit.f71739a;
            case 12:
                function1.invoke((String) mutableState.getF10755b());
                return Unit.f71739a;
            default:
                PreferenceSwitchKt.b(function1, mutableState, (LVSwitchLegalState) mutableState.getF10755b());
                return Boolean.TRUE;
        }
    }

    public /* synthetic */ o8(Function1 function1, MutableState mutableState, int i2) {
        this.f76719b = i2;
        this.f76720c = function1;
        this.d = mutableState;
    }
}
