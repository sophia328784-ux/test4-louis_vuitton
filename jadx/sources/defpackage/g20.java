package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.ImageFilterComponentKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.TextFilterComponentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g20 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69257c;
    public final /* synthetic */ ProductFilterDataTypeUiModel.Simple d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function2 f69258e;

    public /* synthetic */ g20(boolean z, ProductFilterDataTypeUiModel.Simple simple, Function2 function2, int i2, int i3) {
        this.f69256b = i3;
        this.f69257c = z;
        this.d = simple;
        this.f69258e = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69256b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                ImageFilterComponentKt.a(this.f69257c, this.d, this.f69258e, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                TextFilterComponentKt.b(this.f69257c, this.d, this.f69258e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
