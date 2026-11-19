package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.core.os.BundleKt;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation3.runtime.serialization.NavBackStackSerializer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateEncoder;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.helper.ThematicPlpHelperKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.ThematicPlpTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment;
import com.vuitton.android.presentation.screen.imageviewer.components.SingleImageViewerKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialStepByStepKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.ShippingInformationUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt;
import com.vuitton.android.presentation.screen.search.components.TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.screen.spotlight.SpotlightActivity;
import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightComposableKt;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotContentUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotDetailUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightCtaUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightTrackingUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL2UiModel;
import com.vuitton.android.presentation.screen.story.components.StoryHeaderKt;
import com.vuitton.android.presentation.screen.story.models.StoryHeaderUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.video.VideoActivity;
import com.vuitton.android.presentation.screen.video.components.VideoPlayerComponentKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistLoadingScreenKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.android.presentation.utils.TrackingFrom;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import java.util.Arrays;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class es0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68937c;
    public final /* synthetic */ Object d;

    public /* synthetic */ es0(Object obj, Object obj2, int i2) {
        this.f68936b = i2;
        this.f68937c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        WishlistUiModel wishlistUiModel;
        String str;
        int i2 = this.f68936b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        boolean z = false;
        final int i3 = 1;
        Object obj3 = this.d;
        Object obj4 = this.f68937c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.l((ShippingInformationUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                return RepairDetailsFragment.O((RepairDetailsFragment) obj4, (CareServiceDetailUiModel) obj3, (String) obj, (Bundle) obj2);
            case 2:
                RepairsBffViewState repairsBffViewState = (RepairsBffViewState) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (repairsBffViewState.f64091k.f64010b) {
                        RepairListBffScreenKt.c(0, composer, WindowInsetsPadding_androidKt.b(BackgroundKt.b(pq0.j(1418344151, composer, "RepairListBffScreen$lambda$1"), LVAppDesignKitTheme.c(composer).f48361b.f48374a, RectangleShapeKt.f8913a)), function0);
                        composer.F();
                    } else {
                        composer.L(1418650710);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 3:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                float fFloatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                float f2 = ref$FloatRef.f71918b;
                ref$FloatRef.f71918b = ((ScrollScope) obj3).e(fFloatValue - f2) + f2;
                return Unit.f71739a;
            case 4:
                HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = (HistoryItemUiModel.HistoryProductUiModel) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                historyProductUiModel.getClass();
                ((Function1) obj4).invoke(historyProductUiModel);
                String str2 = historyProductUiModel.f64241a;
                SearchScreenComposableKt.c((SearchViewModel) obj3, str2, historyProductUiModel.f64242b, historyProductUiModel.d, iIntValue2, new SearchTrackingUiModel.OnHitOnProductHistory(str2, null));
                return Unit.f71739a;
            case 5:
                SavedStateConfiguration savedStateConfiguration = (SavedStateConfiguration) obj3;
                obj2.getClass();
                savedStateConfiguration.getClass();
                MapsKt.c();
                Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                new SavedStateEncoder(bundleA, savedStateConfiguration).d((NavBackStackSerializer) obj4, obj2);
                return bundleA;
            case 6:
                ShadeFinderTracker shadeFinderTracker = (ShadeFinderTracker) obj4;
                Function0 function1 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    FloatingTopBarType floatingTopBarType = FloatingTopBarType.Close;
                    String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                    boolean zY = composer2.y(shadeFinderTracker) | composer2.K(function1);
                    Object objX = composer2.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new rv0(shadeFinderTracker, function1, 1);
                        composer2.q(objX);
                    }
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, null, strC, (Function0) objX, null, null, composer2, 48, 205);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                SimpleLayoutKt.a((Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                SingleImageViewerKt.a((String) obj4, (ProductBackground) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                final SpotlightActivity spotlightActivity = (SpotlightActivity) obj4;
                View view = (View) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                SpotlightActivity.Companion companion = SpotlightActivity.r;
                if (composer3.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    SpotlightViewModel spotlightViewModelH = spotlightActivity.H();
                    boolean zY2 = composer3.y(spotlightActivity) | composer3.y(view);
                    Object objX2 = composer3.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new p01(spotlightActivity, view, z ? 1 : 0);
                        composer3.q(objX2);
                    }
                    Function0 function2 = (Function0) objX2;
                    boolean zY3 = composer3.y(spotlightActivity);
                    Object objX3 = composer3.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        final int i4 = z ? 1 : 0;
                        objX3 = new Function1() { // from class: q01
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                SpotlightCtaUiModel spotlightCtaUiModel;
                                SpotlightCtaUiModel spotlightCtaUiModel2;
                                ContributionLinkUiModel contributionLinkUiModel;
                                switch (i4) {
                                    case 0:
                                        int iIntValue5 = ((Integer) obj5).intValue();
                                        SpotlightActivity.Companion companion2 = SpotlightActivity.r;
                                        SpotlightActivity spotlightActivity2 = spotlightActivity;
                                        List list = ((SpotlightViewState) spotlightActivity2.H().getB().getValue()).f64679a;
                                        if (iIntValue5 >= 0 && iIntValue5 < list.size()) {
                                            SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) CollectionsKt.G(iIntValue5, list);
                                            if (spotlightSlideUiModel != null && (spotlightCtaUiModel = spotlightSlideUiModel.f64656i) != null) {
                                                ContributionLinkNavigator contributionLinkNavigator = spotlightActivity2.p;
                                                if (contributionLinkNavigator == null) {
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                                }
                                                ContributionLinkNavigator.a(contributionLinkNavigator, spotlightActivity2, spotlightCtaUiModel.f64642b, null, null, null, 28);
                                            }
                                            spotlightActivity2.H().X9(SpotlightTrackingUiModel.OnCollectionCTAClickedEvent.f64661a);
                                        }
                                        return Unit.f71739a;
                                    default:
                                        HotspotContentUiModel hotspotContentUiModel = (HotspotContentUiModel) obj5;
                                        SpotlightActivity.Companion companion3 = SpotlightActivity.r;
                                        hotspotContentUiModel.getClass();
                                        HotspotDetailUiModel hotspotDetailUiModel = hotspotContentUiModel.f64625b;
                                        if (hotspotDetailUiModel != null && (spotlightCtaUiModel2 = hotspotDetailUiModel.d) != null && (contributionLinkUiModel = spotlightCtaUiModel2.f64642b) != null) {
                                            SpotlightActivity spotlightActivity3 = spotlightActivity;
                                            ContributionLinkNavigator contributionLinkNavigator2 = spotlightActivity3.p;
                                            if (contributionLinkNavigator2 == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            ContributionLinkNavigator.a(contributionLinkNavigator2, spotlightActivity3, contributionLinkUiModel, null, null, null, 28);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer3.q(objX3);
                    }
                    Function1 function3 = (Function1) objX3;
                    boolean zY4 = composer3.y(spotlightActivity);
                    Object objX4 = composer3.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new o01(spotlightActivity, i3);
                        composer3.q(objX4);
                    }
                    Function2 function4 = (Function2) objX4;
                    boolean zY5 = composer3.y(spotlightActivity);
                    Object objX5 = composer3.x();
                    if (zY5 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new Function1() { // from class: q01
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                SpotlightCtaUiModel spotlightCtaUiModel;
                                SpotlightCtaUiModel spotlightCtaUiModel2;
                                ContributionLinkUiModel contributionLinkUiModel;
                                switch (i3) {
                                    case 0:
                                        int iIntValue5 = ((Integer) obj5).intValue();
                                        SpotlightActivity.Companion companion2 = SpotlightActivity.r;
                                        SpotlightActivity spotlightActivity2 = spotlightActivity;
                                        List list = ((SpotlightViewState) spotlightActivity2.H().getB().getValue()).f64679a;
                                        if (iIntValue5 >= 0 && iIntValue5 < list.size()) {
                                            SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) CollectionsKt.G(iIntValue5, list);
                                            if (spotlightSlideUiModel != null && (spotlightCtaUiModel = spotlightSlideUiModel.f64656i) != null) {
                                                ContributionLinkNavigator contributionLinkNavigator = spotlightActivity2.p;
                                                if (contributionLinkNavigator == null) {
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                                }
                                                ContributionLinkNavigator.a(contributionLinkNavigator, spotlightActivity2, spotlightCtaUiModel.f64642b, null, null, null, 28);
                                            }
                                            spotlightActivity2.H().X9(SpotlightTrackingUiModel.OnCollectionCTAClickedEvent.f64661a);
                                        }
                                        return Unit.f71739a;
                                    default:
                                        HotspotContentUiModel hotspotContentUiModel = (HotspotContentUiModel) obj5;
                                        SpotlightActivity.Companion companion3 = SpotlightActivity.r;
                                        hotspotContentUiModel.getClass();
                                        HotspotDetailUiModel hotspotDetailUiModel = hotspotContentUiModel.f64625b;
                                        if (hotspotDetailUiModel != null && (spotlightCtaUiModel2 = hotspotDetailUiModel.d) != null && (contributionLinkUiModel = spotlightCtaUiModel2.f64642b) != null) {
                                            SpotlightActivity spotlightActivity3 = spotlightActivity;
                                            ContributionLinkNavigator contributionLinkNavigator2 = spotlightActivity3.p;
                                            if (contributionLinkNavigator2 == null) {
                                                Intrinsics.h("contributionLinkNavigator");
                                                throw null;
                                            }
                                            ContributionLinkNavigator.a(contributionLinkNavigator2, spotlightActivity3, contributionLinkUiModel, null, null, null, 28);
                                        }
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer3.q(objX5);
                    }
                    SpotlightComposableKt.a(spotlightViewModelH, function2, function3, function4, (Function1) objX5, composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 10:
                StoreModeCategoryL1UiModel storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) obj4;
                Function0 function5 = (Function0) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, storeModeCategoryL1UiModel.f65043b, null, null, function5, null, null, null, null, composer4, 0, 0, 4023);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 11:
                StoreModeCategoryL2UiModel storeModeCategoryL2UiModel = (StoreModeCategoryL2UiModel) obj4;
                Function0 function6 = (Function0) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, storeModeCategoryL2UiModel.f65046b, null, null, function6, null, null, null, null, composer5, 0, 0, 4023);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                StoryHeaderKt.a((Modifier) obj4, (StoryHeaderUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) obj4;
                Function2 function7 = (Function2) obj3;
                ((Boolean) obj2).getClass();
                ((String) obj).getClass();
                String str3 = productFilterValueUiModel.d;
                if (str3 != null) {
                    function7.invoke(productFilterValueUiModel.f62966b, str3);
                }
                return Unit.f71739a;
            case 14:
                MutableState mutableState = (MutableState) obj4;
                String str4 = (String) obj3;
                Composer composer6 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                float f3 = ThankYouScreenKt.f65243a;
                if (composer6.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(AnimationSpecKt.c(1000, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, null, ComposableLambdaKt.b(-1771828812, new la(str4, 8), composer6), composer6, 196992, 26);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 15:
                String str5 = (String) obj4;
                PerfumeSampleUiModel perfumeSampleUiModel = (PerfumeSampleUiModel) obj3;
                Composer composer7 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                float f4 = ThankYouScreenKt.f65243a;
                if (composer7.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    String str6 = perfumeSampleUiModel.f55216e;
                    if (str6 == null) {
                        str6 = "";
                    }
                    ThankYouScreenKt.c(null, str5, str6, 0, null, composer7, 0, 25);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 16:
                TheLookImmersiveArticleViewModel theLookImmersiveArticleViewModel = (TheLookImmersiveArticleViewModel) obj4;
                String str7 = (String) obj;
                ImmersiveArticleLookCardUiModel immersiveArticleLookCardUiModel = (ImmersiveArticleLookCardUiModel) obj2;
                str7.getClass();
                immersiveArticleLookCardUiModel.getClass();
                String str8 = immersiveArticleLookCardUiModel.f58681a;
                theLookImmersiveArticleViewModel.w2(new TheLookImmersiveArticleTrackingUiModel.ProductImageImmersiveArticle(str7, str8));
                theLookImmersiveArticleViewModel.ea(((TheLookImmersiveArticleViewState) theLookImmersiveArticleViewModel.getM().getValue()).f65395e.indexOf(immersiveArticleLookCardUiModel), str8);
                ((Function0) obj3).mo47invoke();
                return Unit.f71739a;
            case 17:
                ThematicPlpViewModel thematicPlpViewModel = (ThematicPlpViewModel) obj4;
                Function1 function8 = (Function1) obj3;
                ProductShortUiModel productShortUiModel = (ProductShortUiModel) obj;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                productShortUiModel.getClass();
                String str9 = productShortUiModel.f62987e;
                if (zBooleanValue) {
                    thematicPlpViewModel.w9(new ThematicPlpTrackingUiModel.BrandContentClickedEvent(str9, null));
                } else {
                    thematicPlpViewModel.w9(new ThematicPlpTrackingUiModel.ProductClickedEvent(str9, null));
                }
                function8.invoke(productShortUiModel);
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                ThematicPlpHelperKt.a((ScrollableState) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 19:
                Modifier modifierE = (Modifier) obj4;
                TrendingItemUiModel trendingItemUiModel = (TrendingItemUiModel) obj3;
                Composer composer8 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "TrendingItemComposable$lambda$0");
                }
                if (composer8.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    TrendingComposableKt.c(PaddingKt.k(modifierE, LVAppDesignKitTheme.l(composer8).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ComposableLambdaKt.b(1489094714, new z41(trendingItemUiModel, z ? 1 : 0), composer8), composer8, 48);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                TrendingComposableKt.c((Modifier) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 21:
                Tutorial tutorial = (Tutorial) obj;
                TrackingFrom trackingFrom = (TrackingFrom) obj2;
                TutorialFragment.Companion companion2 = TutorialFragment.I;
                tutorial.getClass();
                trackingFrom.getClass();
                Context contextRequireContext = ((TutorialFragment) obj4).requireContext();
                VideoActivity.Companion companion3 = VideoActivity.m;
                Context context = ((RecyclerView) obj3).getContext();
                context.getClass();
                Video video = tutorial.f67318b;
                String str10 = video.f67319a;
                String str11 = video.f67320b;
                String str12 = tutorial.f67317a;
                companion3.getClass();
                contextRequireContext.startActivity(VideoActivity.Companion.b(context, trackingFrom, str10, str11, str12));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                TutorialStepByStepKt.a((Modifier) obj4, (TutorialSectionDataUiModel.StepsSectionUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                VideoPlayerComponentKt.a((ExoPlayer) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                WishlistLoadingScreenKt.a((Function2) obj4, (WindowInsets) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            default:
                WishlistViewState wishlistViewState = (WishlistViewState) obj4;
                Function0 function9 = (Function0) obj3;
                Composer composer9 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                if (composer9.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    WishlistUiModel wishlistUiModel2 = wishlistViewState.d;
                    if (!CollectionExtKt.a(wishlistUiModel2 != null ? wishlistUiModel2.f65755a : null) || (wishlistUiModel = wishlistViewState.d) == null || (str = wishlistUiModel.f65756b) == null || !StringKtExtKt.g(str)) {
                        composer9.L(350642717);
                        composer9.F();
                    } else {
                        composer9.L(350326114);
                        LVIconButtonKt.b(n00.g("WishlistScreen$lambda$1", "wishlist_share_button"), LVAppDesignKitTheme.f(composer9).f48480e, LVAppDesignKitTheme.g(composer9).u, null, null, false, 0, false, false, function9, composer9, 0, 0, 1016);
                        composer9.F();
                    }
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ es0(Object obj, Object obj2, int i2, int i3) {
        this.f68936b = i3;
        this.f68937c = obj;
        this.d = obj2;
    }
}
