package defpackage;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class up0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlpProductUiModel.SkuDataUiModel f80379c;

    public /* synthetic */ up0(PlpProductUiModel.SkuDataUiModel skuDataUiModel, int i2) {
        this.f80378b = i2;
        this.f80379c = skuDataUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int size;
        int i2 = this.f80378b;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel = this.f80379c;
        switch (i2) {
            case 0:
                size = skuDataUiModel.f62947f.size();
                break;
            default:
                size = skuDataUiModel.f62947f.size();
                break;
        }
        return Integer.valueOf(size);
    }
}
