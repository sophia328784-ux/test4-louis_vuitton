package defpackage;

import android.view.View;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.pager.PagerIntervalContent;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.navigation3.runtime.NavEntry;
import com.sightcall.graphik.VisionThemeKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonGroupIndicator;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScopeInstance;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.ServerOverloadContentBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoNativeItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoSectionsItem;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailInformationKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class om implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f77499c;
    public final /* synthetic */ Object d;

    public /* synthetic */ om(int i2, LVColorScheme lVColorScheme) {
        this.f77498b = 15;
        this.f77499c = i2;
        this.d = lVColorScheme;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long j2;
        int i2 = this.f77498b;
        int i3 = this.f77499c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).intValue();
                CollapsingDetailListKt.f((PanelInfoSectionsItem) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).intValue();
                CollapsingDetailListKt.e((PanelInfoNativeItem) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                LVButtonGroupIndicator.GreenDot greenDot = LVButtonGroupIndicator.GreenDot.f48452a;
                ((LVButtonGroupIndicator.GreenDot) obj3).a((Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                LVButtonGroupIndicator.RedDot redDot = LVButtonGroupIndicator.RedDot.f48453a;
                ((LVButtonGroupIndicator.RedDot) obj3).a((Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).intValue();
                LVModalBottomSheetKt.c((WindowInsets) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).intValue();
                MyInformationScreenKt.e((MyInformationViewState) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).intValue();
                NativeCartBottomSheetsKt.b((CartItemUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                ((NavEntry) obj3).a((Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).intValue();
                OrderExchangeReviewScreenKt.c((OrderReturnOrExchangeItemUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 9:
                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    IntervalList.Interval interval = pagerLazyLayoutItemProvider.f5728b.getF5602a().get(i3);
                    ((PagerIntervalContent) interval.f5407c).f5719b.g(PagerScopeImpl.f5748a, Integer.valueOf(i3 - interval.f5405a), composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).intValue();
                RepairDetailInformationKt.c((CareServiceDetailUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).intValue();
                ServerOverloadContentBottomSheetKt.a((PdpBottomSheetType.ServerOverload) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                SharedWishlistScreenKt.a(i3, RecomposeScopeImplKt.a(1), (Composer) obj, (String) obj3);
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).intValue();
                SocialLoginBottomSheetKt.a((SocialLoginBottomSheetState) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                TableSizeKt.a(RecomposeScopeImplKt.a(i3 | 1), (Composer) obj, (List) obj3);
                return Unit.f71739a;
            case 15:
                LVColorScheme lVColorScheme = (LVColorScheme) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Painter painterA = PainterResources_androidKt.a(i3, composer2, 0);
                    int i4 = TopBarActionScopeInstance.WhenMappings.f48764a[lVColorScheme.ordinal()];
                    if (i4 == 1) {
                        composer2.L(1406747137);
                        j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                        composer2.F();
                    } else {
                        if (i4 != 2) {
                            throw o60.v(composer2, 1406744270);
                        }
                        composer2.L(1406750235);
                        j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                        composer2.F();
                    }
                    IconKt.a(painterA, null, null, j2, composer2, 56, 4);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 16:
                return ViewExtKt.a((View) obj3, i3, (Insets) obj, (WindowInsetsCompat) obj2);
            default:
                return VisionThemeKt.VisionTheme$lambda$0((Function2) obj3, i3, (Composer) obj, ((Integer) obj2).intValue());
        }
    }

    public /* synthetic */ om(int i2, String str, int i3) {
        this.f77498b = 12;
        this.f77499c = i2;
        this.d = str;
    }

    public /* synthetic */ om(Object obj, int i2, int i3) {
        this.f77498b = i3;
        this.d = obj;
        this.f77499c = i2;
    }
}
