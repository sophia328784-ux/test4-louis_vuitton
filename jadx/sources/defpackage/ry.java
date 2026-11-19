package defpackage;

import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.LazyGridKt;
import androidx.compose.foundation.lazy.grid.LazyGridSlotsProvider;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.FiltersOverlayScreenKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersContainerKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ry implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79641b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79642c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f79643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f79644f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f79645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79647j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f79648k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ ry(Modifier modifier, LazyGridState lazyGridState, LazyGridSlotsProvider lazyGridSlotsProvider, PaddingValues paddingValues, boolean z, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Function1 function1, int i2, int i3) {
        this.f79642c = modifier;
        this.f79646i = lazyGridState;
        this.f79647j = lazyGridSlotsProvider;
        this.f79648k = paddingValues;
        this.d = z;
        this.l = flingBehavior;
        this.f79643e = z2;
        this.m = overscrollEffect;
        this.n = vertical;
        this.o = horizontal;
        this.f79644f = function1;
        this.g = i2;
        this.f79645h = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79641b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(this.g | 1);
                int iA2 = RecomposeScopeImplKt.a(this.f79645h);
                FiltersOverlayScreenKt.a(this.f79642c, this.d, (Alignment.Horizontal) this.f79646i, (List) this.f79647j, this.f79644f, (Function1) this.f79648k, (Function1) this.l, (String) this.n, this.f79643e, (Function1) this.m, (Function0) this.o, (Composer) obj, iA, iA2);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(this.g | 1);
                int iA4 = RecomposeScopeImplKt.a(this.f79645h);
                LazyGridKt.a(this.f79642c, (LazyGridState) this.f79646i, (LazyGridSlotsProvider) this.f79647j, (PaddingValues) this.f79648k, this.d, (FlingBehavior) this.l, this.f79643e, (OverscrollEffect) this.m, (Arrangement.Vertical) this.n, (Arrangement.Horizontal) this.o, this.f79644f, (Composer) obj, iA3, iA4);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(this.g | 1);
                int iA6 = RecomposeScopeImplKt.a(this.f79645h);
                QuickAccessFiltersContainerKt.a((QuickAccessFiltersViewState) this.f79646i, this.f79642c, this.d, this.f79643e, (EnterTransition) this.f79647j, (ExitTransition) this.f79648k, (Function2) this.l, (Function0) this.o, (Function0) this.m, (Function0) this.n, this.f79644f, (Composer) obj, iA5, iA6);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ry(Modifier modifier, boolean z, Alignment.Horizontal horizontal, List list, Function1 function1, Function1 function2, Function1 function3, String str, boolean z2, Function1 function4, Function0 function0, int i2, int i3) {
        this.f79642c = modifier;
        this.d = z;
        this.f79646i = horizontal;
        this.f79647j = list;
        this.f79644f = function1;
        this.f79648k = function2;
        this.l = function3;
        this.n = str;
        this.f79643e = z2;
        this.m = function4;
        this.o = function0;
        this.g = i2;
        this.f79645h = i3;
    }

    public /* synthetic */ ry(QuickAccessFiltersViewState quickAccessFiltersViewState, Modifier modifier, boolean z, boolean z2, EnterTransition enterTransition, ExitTransition exitTransition, Function2 function2, Function0 function0, Function0 function1, Function0 function3, Function1 function4, int i2, int i3) {
        this.f79646i = quickAccessFiltersViewState;
        this.f79642c = modifier;
        this.d = z;
        this.f79643e = z2;
        this.f79647j = enterTransition;
        this.f79648k = exitTransition;
        this.l = function2;
        this.o = function0;
        this.m = function1;
        this.n = function3;
        this.f79644f = function4;
        this.g = i2;
        this.f79645h = i3;
    }
}
