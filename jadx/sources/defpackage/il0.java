package defpackage;

import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class il0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f70006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductFilterViewModel f70007c;

    public /* synthetic */ il0(ProductFilterViewModel productFilterViewModel, int i2) {
        this.f70006b = i2;
        this.f70007c = productFilterViewModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f70006b;
        ProductFilterViewModel productFilterViewModel = this.f70007c;
        String str = (String) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        switch (i2) {
            case 0:
                productFilterViewModel.Bc(str, zBooleanValue, false);
                break;
            default:
                productFilterViewModel.Bc(str, zBooleanValue, true);
                break;
        }
        return Unit.f71739a;
    }
}
