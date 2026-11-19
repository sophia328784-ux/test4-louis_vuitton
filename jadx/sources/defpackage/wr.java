package defpackage;

import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.account.lvpass.components.TopBarQRCodeKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wr implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80928b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f80929c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80931f;

    public /* synthetic */ wr(DatePickerDefaults datePickerDefaults, int i2, Modifier modifier, long j2, int i3) {
        this.f80931f = datePickerDefaults;
        this.f80930e = i2;
        this.f80929c = modifier;
        this.d = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80928b;
        Object obj3 = this.f80931f;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                ((DatePickerDefaults) obj3).b(this.f80930e, RecomposeScopeImplKt.a(3121), this.d, composer, this.f80929c);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                ProductCellFullKt.f(this.f80929c, (PlpProductUiModel.PriceInfoUiModel) obj3, this.d, (Composer) obj, iA, this.f80930e);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                TopBarQRCodeKt.a(this.f80929c, this.d, (Function0) obj3, (Composer) obj, iA2, this.f80930e);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ wr(Modifier modifier, long j2, Function0 function0, int i2, int i3) {
        this.f80929c = modifier;
        this.d = j2;
        this.f80931f = function0;
        this.f80930e = i3;
    }

    public /* synthetic */ wr(Modifier modifier, PlpProductUiModel.PriceInfoUiModel priceInfoUiModel, long j2, int i2, int i3) {
        this.f80929c = modifier;
        this.f80931f = priceInfoUiModel;
        this.d = j2;
        this.f80930e = i3;
    }
}
