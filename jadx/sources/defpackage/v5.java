package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.MenuItemColors;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v5 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80497b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function f80498c;
    public final /* synthetic */ Modifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f80499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80500f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f80501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80502i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f80503j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f80504k;
    public final /* synthetic */ Object l;

    public /* synthetic */ v5(Modifier modifier, LazyPagingItems lazyPagingItems, boolean z, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function2 function5, int i2, int i3) {
        this.d = modifier;
        this.f80503j = lazyPagingItems;
        this.f80499e = z;
        this.f80504k = function1;
        this.f80498c = function2;
        this.l = function3;
        this.f80500f = function4;
        this.f80502i = function5;
        this.g = i2;
        this.f80501h = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80497b) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidMenu_androidKt.b((Function2) this.f80502i, (Function0) this.f80498c, this.d, (Function2) this.f80503j, (Function2) this.f80504k, this.f80499e, (MenuItemColors) this.l, (PaddingValues) this.f80500f, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f80501h);
                break;
            case 1:
                ((Integer) obj2).getClass();
                ButtonKt.a((Function0) this.f80498c, this.d, this.f80499e, (Shape) this.f80502i, (ButtonColors) this.f80503j, (ButtonElevation) this.f80504k, (PaddingValues) this.f80500f, (Function3) this.l, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f80501h);
                break;
            default:
                ((Integer) obj2).getClass();
                PLPStoreModeKt.a(this.d, (LazyPagingItems) this.f80503j, this.f80499e, (Function1) this.f80504k, (Function1) this.f80498c, (Function1) this.l, (Function1) this.f80500f, (Function2) this.f80502i, (Composer) obj, RecomposeScopeImplKt.a(this.g | 1), this.f80501h);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ v5(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, PaddingValues paddingValues, Function3 function3, int i2, int i3) {
        this.f80498c = function0;
        this.d = modifier;
        this.f80499e = z;
        this.f80502i = shape;
        this.f80503j = buttonColors;
        this.f80504k = buttonElevation;
        this.f80500f = paddingValues;
        this.l = function3;
        this.g = i2;
        this.f80501h = i3;
    }

    public /* synthetic */ v5(Function2 function2, Function0 function0, Modifier modifier, Function2 function3, Function2 function4, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, int i2, int i3) {
        this.f80502i = function2;
        this.f80498c = function0;
        this.d = modifier;
        this.f80503j = function3;
        this.f80504k = function4;
        this.f80499e = z;
        this.l = menuItemColors;
        this.f80500f = paddingValues;
        this.g = i2;
        this.f80501h = i3;
    }
}
