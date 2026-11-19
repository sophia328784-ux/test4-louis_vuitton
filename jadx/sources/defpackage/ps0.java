package defpackage;

import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ps0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServiceShortUiModel f78921c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ ps0(CareServiceShortUiModel careServiceShortUiModel, Function1 function1) {
        this.f78920b = 1;
        this.f78921c = careServiceShortUiModel;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78920b;
        CareServiceShortUiModel careServiceShortUiModel = this.f78921c;
        Function1 function1 = this.d;
        switch (i2) {
            case 0:
                function1.invoke(new CareServiceIdUiModel(careServiceShortUiModel.f64063b));
                break;
            case 1:
                String str = careServiceShortUiModel.f64069j;
                if (str != null) {
                    function1.invoke(str);
                }
                break;
            case 2:
                function1.invoke(new CareServiceIdUiModel(careServiceShortUiModel.f64063b));
                break;
            default:
                function1.invoke(new CareServiceIdUiModel(careServiceShortUiModel.f64063b));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ps0(Function1 function1, CareServiceShortUiModel careServiceShortUiModel, int i2) {
        this.f78920b = i2;
        this.d = function1;
        this.f78921c = careServiceShortUiModel;
    }
}
