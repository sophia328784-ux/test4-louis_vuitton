package defpackage;

import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import com.vuitton.foundation.model.domain.model.booking.PreBookId;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mg implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f76270c;
    public final /* synthetic */ PreBookUiModel d;

    public /* synthetic */ mg(Function2 function2, PreBookUiModel preBookUiModel, int i2) {
        this.f76269b = i2;
        this.f76270c = function2;
        this.d = preBookUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76269b;
        PreBookUiModel preBookUiModel = this.d;
        Function2 function2 = this.f76270c;
        switch (i2) {
            case 0:
                function2.invoke(new PreBookId(preBookUiModel.f54820a), new ExperienceId(preBookUiModel.f54821b));
                break;
            default:
                function2.invoke(new ExperienceId(preBookUiModel.f54821b), new PreBookId(preBookUiModel.f54820a));
                break;
        }
        return Unit.f71739a;
    }
}
