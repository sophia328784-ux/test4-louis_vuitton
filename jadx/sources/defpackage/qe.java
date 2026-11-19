package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.common.editorial.components.grids.GridSItemKt;
import com.vuitton.android.presentation.compose.components.LVTopShadowKt;
import com.vuitton.android.presentation.contact.compose.TermsAndConditionsBottomSheetKt;
import com.vuitton.android.presentation.screen.account.lvpass.components.ScreenLoadingScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationLoadingHeaderKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleSkeletonKt;
import com.vuitton.android.presentation.screen.feed.components.card.LiveTagKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastDraggableIndicatorKt;
import com.vuitton.android.presentation.screen.orders.components.returns.legacy.LoadingAnimationKt;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpWishListTopBarButtonKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSkeletonKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qe implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f79077c;

    public /* synthetic */ qe(Modifier modifier, int i2) {
        this.f79076b = i2;
        this.f79077c = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79076b;
        Modifier modifierE = this.f79077c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                BeautyVtoScreenKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                BookingModuleSkeletonKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                BookingReservationLoadingHeaderKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                GridSItemKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "LVCard$lambda$0$0");
                }
                composer.L(-1157435266);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                composer.F();
                return modifierE;
            case 5:
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "LVCard$lambda$0$1");
                }
                composer.L(-439690019);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                composer.F();
                return modifierE;
            case 6:
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "LVCard$lambda$0$3");
                }
                composer.L(-1231019844);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                composer.F();
                return modifierE;
            case 7:
                LVTopShadowKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                LiveTagKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                LoadingAnimationKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                OsaListBottomSheetScreenKt.c(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                PLPItemsKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                PLPItemsKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                PLPSkeletonKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                PLPSkeletonKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                PdpWishListTopBarButtonKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                PodcastDraggableIndicatorKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                ProductCellFullKt.d(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                ProductCellFullKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                ProductCellFullKt.g(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                RepairShippingConfirmationComposableKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                ScreenLoadingScreenKt.b(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                ScreenLoadingScreenKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                TermsAndConditionsBottomSheetKt.a(modifierE, composer, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ qe(Modifier modifier, int i2, int i3) {
        this.f79076b = i3;
        this.f79077c = modifier;
    }
}
