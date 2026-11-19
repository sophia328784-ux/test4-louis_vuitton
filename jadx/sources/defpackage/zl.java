package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.navigation.NavHostController;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.certificates.CertificateNavHostKt;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.feed.components.FeedHeaderKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeHeaderKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeSearchHeaderKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistNavHostKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81660b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81661c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81663f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81666j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81667k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ zl(PagerState pagerState, Modifier modifier, PaddingValues paddingValues, PageSize pageSize, Alignment.Horizontal horizontal, TargetedFlingBehavior targetedFlingBehavior, boolean z, NestedScrollConnection nestedScrollConnection, SnapPosition snapPosition, OverscrollEffect overscrollEffect, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f81664h = pagerState;
        this.f81665i = modifier;
        this.d = paddingValues;
        this.f81662e = pageSize;
        this.f81663f = horizontal;
        this.f81666j = targetedFlingBehavior;
        this.f81661c = z;
        this.g = nestedScrollConnection;
        this.f81667k = snapPosition;
        this.l = overscrollEffect;
        this.m = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81660b;
        Object obj3 = this.m;
        Object obj4 = this.f81667k;
        Object obj5 = this.l;
        Object obj6 = this.f81663f;
        Object obj7 = this.g;
        Object obj8 = this.f81666j;
        Object obj9 = this.f81662e;
        Object obj10 = this.d;
        Object obj11 = this.f81665i;
        Object obj12 = this.f81664h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                CertificateNavHostKt.a((NavHostController) obj12, (CertificateViewModel) obj11, this.f81661c, (Function0) obj10, (Function2) obj8, (Function1) obj7, (Function1) obj4, (Function0) obj9, (Function3) obj3, (Function0) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                FeedHeaderKt.a((ContactUsUiModel) obj12, (FeatureThemeUiModel) obj11, this.f81661c, (FeedTab) obj8, (Float) obj4, (Function0) obj10, (Function0) obj9, (Function0) obj6, (Function0) obj5, (Function1) obj7, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                PSPStyle pSPStyle = (PSPStyle) obj12;
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj11;
                StoreModeContentUiModel storeModeContentUiModel = (StoreModeContentUiModel) obj6;
                StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) obj8;
                Function1 function1 = (Function1) obj7;
                Function0 function0 = (Function0) obj10;
                String str = (String) obj5;
                Integer num = (Integer) obj3;
                Function1 function2 = (Function1) obj4;
                Function0 function3 = (Function0) obj9;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                boolean z = false;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i3 = PSPStoreModeScreenKt.WhenMappings.f64918a[pSPStyle.ordinal()];
                    boolean z2 = this.f81661c;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i3 == 1) {
                        composer.L(-937873445);
                        boolean z3 = !((lazyPagingItems.d().f18562a instanceof LoadState.Loading) || ((lazyPagingItems.d().f18564c instanceof LoadState.Loading) && lazyPagingItems.b() == 0));
                        boolean z4 = storeModeContentUiModel == StoreModeContentUiModel.STORE && lazyPagingItems.b() > 0;
                        boolean z5 = storeModePLPFiltersViewState.f65035e;
                        boolean zK = composer.K(function1) | composer.K(function0);
                        Object objX = composer.x();
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new wz(function1, function0, 4);
                            composer.q(objX);
                        }
                        PSPStoreModeHeaderKt.a(str, num, z3, z4, z5, function2, z2 ? (Function0) objX : null, function3, composer, 0);
                        composer.F();
                    } else {
                        if (i3 != 2) {
                            throw o60.v(composer, 1216670650);
                        }
                        composer.L(-937072188);
                        boolean z6 = storeModeContentUiModel == StoreModeContentUiModel.STORE;
                        if ((lazyPagingItems.d().f18562a instanceof LoadState.Loading) || ((lazyPagingItems.d().f18564c instanceof LoadState.Loading) && lazyPagingItems.b() == 0)) {
                            z = true;
                        }
                        boolean z7 = !z;
                        LVColorScheme lVColorScheme = LVColorScheme.DEFAULT;
                        boolean z8 = storeModePLPFiltersViewState.f65035e;
                        boolean zK2 = composer.K(function1) | composer.K(function0);
                        Object objX2 = composer.x();
                        if (zK2 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new wz(function1, function0, 5);
                            composer.q(objX2);
                        }
                        PSPStoreModeSearchHeaderKt.a(str, num, z6, z7, lVColorScheme, z8, z2 ? (Function0) objX2 : null, function3, composer, 24576);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                PagerKt.b((PagerState) obj12, (Modifier) obj11, (PaddingValues) obj10, (PageSize) obj9, (Alignment.Horizontal) obj6, (TargetedFlingBehavior) obj8, this.f81661c, (NestedScrollConnection) obj7, (SnapPosition) obj4, (OverscrollEffect) obj5, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                WishlistNavHostKt.a((NavHostController) obj12, (WishlistViewModel) obj11, this.f81661c, (Function0) obj10, (Function0) obj9, (Function2) obj8, (Function1) obj7, (Function0) obj6, (Function2) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(3073));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ zl(NavHostController navHostController, CertificateViewModel certificateViewModel, boolean z, Function0 function0, Function2 function2, Function1 function1, Function1 function3, Function0 function4, Function3 function5, Function0 function6, Function1 function7, int i2) {
        this.f81664h = navHostController;
        this.f81665i = certificateViewModel;
        this.f81661c = z;
        this.d = function0;
        this.f81666j = function2;
        this.g = function1;
        this.f81667k = function3;
        this.f81662e = function4;
        this.m = function5;
        this.f81663f = function6;
        this.l = function7;
    }

    public /* synthetic */ zl(NavHostController navHostController, WishlistViewModel wishlistViewModel, boolean z, Function0 function0, Function0 function1, Function2 function2, Function1 function3, Function0 function4, Function2 function5, Function1 function6, Function0 function7, int i2) {
        this.f81664h = navHostController;
        this.f81665i = wishlistViewModel;
        this.f81661c = z;
        this.d = function0;
        this.f81662e = function1;
        this.f81666j = function2;
        this.g = function3;
        this.f81663f = function4;
        this.l = function5;
        this.f81667k = function6;
        this.m = function7;
    }

    public /* synthetic */ zl(ContactUsUiModel contactUsUiModel, FeatureThemeUiModel featureThemeUiModel, boolean z, FeedTab feedTab, Float f2, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function1 function4, Function0 function5, int i2) {
        this.f81664h = contactUsUiModel;
        this.f81665i = featureThemeUiModel;
        this.f81661c = z;
        this.f81666j = feedTab;
        this.f81667k = f2;
        this.d = function0;
        this.f81662e = function1;
        this.f81663f = function2;
        this.l = function3;
        this.g = function4;
        this.m = function5;
    }

    public /* synthetic */ zl(PSPStyle pSPStyle, LazyPagingItems lazyPagingItems, StoreModeContentUiModel storeModeContentUiModel, StoreModePLPFiltersViewState storeModePLPFiltersViewState, Function1 function1, Function0 function0, String str, Integer num, Function1 function2, Function0 function3, boolean z) {
        this.f81664h = pSPStyle;
        this.f81665i = lazyPagingItems;
        this.f81663f = storeModeContentUiModel;
        this.f81666j = storeModePLPFiltersViewState;
        this.g = function1;
        this.d = function0;
        this.l = str;
        this.m = num;
        this.f81667k = function2;
        this.f81662e = function3;
        this.f81661c = z;
    }
}
