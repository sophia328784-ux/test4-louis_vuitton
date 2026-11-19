package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.RegularGridViewKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridViewKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nr0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76599c;
    public final /* synthetic */ LazyGridState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CurrentThemeUiModel f76600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f76601f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ float f76602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ float f76603i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f76604j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f76605k;
    public final /* synthetic */ Function2 l;
    public final /* synthetic */ Function2 m;
    public final /* synthetic */ Function2 n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;

    public /* synthetic */ nr0(Modifier modifier, LazyGridState lazyGridState, CurrentThemeUiModel currentThemeUiModel, Object obj, float f2, float f3, float f4, float f5, boolean z, boolean z2, Function2 function2, Function2 function3, Function2 function4, int i2, int i3, int i4) {
        this.f76598b = i4;
        this.f76599c = modifier;
        this.d = lazyGridState;
        this.f76600e = currentThemeUiModel;
        this.p = obj;
        this.f76601f = f2;
        this.g = f3;
        this.f76602h = f4;
        this.f76603i = f5;
        this.f76604j = z;
        this.f76605k = z2;
        this.l = function2;
        this.m = function3;
        this.n = function4;
        this.o = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76598b;
        int i3 = this.o;
        Object obj3 = this.p;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                int iA2 = RecomposeScopeImplKt.a(i3);
                RegularGridViewKt.a(this.f76599c, this.d, this.f76600e, (String) obj3, this.f76601f, this.g, this.f76602h, this.f76603i, this.f76604j, this.f76605k, this.l, this.m, this.n, (Composer) obj, iA, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                int iA4 = RecomposeScopeImplKt.a(i3);
                StaggeredGridViewKt.a(this.f76599c, this.d, this.f76600e, (ThemeUiModel) obj3, this.f76601f, this.g, this.f76602h, this.f76603i, this.f76604j, this.f76605k, this.l, this.m, this.n, (Composer) obj, iA3, iA4);
                break;
        }
        return Unit.f71739a;
    }
}
