package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.presentation.common.editorial.components.productcarousel.ProductCarouselKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c60 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21074b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f21075c;
    public final /* synthetic */ LVColorScheme d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f21076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f21077f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f21078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function f21079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f21080j;

    public /* synthetic */ c60(Modifier modifier, EditorialModuleUiModel.ProductCarouselUiModel productCarouselUiModel, LVColorScheme lVColorScheme, float f2, float f3, Function2 function2, Function2 function3, int i2) {
        this.f21075c = modifier;
        this.f21078h = productCarouselUiModel;
        this.d = lVColorScheme;
        this.f21076e = f2;
        this.f21077f = f3;
        this.f21079i = function2;
        this.f21080j = function3;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21074b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(385);
                LVHeaderTopBarKt.a(this.f21075c, (String) this.f21078h, (Function4) this.f21079i, (WindowInsets) this.f21080j, this.d, this.f21076e, this.f21077f, (Composer) obj, iA, this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                ProductCarouselKt.a(this.f21075c, (EditorialModuleUiModel.ProductCarouselUiModel) this.f21078h, this.d, this.f21076e, this.f21077f, (Function2) this.f21079i, (Function2) this.f21080j, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ c60(Modifier modifier, String str, Function4 function4, WindowInsets windowInsets, LVColorScheme lVColorScheme, float f2, float f3, int i2, int i3) {
        this.f21075c = modifier;
        this.f21078h = str;
        this.f21079i = function4;
        this.f21080j = windowInsets;
        this.d = lVColorScheme;
        this.f21076e = f2;
        this.f21077f = f3;
        this.g = i3;
    }
}
