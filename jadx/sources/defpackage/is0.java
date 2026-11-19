package defpackage;

import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class is0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f71199c;
    public final /* synthetic */ CareServiceDetailUiModel d;

    public /* synthetic */ is0(Function1 function1, CareServiceDetailUiModel careServiceDetailUiModel, int i2) {
        this.f71198b = i2;
        this.f71199c = function1;
        this.d = careServiceDetailUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71198b;
        CareServiceDetailUiModel careServiceDetailUiModel = this.d;
        Function1 function1 = this.f71199c;
        switch (i2) {
            case 0:
                function1.invoke(careServiceDetailUiModel);
                break;
            default:
                String str = careServiceDetailUiModel.E;
                function1.invoke(str != null ? new CareServiceTransactionIdUiModel(str) : null);
                break;
        }
        return Unit.f71739a;
    }
}
