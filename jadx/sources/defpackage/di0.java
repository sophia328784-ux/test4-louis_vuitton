package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class di0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68588b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68589c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f68590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function2 f68591f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function f68592h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function f68593i;

    public /* synthetic */ di0(Modifier modifier, ThemeItemUiModel themeItemUiModel, float f2, boolean z, Function2 function2, Function2 function3, Function2 function4, int i2) {
        this.f68589c = modifier;
        this.g = themeItemUiModel;
        this.d = f2;
        this.f68590e = z;
        this.f68591f = function2;
        this.f68592h = function3;
        this.f68593i = function4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68588b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                OrderDetailScreenKt.b(this.f68590e, this.f68589c, (OrderViewState) this.g, this.d, (Function0) this.f68592h, this.f68591f, (Function3) this.f68593i, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                StaggeredGridItemKt.c(this.f68589c, (ThemeItemUiModel) this.g, this.d, this.f68590e, this.f68591f, (Function2) this.f68592h, (Function2) this.f68593i, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ di0(boolean z, Modifier modifier, OrderViewState orderViewState, float f2, Function0 function0, Function2 function2, Function3 function3, int i2) {
        this.f68590e = z;
        this.f68589c = modifier;
        this.g = orderViewState;
        this.d = f2;
        this.f68592h = function0;
        this.f68591f = function2;
        this.f68593i = function3;
    }
}
