package defpackage;

import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wk0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f80892c;
    public final /* synthetic */ String d;

    public /* synthetic */ wk0(int i2, String str, Function2 function2) {
        this.f80891b = i2;
        this.f80892c = function2;
        this.d = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80891b;
        String str = this.d;
        Function2 function2 = this.f80892c;
        switch (i2) {
            case 0:
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                plpProductUiModel.getClass();
                function2.invoke(plpProductUiModel, str);
                break;
            case 1:
                PlpProductUiModel plpProductUiModel2 = (PlpProductUiModel) obj;
                plpProductUiModel2.getClass();
                function2.invoke(plpProductUiModel2, str);
                break;
            case 2:
                PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
                pLPWishlistUpdateUiModel.getClass();
                function2.invoke(pLPWishlistUpdateUiModel, str);
                break;
            case 3:
                PlpProductUiModel plpProductUiModel3 = (PlpProductUiModel) obj;
                plpProductUiModel3.getClass();
                if (str == null) {
                    str = new String();
                }
                function2.invoke(plpProductUiModel3, str);
                break;
            default:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                function2.invoke(str, bool);
                break;
        }
        return Unit.f71739a;
    }
}
