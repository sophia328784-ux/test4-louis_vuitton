package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.SliderColors;
import androidx.compose.material3.SliderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.grids.GridSKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.ClosedFloatingPointRange;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z00 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f81480c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81482f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f81483h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81484i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ float f81485j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81486k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ int m;

    public /* synthetic */ z00(float f2, Function1 function1, Modifier modifier, boolean z, Function0 function0, SliderColors sliderColors, MutableInteractionSource mutableInteractionSource, Function3 function3, ComposableLambdaImpl composableLambdaImpl, ClosedFloatingPointRange closedFloatingPointRange, int i2) {
        this.f81479b = 2;
        this.f81485j = f2;
        this.d = function1;
        this.f81480c = modifier;
        this.f81483h = z;
        this.l = function0;
        this.f81481e = sliderColors;
        this.f81482f = mutableInteractionSource;
        this.g = function3;
        this.f81484i = composableLambdaImpl;
        this.f81486k = closedFloatingPointRange;
        this.m = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81479b;
        int i3 = this.m;
        Object obj3 = this.f81486k;
        Object obj4 = this.f81484i;
        Object obj5 = this.g;
        Object obj6 = this.f81482f;
        Object obj7 = this.f81481e;
        Object obj8 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                GridSKt.a(this.f81480c, (String) obj8, (String) obj7, (AssetImageUiModel) obj6, (List) obj5, this.f81483h, (LVColorScheme) obj4, this.f81485j, (Function2) obj3, this.l, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                GridSKt.a(this.f81480c, (String) obj8, (String) obj7, (AssetImageUiModel) obj6, (List) obj5, this.f81483h, (LVColorScheme) obj4, this.f81485j, (Function2) obj3, this.l, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                SliderKt.a(this.f81485j, (Function1) obj8, this.f81480c, this.f81483h, this.l, (SliderColors) obj7, (MutableInteractionSource) obj6, (Function3) obj5, (ComposableLambdaImpl) obj4, (ClosedFloatingPointRange) obj3, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ z00(Modifier modifier, String str, String str2, AssetImageUiModel assetImageUiModel, List list, boolean z, LVColorScheme lVColorScheme, float f2, Function2 function2, Function0 function0, int i2, int i3) {
        this.f81479b = i3;
        this.f81480c = modifier;
        this.d = str;
        this.f81481e = str2;
        this.f81482f = assetImageUiModel;
        this.g = list;
        this.f81483h = z;
        this.f81484i = lVColorScheme;
        this.f81485j = f2;
        this.f81486k = function2;
        this.l = function0;
        this.m = i2;
    }
}
