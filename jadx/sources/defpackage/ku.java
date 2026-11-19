package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ku implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f75871c;
    public final /* synthetic */ DatePickerViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f75872e;

    public /* synthetic */ ku(Function1 function1, DatePickerViewModel datePickerViewModel, MutableState mutableState, int i2) {
        this.f75870b = i2;
        this.f75871c = function1;
        this.d = datePickerViewModel;
        this.f75872e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f75870b;
        MutableState mutableState = this.f75872e;
        DatePickerViewModel datePickerViewModel = this.d;
        Function1 function1 = this.f75871c;
        switch (i2) {
            case 0:
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetCalendar.f57243a);
                datePickerViewModel.a5(AvailabilitiesCaller.DISTANT_REPAIRS, ((DistantRepairFormViewState) mutableState.getF10755b()).f57386j.f64006f, ((DistantRepairFormViewState) mutableState.getF10755b()).f57381c.f57401a);
                break;
            default:
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetCalendar.f57243a);
                datePickerViewModel.a5(AvailabilitiesCaller.DISTANT_REPAIRS, ((DistantRepairFormViewState) mutableState.getF10755b()).f57386j.f64006f, ((DistantRepairFormViewState) mutableState.getF10755b()).f57381c.f57401a);
                break;
        }
        return Unit.f71739a;
    }
}
