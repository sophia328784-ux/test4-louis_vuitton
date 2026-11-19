package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeComposableKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b90 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20793b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f20794c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f20795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f20796f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f20797h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f20798i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f20799j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f20800k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Function n;

    public /* synthetic */ b90(GridCells.Fixed fixed, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, int i2, int i3) {
        this.g = fixed;
        this.f20794c = modifier;
        this.f20797h = lazyGridState;
        this.f20798i = paddingValues;
        this.f20799j = vertical;
        this.f20800k = horizontal;
        this.l = flingBehavior;
        this.d = z;
        this.m = overscrollEffect;
        this.n = function1;
        this.f20795e = i2;
        this.f20796f = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20793b;
        int i3 = this.f20795e;
        Function function = this.n;
        Object obj3 = this.m;
        Object obj4 = this.l;
        Object obj5 = this.f20800k;
        Object obj6 = this.f20799j;
        Object obj7 = this.f20798i;
        Object obj8 = this.f20797h;
        Object obj9 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                LazyGridDslKt.b((GridCells.Fixed) obj9, this.f20794c, (LazyGridState) obj8, (PaddingValues) obj7, (Arrangement.Vertical) obj6, (Arrangement.Horizontal) obj5, (FlingBehavior) obj4, this.d, (OverscrollEffect) obj3, (Function1) function, (Composer) obj, iA, this.f20796f);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                WelcomeComposableKt.a(this.f20794c, (SocialLoginBottomSheetState) obj9, (WelcomeViewState) obj8, this.d, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Function0) function, (Composer) obj, iA2, this.f20796f);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ b90(Modifier modifier, SocialLoginBottomSheetState socialLoginBottomSheetState, WelcomeViewState welcomeViewState, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, int i2, int i3) {
        this.f20794c = modifier;
        this.g = socialLoginBottomSheetState;
        this.f20797h = welcomeViewState;
        this.d = z;
        this.f20798i = function0;
        this.f20799j = function1;
        this.f20800k = function2;
        this.l = function3;
        this.m = function4;
        this.n = function5;
        this.f20795e = i2;
        this.f20796f = i3;
    }
}
