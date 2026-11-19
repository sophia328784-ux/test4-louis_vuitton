package defpackage;

import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreen;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wz implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f80973c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ wz(Function0 function0, Function1 function1, int i2) {
        this.f80972b = i2;
        this.f80973c = function0;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80972b;
        DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentClickedEvent repairDetailsCancelAppointmentClickedEvent = DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentClickedEvent.f57443a;
        Function0 function0 = this.f80973c;
        Function1 function1 = this.d;
        switch (i2) {
            case 0:
                function1.invoke(ForgetPasswordTrackingUiModel.OnSendCodeAgainEvent.f53579a);
                function0.mo47invoke();
                break;
            case 1:
                function0.mo47invoke();
                function1.invoke(NativeRegisterTrackingUiModel.OnResendCodeActivateAccountEvent.f54027a);
                break;
            case 2:
                function0.mo47invoke();
                function1.invoke(OsaListBottomSheetScreen.BottomSheetPrepare.f60884a);
                break;
            case 3:
                function0.mo47invoke();
                function1.invoke(OsaLocationFormBottomSheetScreen.OsaFormCalendarBottomSheet.f60803a);
                break;
            case 4:
                function1.invoke(Boolean.TRUE);
                function0.mo47invoke();
                break;
            case 5:
                function1.invoke(Boolean.TRUE);
                function0.mo47invoke();
                break;
            case 6:
                function1.invoke(Boolean.FALSE);
                function0.mo47invoke();
                break;
            case 7:
                function0.mo47invoke();
                function1.invoke(Boolean.FALSE);
                break;
            case 8:
                function1.invoke(PersonalSelectionsInStoreTrackingUiModel.ShareEvent.f62554a);
                function0.mo47invoke();
                break;
            case 9:
                function1.invoke(DistantRepairTrackingUiModel.RepairDetailsRescheduleAppointmentClickedEvent.f57449a);
                function0.mo47invoke();
                break;
            case 10:
                function1.invoke(repairDetailsCancelAppointmentClickedEvent);
                function0.mo47invoke();
                break;
            default:
                function1.invoke(repairDetailsCancelAppointmentClickedEvent);
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ wz(Function1 function1, Function0 function0, int i2) {
        this.f80972b = i2;
        this.d = function1;
        this.f80973c = function0;
    }
}
