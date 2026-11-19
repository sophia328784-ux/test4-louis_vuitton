package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.input.TextFieldValue;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.ManualConfirmType;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h4 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f69590c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ h4(Function2 function2, MutableState mutableState, int i2) {
        this.f69589b = i2;
        this.f69590c = function2;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69589b;
        MutableState mutableState = this.d;
        Function2 function2 = this.f69590c;
        switch (i2) {
            case 0:
                function2.invoke(((TextFieldValue) mutableState.getF10755b()).f10840a.f10420c, ManualConfirmType.ROW_CLICKED);
                break;
            case 1:
                function2.invoke((BookingUiModel) mutableState.getF10755b(), new ExperienceId(((BookingUiModel) mutableState.getF10755b()).f54615b));
                break;
            case 2:
                function2.invoke(new BookingId(((BookingUiModel) mutableState.getF10755b()).f54614a), new ExperienceId(((BookingUiModel) mutableState.getF10755b()).f54615b));
                break;
            default:
                function2.invoke(new BookingId(((BookingUiModel) mutableState.getF10755b()).f54614a), new ExperienceId(((BookingUiModel) mutableState.getF10755b()).f54615b));
                break;
        }
        return Unit.f71739a;
    }
}
