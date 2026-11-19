package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.SubcomposeAsyncImageKt;
import coil3.compose.internal.AsyncImageState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarStyle;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSelectorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79768c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f79769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f79770f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79774k;
    public final /* synthetic */ Object l;

    public /* synthetic */ sd(Modifier modifier, LVColorScheme lVColorScheme, String str, String str2, Function0 function0, Function4 function4, WindowInsets windowInsets, TopAppBarScrollBehavior topAppBarScrollBehavior, int i2, int i3) {
        this.f79767b = 2;
        this.f79768c = modifier;
        this.g = lVColorScheme;
        this.f79771h = str;
        this.f79772i = str2;
        this.d = function0;
        this.f79773j = function4;
        this.f79774k = windowInsets;
        this.l = topAppBarScrollBehavior;
        this.f79769e = i2;
        this.f79770f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79767b;
        int i3 = this.f79769e;
        Object obj3 = this.l;
        Object obj4 = this.f79774k;
        Object obj5 = this.d;
        Object obj6 = this.f79772i;
        Object obj7 = this.f79773j;
        Object obj8 = this.f79771h;
        Object obj9 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1 | i3);
                BeautyColorSelectorKt.a(this.f79768c, (List) obj9, (TryOnProductUiModel) obj8, (LookUiModel) obj6, (Function1) obj7, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA, this.f79770f);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1 | i3);
                LVFloatingTopBarKt.a(this.f79768c, (FloatingTopBarType) obj9, (FloatingTopBarStyle) obj8, (LVColorScheme) obj6, (String) obj7, (Function0) obj5, (Function4) obj4, (WindowInsets) obj3, (Composer) obj, iA2, this.f79770f);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1 | i3);
                LVMediumTopBarKt.a(this.f79768c, (LVColorScheme) obj9, (String) obj8, (String) obj6, (Function0) obj5, (Function4) obj7, (WindowInsets) obj4, (TopAppBarScrollBehavior) obj3, (Composer) obj, iA3, this.f79770f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(1);
                int iA5 = RecomposeScopeImplKt.a(this.f79770f);
                SubcomposeAsyncImageKt.a((AsyncImageState) obj9, (String) obj8, this.f79768c, (Function1) obj7, (Function1) obj6, (Alignment) obj5, (ContentScale) obj4, this.f79769e, (Function3) obj3, (Composer) obj, iA4, iA5);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sd(Modifier modifier, Object obj, Object obj2, Object obj3, Object obj4, Function0 function0, Function function, Object obj5, int i2, int i3, int i4) {
        this.f79767b = i4;
        this.f79768c = modifier;
        this.g = obj;
        this.f79771h = obj2;
        this.f79772i = obj3;
        this.f79773j = obj4;
        this.d = function0;
        this.f79774k = function;
        this.l = obj5;
        this.f79769e = i2;
        this.f79770f = i3;
    }

    public /* synthetic */ sd(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function2, Alignment alignment, ContentScale contentScale, int i2, Function3 function3, int i3, int i4) {
        this.f79767b = 3;
        this.g = asyncImageState;
        this.f79771h = str;
        this.f79768c = modifier;
        this.f79773j = function1;
        this.f79772i = function2;
        this.d = alignment;
        this.f79774k = contentScale;
        this.f79769e = i2;
        this.l = function3;
        this.f79770f = i4;
    }
}
