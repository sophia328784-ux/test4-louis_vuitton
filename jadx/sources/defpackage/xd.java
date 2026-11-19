package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.common.editorial.components.carouselm.CarouselMItemKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81105b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81106c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f81107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f81108f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function f81110i;

    public /* synthetic */ xd(Modifier modifier, int i2, int i3, String str, boolean z, Function1 function1, Function1 function2, int i4) {
        this.f81106c = modifier;
        this.d = i2;
        this.f81108f = i3;
        this.g = str;
        this.f81107e = z;
        this.f81109h = function1;
        this.f81110i = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81105b;
        int i3 = this.d;
        Function function = this.f81110i;
        Object obj3 = this.f81109h;
        Object obj4 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                BeautyDualColorComparatorKt.a(this.f81106c, (String) obj4, (String) obj3, this.f81107e, (ComposableLambdaImpl) function, (Composer) obj, iA, this.f81108f);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(this.f81108f | 1);
                CarouselMItemKt.a(this.f81106c, (CarouselMItemUiModel) obj4, this.d, (LVColorScheme) obj3, this.f81107e, (Function1) function, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                LVLinkKt.b(this.f81106c, (String) obj4, this.f81107e, (LVColorScheme) obj3, (Function0) function, (Composer) obj, iA3, this.f81108f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(7);
                SpotlightBottomStepperKt.d(this.f81106c, this.d, this.f81108f, (String) obj4, this.f81107e, (Function1) obj3, (Function1) function, (Composer) obj, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ xd(Modifier modifier, CarouselMItemUiModel carouselMItemUiModel, int i2, LVColorScheme lVColorScheme, boolean z, Function1 function1, int i3) {
        this.f81106c = modifier;
        this.g = carouselMItemUiModel;
        this.d = i2;
        this.f81109h = lVColorScheme;
        this.f81107e = z;
        this.f81110i = function1;
        this.f81108f = i3;
    }

    public /* synthetic */ xd(Modifier modifier, String str, String str2, boolean z, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f81106c = modifier;
        this.g = str;
        this.f81109h = str2;
        this.f81107e = z;
        this.f81110i = composableLambdaImpl;
        this.d = i2;
        this.f81108f = i3;
    }

    public /* synthetic */ xd(Modifier modifier, String str, boolean z, LVColorScheme lVColorScheme, Function0 function0, int i2, int i3) {
        this.f81106c = modifier;
        this.g = str;
        this.f81107e = z;
        this.f81109h = lVColorScheme;
        this.f81110i = function0;
        this.d = i2;
        this.f81108f = i3;
    }
}
