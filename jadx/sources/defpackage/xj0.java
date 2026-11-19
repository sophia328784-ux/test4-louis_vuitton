package defpackage;

import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xj0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModel f81145c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ xj0(OsaLocationFormViewModel osaLocationFormViewModel, Function1 function1, int i2) {
        this.f81144b = i2;
        this.f81145c = osaLocationFormViewModel;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81144b;
        Function1 function1 = this.d;
        OsaLocationFormViewModel osaLocationFormViewModel = this.f81145c;
        switch (i2) {
            case 0:
                osaLocationFormViewModel.o(new OsaTrackingUiModel.BookAppointmentContactInfoLoginClickedEvent(((OsaLocationFormViewState) osaLocationFormViewModel.a().getValue()).r));
                function1.invoke(Boolean.TRUE);
                break;
            default:
                osaLocationFormViewModel.I0(new AuthenticationTrackingUiModel.LoginInClickEvent(true));
                function1.invoke(Boolean.FALSE);
                break;
        }
        return Unit.f71739a;
    }
}
