package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationRadioButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSwitch;
import com.vuitton.android.presentation.common.editorial.components.slideshow.SlideShowCardKt;
import com.vuitton.android.presentation.screen.pdp.components.variations.GridVariationKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListEmptyScreenKt;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f10 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69002c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f69003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function f69004f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69005h;

    public /* synthetic */ f10(ComposableLambdaImpl composableLambdaImpl, boolean z, Function0 function0, boolean z2, Function0 function1, int i2) {
        this.f69001b = 3;
        this.f69002c = composableLambdaImpl;
        this.d = z;
        this.f69005h = function0;
        this.f69003e = z2;
        this.f69004f = function1;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69001b;
        int i3 = this.g;
        Function function = this.f69004f;
        Object obj3 = this.f69005h;
        Object obj4 = this.f69002c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                GridVariationKt.a((Modifier) obj4, (VariationUiModel) obj3, (Function1) function, this.d, this.f69003e, this.g, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z = this.d;
                boolean z2 = this.f69003e;
                LVRadioButtonKt.b((Modifier) obj4, z, z2, (Function1) function, (ConfigurationRadioButton) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                LVSwitchKt.b((Modifier) obj4, (ConfigurationSwitch) obj3, this.d, this.f69003e, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z3 = this.d;
                RepairListEmptyScreenKt.a((ComposableLambdaImpl) obj4, z3, (Function0) obj3, this.f69003e, (Function0) function, (Composer) obj, iA3);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                boolean z4 = this.d;
                boolean z5 = this.f69003e;
                SlideShowCardKt.a((List) obj4, (PagerState) obj3, z4, z5, (Function1) function, (Composer) obj, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ f10(Modifier modifier, VariationUiModel variationUiModel, Function1 function1, boolean z, boolean z2, int i2, int i3) {
        this.f69001b = 0;
        this.f69002c = modifier;
        this.f69005h = variationUiModel;
        this.f69004f = function1;
        this.d = z;
        this.f69003e = z2;
        this.g = i2;
    }

    public /* synthetic */ f10(Modifier modifier, boolean z, boolean z2, Function1 function1, ConfigurationRadioButton configurationRadioButton, int i2) {
        this.f69001b = 1;
        this.f69002c = modifier;
        this.d = z;
        this.f69003e = z2;
        this.f69004f = function1;
        this.f69005h = configurationRadioButton;
        this.g = i2;
    }

    public /* synthetic */ f10(Object obj, Object obj2, boolean z, boolean z2, Function1 function1, int i2, int i3) {
        this.f69001b = i3;
        this.f69002c = obj;
        this.f69005h = obj2;
        this.d = z;
        this.f69003e = z2;
        this.f69004f = function1;
        this.g = i2;
    }
}
