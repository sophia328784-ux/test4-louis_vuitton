package com.vuitton.android.presentation.link.navigation;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.R;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.helper.NavigationHelper;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity;
import com.vuitton.android.presentation.screen.booking.BookingActivity;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.plp.activities.CatalogPLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.portal.PortalSliderActivity;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.spotlight.SpotlightActivity;
import com.vuitton.android.presentation.screen.story.StoryActivity;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.tr;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;", "", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/presentation/helper/NavigationHelper;", "navigationHelper", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/presentation/link/LinkHandler;", "linkHandler", "<init>", "(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/link/LinkHandler;)V", "ContributionLinkNavigationAnimation", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContributionLinkNavigator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserSessionService f51689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f51690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NavigationHelper f51691c;
    public final IsFeatureAvailableUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkHandler f51692e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;", "", "PUSH_LEFT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ContributionLinkNavigationAnimation {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ContributionLinkNavigationAnimation[] $VALUES;
        public static final ContributionLinkNavigationAnimation PUSH_LEFT;

        static {
            ContributionLinkNavigationAnimation contributionLinkNavigationAnimation = new ContributionLinkNavigationAnimation("PUSH_LEFT", 0);
            PUSH_LEFT = contributionLinkNavigationAnimation;
            ContributionLinkNavigationAnimation[] contributionLinkNavigationAnimationArr = {contributionLinkNavigationAnimation};
            $VALUES = contributionLinkNavigationAnimationArr;
            $ENTRIES = EnumEntriesKt.a(contributionLinkNavigationAnimationArr);
        }

        public static ContributionLinkNavigationAnimation valueOf(String str) {
            return (ContributionLinkNavigationAnimation) Enum.valueOf(ContributionLinkNavigationAnimation.class, str);
        }

        public static ContributionLinkNavigationAnimation[] values() {
            return (ContributionLinkNavigationAnimation[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51693a;

        static {
            int[] iArr = new int[ContributionLinkNavigationAnimation.values().length];
            try {
                iArr[ContributionLinkNavigationAnimation.PUSH_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f51693a = iArr;
        }
    }

    @Inject
    public ContributionLinkNavigator(UserSessionService userSessionService, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, NavigationHelper navigationHelper, IsFeatureAvailableUseCase isFeatureAvailableUseCase, LinkHandler linkHandler) {
        userSessionService.getClass();
        requireCachedAppConfigUseCase.getClass();
        navigationHelper.getClass();
        isFeatureAvailableUseCase.getClass();
        linkHandler.getClass();
        this.f51689a = userSessionService;
        this.f51690b = requireCachedAppConfigUseCase;
        this.f51691c = navigationHelper;
        this.d = isFeatureAvailableUseCase;
        this.f51692e = linkHandler;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x02c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:110:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:112:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:113:0x02da  */
    /* JADX WARN: Code duplicated, block: B:116:0x02e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:118:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:120:0x0304  */
    /* JADX WARN: Code duplicated, block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x025d  */
    public static void a(ContributionLinkNavigator contributionLinkNavigator, FragmentActivity fragmentActivity, ContributionLinkUiModel contributionLinkUiModel, Bundle bundle, ContributionLinkNavigationAnimation contributionLinkNavigationAnimation, ActivityResultLauncher activityResultLauncher, int i2) {
        FragmentActivity fragmentActivity2;
        ActivityResultLauncher activityResultLauncher2;
        Intent intentA;
        boolean z;
        ActivityOptions activityOptionsMakeCustomAnimation;
        Bundle bundle2 = null;
        Bundle bundle3 = (i2 & 4) != 0 ? null : bundle;
        ContributionLinkNavigationAnimation contributionLinkNavigationAnimation2 = (i2 & 8) != 0 ? null : contributionLinkNavigationAnimation;
        ActivityResultLauncher activityResultLauncher3 = (i2 & 16) != 0 ? null : activityResultLauncher;
        contributionLinkNavigator.getClass();
        fragmentActivity.getClass();
        contributionLinkUiModel.getClass();
        if (!(contributionLinkUiModel instanceof ContributionLinkUiModel.AICompanion)) {
            if (contributionLinkUiModel.equals(ContributionLinkUiModel.Wishlist.f51186b)) {
                fragmentActivity2 = fragmentActivity;
                intentA = WishlistActivity.Companion.a(WishlistActivity.t, fragmentActivity2, false, null, null, 14);
            } else {
                fragmentActivity2 = fragmentActivity;
                if (contributionLinkUiModel.equals(ContributionLinkUiModel.MyLv.f51171b)) {
                    MyLvActivity.s.getClass();
                    intentA = MyLvActivity.Companion.a(fragmentActivity2, null);
                } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.WishlistShared) {
                    WishlistActivity.Companion companion = WishlistActivity.t;
                    ContributionLinkUiModel.WishlistShared wishlistShared = (ContributionLinkUiModel.WishlistShared) contributionLinkUiModel;
                    List list = wishlistShared.f51188c;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        String str = ((SkuIdUiModel) it.next()).f61764b;
                        SkuIdUiModel.f61763c.getClass();
                        SkuIdUiModel.Companion.b(str);
                        arrayList.add(new SkuId(str));
                    }
                    intentA = WishlistActivity.Companion.a(companion, fragmentActivity2, false, arrayList, wishlistShared.f51187b, 2);
                } else {
                    if (!(contributionLinkUiModel instanceof ContributionLinkUiModel.Category)) {
                        if (contributionLinkUiModel instanceof ContributionLinkUiModel.ExclusiveOffer) {
                            ExclusivePLPActivity.Companion companion2 = ExclusivePLPActivity.p;
                            String str2 = ((ContributionLinkUiModel.ExclusiveOffer) contributionLinkUiModel).f51167b;
                            companion2.getClass();
                            intentA = ExclusivePLPActivity.Companion.a(fragmentActivity2, str2);
                        } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.ImmersiveArticle) {
                            intentA = ImmersiveArticleActivity.Companion.a(ImmersiveArticleActivity.H, fragmentActivity2, ((ContributionLinkUiModel.ImmersiveArticle) contributionLinkUiModel).f51168b, null, null, null, null, 124);
                        } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.Monogram) {
                            activityResultLauncher2 = activityResultLauncher3;
                            fragmentActivity2 = fragmentActivity;
                            intentA = WebViewActivity.Companion.a(WebViewActivity.v, fragmentActivity2, ((ContributionLinkUiModel.Monogram) contributionLinkUiModel).f51169b, false, false, null, null, null, false, false, CustomizationType.MONOGRAM, 1532);
                        } else {
                            fragmentActivity2 = fragmentActivity;
                            activityResultLauncher2 = activityResultLauncher3;
                            if (contributionLinkUiModel instanceof ContributionLinkUiModel.RepairCreate) {
                                intentA = contributionLinkNavigator.f51689a.b() ? ServicesDestinationsKt.a(ServicesDestinations.ToCareServicesCreatePage.f64291a, fragmentActivity2) : ServicesDestinationsKt.a(ServicesDestinations.ToWelcomePage.f64303a, fragmentActivity2);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.Osa) {
                                intentA = ServicesDestinationsKt.a(new ServicesDestinations.ToOsaPage(OsaRoutesName.LOCATION_FORM, ((ContributionLinkUiModel.Osa) contributionLinkUiModel).f51172b, null, null, false, OsaOriginScreen.CONTRIBUTION_LINK, null, false, 220, null), fragmentActivity2);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.Portal) {
                                PortalSliderActivity.Companion companion3 = PortalSliderActivity.s;
                                String str3 = ((ContributionLinkUiModel.Portal) contributionLinkUiModel).f51174b;
                                companion3.getClass();
                                intentA = PortalSliderActivity.Companion.a(fragmentActivity2, str3);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.Product) {
                                ContributionLinkUiModel.Product product = (ContributionLinkUiModel.Product) contributionLinkUiModel;
                                intentA = PdpActivity.Companion.a(PdpActivity.D, fragmentActivity2, product.f51175b, false, null, null, null, product.f51176c, 60);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.ProductList) {
                                intentA = SkusPLPActivity.Companion.b(SkusPLPActivity.p, fragmentActivity2, ((ContributionLinkUiModel.ProductList) contributionLinkUiModel).f51177b);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.SeoLandingPage) {
                                intentA = ImmersiveArticleActivity.Companion.a(ImmersiveArticleActivity.H, fragmentActivity2, ((ContributionLinkUiModel.SeoLandingPage) contributionLinkUiModel).f51180b, ImmersiveArticleType.SEO_LANDING_PAGE.getType(), null, null, null, 120);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.ShadeFinder) {
                                BeautyVtoActivity.D.getClass();
                                intentA = new Intent(fragmentActivity2, (Class<?>) BeautyVtoActivity.class);
                                intentA.putExtra("PRODUCT", (Parcelable) null);
                                intentA.putExtra("isShadeFinder", true);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.Spotlight) {
                                SpotlightActivity.Companion companion4 = SpotlightActivity.r;
                                String str4 = ((ContributionLinkUiModel.Spotlight) contributionLinkUiModel).f51182b;
                                companion4.getClass();
                                str4.getClass();
                                intentA = new Intent(fragmentActivity2, (Class<?>) SpotlightActivity.class);
                                intentA.putExtra("COLLECTION_ID", str4);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.Story) {
                                intentA = StoryActivity.Companion.a(StoryActivity.t, fragmentActivity2, ((ContributionLinkUiModel.Story) contributionLinkUiModel).f51183b, 12).addFlags(4096);
                            } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.WebView) {
                                UrlFactory.Companion companion5 = UrlFactory.f65880b;
                                String str5 = contributionLinkNavigator.f51690b.a().f67233e;
                                String str6 = ((ContributionLinkUiModel.WebView) contributionLinkUiModel).f51185b;
                                if (str6 == null) {
                                    str6 = "";
                                }
                                companion5.getClass();
                                str5.getClass();
                                String strH = tr.h(StringsKt.F(str5, "/"), "/", StringsKt.E(str6, "/"));
                                String str7 = StringExtKt.a(strH) ? strH : null;
                                if (str7 != null) {
                                    intentA = WebViewActivity.Companion.a(WebViewActivity.v, fragmentActivity2, str7, false, false, null, null, null, false, false, null, 2044);
                                } else {
                                    intentA = null;
                                }
                            } else if (!(contributionLinkUiModel instanceof ContributionLinkUiModel.BookingExperience)) {
                                if (contributionLinkUiModel instanceof ContributionLinkUiModel.Other) {
                                    LinkHandler linkHandler = contributionLinkNavigator.f51692e;
                                    String str8 = ((ContributionLinkUiModel.Other) contributionLinkUiModel).f51173b;
                                    int i3 = LinkHandler.f51604e;
                                    if (!linkHandler.a(str8, fragmentActivity2, null)) {
                                        ActivityExtKt.h(fragmentActivity2, str8, null, 6);
                                    }
                                } else if (contributionLinkUiModel instanceof ContributionLinkUiModel.AudioGuide) {
                                    AudioGuideActivity.Companion companion6 = AudioGuideActivity.r;
                                    String str9 = ((ContributionLinkUiModel.AudioGuide) contributionLinkUiModel).f51164b;
                                    companion6.getClass();
                                    intentA = AudioGuideActivity.Companion.a(fragmentActivity2, str9, null);
                                } else if (!(contributionLinkUiModel instanceof ContributionLinkUiModel.PushNotification) && !(contributionLinkUiModel instanceof ContributionLinkUiModel.Unknown)) {
                                    v40.g();
                                    return;
                                }
                                intentA = null;
                            } else if (contributionLinkNavigator.d.b(new Feature[]{Feature.BOOKING_MY_EXPERIENCES})) {
                                BookingActivity.Companion companion7 = BookingActivity.r;
                                String str10 = ((ContributionLinkUiModel.BookingExperience) contributionLinkUiModel).f51165b;
                                companion7.getClass();
                                str10.getClass();
                                intentA = new Intent(fragmentActivity2, (Class<?>) BookingActivity.class);
                                intentA.putExtra("extra_experience_id", str10);
                            } else {
                                intentA = null;
                            }
                        }
                        if (intentA != null) {
                            if (bundle3 != null) {
                                intentA.putExtras(bundle3);
                            }
                            if (contributionLinkNavigationAnimation2 != null) {
                                if (fragmentActivity2.getResources().getConfiguration().getLayoutDirection() == 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (WhenMappings.f51693a[contributionLinkNavigationAnimation2.ordinal()] != 1) {
                                    v40.g();
                                    return;
                                }
                                if (z) {
                                    activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(fragmentActivity2, R.anim.push_right_in, R.anim.push_right_out);
                                } else {
                                    activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(fragmentActivity2, R.anim.push_left_in, R.anim.push_left_out);
                                }
                                activityOptionsMakeCustomAnimation.getClass();
                                bundle2 = activityOptionsMakeCustomAnimation.toBundle();
                            }
                            contributionLinkNavigator.f51691c.a(intentA, fragmentActivity2, activityResultLauncher2, bundle2);
                        }
                    }
                    CatalogPLPActivity.Companion companion8 = CatalogPLPActivity.x;
                    String str11 = ((ContributionLinkUiModel.Category) contributionLinkUiModel).f51166b;
                    companion8.getClass();
                    str11.getClass();
                    intentA = new Intent(fragmentActivity2, (Class<?>) CatalogPLPActivity.class).putExtra("nav_arg_plp_key", str11).putExtra("nav_arg_theme_id", (String) null);
                    intentA.getClass();
                }
            }
            activityResultLauncher2 = activityResultLauncher3;
            if (intentA != null) {
                if (bundle3 != null) {
                    intentA.putExtras(bundle3);
                }
                if (contributionLinkNavigationAnimation2 != null) {
                    if (fragmentActivity2.getResources().getConfiguration().getLayoutDirection() == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (WhenMappings.f51693a[contributionLinkNavigationAnimation2.ordinal()] != 1) {
                        v40.g();
                        return;
                    }
                    if (z) {
                        activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(fragmentActivity2, R.anim.push_right_in, R.anim.push_right_out);
                    } else {
                        activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(fragmentActivity2, R.anim.push_left_in, R.anim.push_left_out);
                    }
                    activityOptionsMakeCustomAnimation.getClass();
                    bundle2 = activityOptionsMakeCustomAnimation.toBundle();
                }
                contributionLinkNavigator.f51691c.a(intentA, fragmentActivity2, activityResultLauncher2, bundle2);
            }
        }
        AICompanionActivity.v.getClass();
        intentA = AICompanionActivity.Companion.a(fragmentActivity);
        fragmentActivity2 = fragmentActivity;
        activityResultLauncher2 = activityResultLauncher3;
        if (intentA != null) {
            if (bundle3 != null) {
                intentA.putExtras(bundle3);
            }
            if (contributionLinkNavigationAnimation2 != null) {
                if (fragmentActivity2.getResources().getConfiguration().getLayoutDirection() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (WhenMappings.f51693a[contributionLinkNavigationAnimation2.ordinal()] != 1) {
                    v40.g();
                    return;
                }
                if (z) {
                    activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(fragmentActivity2, R.anim.push_right_in, R.anim.push_right_out);
                } else {
                    activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(fragmentActivity2, R.anim.push_left_in, R.anim.push_left_out);
                }
                activityOptionsMakeCustomAnimation.getClass();
                bundle2 = activityOptionsMakeCustomAnimation.toBundle();
            }
            contributionLinkNavigator.f51691c.a(intentA, fragmentActivity2, activityResultLauncher2, bundle2);
        }
    }
}
