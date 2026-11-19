package defpackage;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ok0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76810c;
    public final /* synthetic */ PlpProductUiModel d;

    public /* synthetic */ ok0(Function1 function1, PlpProductUiModel plpProductUiModel, int i2) {
        this.f76809b = i2;
        this.f76810c = function1;
        this.d = plpProductUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76809b;
        PlpProductUiModel plpProductUiModel = this.d;
        Function1 function1 = this.f76810c;
        switch (i2) {
            case 0:
                function1.invoke(plpProductUiModel);
                break;
            case 1:
                function1.invoke(plpProductUiModel);
                break;
            case 2:
                function1.invoke(plpProductUiModel);
                break;
            case 3:
                function1.invoke(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a));
                break;
            case 4:
                function1.invoke(plpProductUiModel.f62934a.getF10755b());
                break;
            case 5:
                function1.invoke(plpProductUiModel);
                break;
            default:
                function1.invoke(plpProductUiModel);
                break;
        }
        return Unit.f71739a;
    }
}
