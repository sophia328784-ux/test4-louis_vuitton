package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.SliderColors;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentWidgetKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r10 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79218b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79219c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f79220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79221f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79222h;

    public /* synthetic */ r10(SliderDefaults sliderDefaults, MutableInteractionSource mutableInteractionSource, Modifier modifier, SliderColors sliderColors, boolean z, long j2, int i2) {
        this.f79221f = sliderDefaults;
        this.g = mutableInteractionSource;
        this.f79219c = modifier;
        this.f79222h = sliderColors;
        this.d = z;
        this.f79220e = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79218b;
        Object obj3 = this.f79222h;
        Object obj4 = this.g;
        Object obj5 = this.f79221f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                HotContentWidgetKt.b(this.f79219c, (HotContentItemUiModel) obj5, (LVColorScheme) obj4, this.d, this.f79220e, (Function1) obj3, (Composer) obj, iA);
                break;
            default:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                SliderDefaults sliderDefaults = SliderDefaults.f7235a;
                int iA2 = RecomposeScopeImplKt.a(196609);
                ((SliderDefaults) obj5).a((MutableInteractionSource) obj4, this.f79219c, (SliderColors) obj3, this.d, this.f79220e, composer, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ r10(Modifier modifier, HotContentItemUiModel hotContentItemUiModel, LVColorScheme lVColorScheme, boolean z, long j2, Function1 function1, int i2) {
        this.f79219c = modifier;
        this.f79221f = hotContentItemUiModel;
        this.g = lVColorScheme;
        this.d = z;
        this.f79220e = j2;
        this.f79222h = function1;
    }
}
