package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpScreenKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewstate.ThematicPlpViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fe implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69111b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f69112c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f69113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f69114f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f69115h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f69116i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f69117j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69118k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Function o;
    public final /* synthetic */ Function p;
    public final /* synthetic */ Function q;
    public final /* synthetic */ Function r;
    public final /* synthetic */ Function s;

    public /* synthetic */ fe(Modifier modifier, ThematicPlpViewState thematicPlpViewState, ThemeAnimationState themeAnimationState, boolean z, boolean z2, Function1 function1, Function1 function2, Function2 function3, Function2 function4, Function0 function0, Function0 function5, Function0 function6, Function0 function7, Function2 function8, Function1 function9, Function1 function10, Function1 function11, int i2) {
        this.f69118k = modifier;
        this.l = thematicPlpViewState;
        this.m = themeAnimationState;
        this.f69112c = z;
        this.d = z2;
        this.f69113e = function1;
        this.f69114f = function2;
        this.n = function3;
        this.o = function4;
        this.g = function0;
        this.f69115h = function5;
        this.f69116i = function6;
        this.f69117j = function7;
        this.p = function8;
        this.q = function9;
        this.r = function10;
        this.s = function11;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f69111b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                BeautyVtoBottomBarKt.a((BeautyVtoViewState) this.f69118k, this.f69112c, this.d, (TryOnProductUiModel) this.l, (List) this.n, (TryOnProductUiModel) this.m, this.f69113e, this.g, this.f69115h, this.f69116i, this.f69117j, (Function0) this.o, (Function0) this.p, (Function0) this.q, this.f69114f, (Function0) this.r, (Function0) this.s, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                ThematicPlpScreenKt.b((Modifier) this.f69118k, (ThematicPlpViewState) this.l, (ThemeAnimationState) this.m, this.f69112c, this.d, this.f69113e, this.f69114f, (Function2) this.n, (Function2) this.o, this.g, this.f69115h, this.f69116i, this.f69117j, (Function2) this.p, (Function1) this.q, (Function1) this.r, (Function1) this.s, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ fe(BeautyVtoViewState beautyVtoViewState, boolean z, boolean z2, TryOnProductUiModel tryOnProductUiModel, List list, TryOnProductUiModel tryOnProductUiModel2, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function1 function8, Function0 function9, Function0 function10, int i2) {
        this.f69118k = beautyVtoViewState;
        this.f69112c = z;
        this.d = z2;
        this.l = tryOnProductUiModel;
        this.n = list;
        this.m = tryOnProductUiModel2;
        this.f69113e = function1;
        this.g = function0;
        this.f69115h = function2;
        this.f69116i = function3;
        this.f69117j = function4;
        this.o = function5;
        this.p = function6;
        this.q = function7;
        this.f69114f = function8;
        this.r = function9;
        this.s = function10;
    }
}
