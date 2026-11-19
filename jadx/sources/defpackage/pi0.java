package defpackage;

import androidx.compose.material3.RadioButtonColors;
import androidx.compose.material3.RadioButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialAssetListKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pi0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78860b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78861c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78863f;

    public /* synthetic */ pi0(Modifier modifier, TutorialSectionDataUiModel.AssetListSectionUiModel assetListSectionUiModel, boolean z, boolean z2, int i2) {
        this.f78862e = modifier;
        this.f78863f = assetListSectionUiModel;
        this.f78861c = z;
        this.d = z2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78860b;
        Object obj3 = this.f78863f;
        Object obj4 = this.f78862e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                OrderListScreenKt.b((PurchasedOrderUiModel) obj4, this.f78861c, this.d, (Function2) obj3, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(49);
                RadioButtonKt.a(this.f78861c, (Modifier) obj4, this.d, (RadioButtonColors) obj3, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                TutorialAssetListKt.a((Modifier) obj4, (TutorialSectionDataUiModel.AssetListSectionUiModel) obj3, this.f78861c, this.d, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ pi0(PurchasedOrderUiModel purchasedOrderUiModel, boolean z, boolean z2, Function2 function2, int i2) {
        this.f78862e = purchasedOrderUiModel;
        this.f78861c = z;
        this.d = z2;
        this.f78863f = function2;
    }

    public /* synthetic */ pi0(boolean z, Modifier modifier, boolean z2, RadioButtonColors radioButtonColors, int i2) {
        this.f78861c = z;
        this.f78862e = modifier;
        this.d = z2;
        this.f78863f = radioButtonColors;
    }
}
