package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridDslKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.carousell.CarouselLMultipleKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mj implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76285b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f76286c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f76287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76288f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76291j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f76292k;

    public /* synthetic */ mj(StaggeredGridCells.Fixed fixed, Modifier modifier, LazyStaggeredGridState lazyStaggeredGridState, PaddingValuesImpl paddingValuesImpl, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, int i2) {
        this.f76288f = fixed;
        this.f76286c = modifier;
        this.g = lazyStaggeredGridState;
        this.f76289h = paddingValuesImpl;
        this.f76290i = horizontal;
        this.f76291j = flingBehavior;
        this.d = z;
        this.f76292k = overscrollEffect;
        this.f76287e = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76285b;
        Object obj3 = this.f76292k;
        Object obj4 = this.f76291j;
        Object obj5 = this.f76290i;
        Object obj6 = this.f76289h;
        Object obj7 = this.g;
        Object obj8 = this.f76288f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                CarouselLMultipleKt.a(this.f76286c, (LVColorScheme) obj8, (AssetUiModel) obj7, (String) obj6, (String) obj5, (ContributionLinkUiModel) obj4, (RoundedCornerShape) obj3, this.d, this.f76287e, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                LazyStaggeredGridDslKt.a((StaggeredGridCells.Fixed) obj8, this.f76286c, (LazyStaggeredGridState) obj7, (PaddingValuesImpl) obj6, (Arrangement.Horizontal) obj5, (FlingBehavior) obj4, this.d, (OverscrollEffect) obj3, this.f76287e, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ mj(Modifier modifier, LVColorScheme lVColorScheme, AssetUiModel assetUiModel, String str, String str2, ContributionLinkUiModel contributionLinkUiModel, RoundedCornerShape roundedCornerShape, boolean z, Function1 function1, int i2) {
        this.f76286c = modifier;
        this.f76288f = lVColorScheme;
        this.g = assetUiModel;
        this.f76289h = str;
        this.f76290i = str2;
        this.f76291j = contributionLinkUiModel;
        this.f76292k = roundedCornerShape;
        this.d = z;
        this.f76287e = function1;
    }
}
