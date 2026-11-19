package defpackage;

import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpCapsuleStyle;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpToolBoxKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeCapsuleRenderContext;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class es implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68928b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68929c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f68930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68931f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f68933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f68934j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f68935k;

    public /* synthetic */ es(Modifier modifier, float f2, String str, String str2, ThematicPlpCapsuleStyle thematicPlpCapsuleStyle, ThemeAnimationState themeAnimationState, Function0 function0, ThemeCapsuleRenderContext themeCapsuleRenderContext, int i2) {
        this.f68929c = modifier;
        this.d = f2;
        this.f68931f = str;
        this.g = str2;
        this.f68932h = thematicPlpCapsuleStyle;
        this.f68933i = themeAnimationState;
        this.f68934j = function0;
        this.f68935k = themeCapsuleRenderContext;
        this.f68930e = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68928b;
        int i3 = this.f68930e;
        Object obj3 = this.f68935k;
        Object obj4 = this.f68934j;
        Object obj5 = this.f68933i;
        Object obj6 = this.f68932h;
        Object obj7 = this.g;
        Object obj8 = this.f68931f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                DatePickerKt.a(this.f68929c, (Function2) obj8, (Function2) obj7, (Function2) obj6, (DatePickerColors) obj5, (TextStyle) obj4, this.d, (ComposableLambdaImpl) obj3, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                ThematicPlpToolBoxKt.a(this.f68929c, this.d, (String) obj8, (String) obj7, (ThematicPlpCapsuleStyle) obj6, (ThemeAnimationState) obj5, (Function0) obj4, (ThemeCapsuleRenderContext) obj3, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ es(Modifier modifier, Function2 function2, Function2 function3, Function2 function4, DatePickerColors datePickerColors, TextStyle textStyle, float f2, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f68929c = modifier;
        this.f68931f = function2;
        this.g = function3;
        this.f68932h = function4;
        this.f68933i = datePickerColors;
        this.f68934j = textStyle;
        this.d = f2;
        this.f68935k = composableLambdaImpl;
        this.f68930e = i2;
    }
}
