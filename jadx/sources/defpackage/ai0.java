package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpBffKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ai0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f524c;

    public /* synthetic */ ai0(List list, int i2, int i3) {
        this.f523b = i3;
        this.f524c = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f523b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                OrderDetailScreenKt.a(RecomposeScopeImplKt.a(1), composer, this.f524c);
                break;
            case 1:
                ProductCellFullKt.b(RecomposeScopeImplKt.a(1), composer, this.f524c);
                break;
            case 2:
                RepairDetailFollowUpBffKt.d(RecomposeScopeImplKt.a(1), composer, this.f524c);
                break;
            default:
                RepairDetailFollowUpKt.d(RecomposeScopeImplKt.a(1), composer, this.f524c);
                break;
        }
        return Unit.f71739a;
    }
}
