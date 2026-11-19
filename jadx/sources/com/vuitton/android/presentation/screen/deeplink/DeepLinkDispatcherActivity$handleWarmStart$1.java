package com.vuitton.android.presentation.screen.deeplink;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.presentation.extensions.StringAndroidExtKt;
import com.vuitton.android.presentation.helper.NavigationHelper;
import com.vuitton.android.presentation.link.models.LinkRoutingData;
import com.vuitton.android.presentation.link.models.LinkTarget;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.link.navigation.LinkNavigator;
import com.vuitton.android.presentation.link.parsing.AppLinkPatterns;
import com.vuitton.android.presentation.link.parsing.LinkClassifier;
import com.vuitton.android.presentation.link.parsing.LinkParser;
import com.vuitton.android.presentation.link.parsing.WarmStartLinkExclusionPolicy;
import com.vuitton.android.presentation.push.UtmNotificationTracker;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinations;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinationsKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesActivity;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import defpackage.md;
import defpackage.v40;
import defpackage.w1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity$handleWarmStart$1", f = "DeepLinkDispatcherActivity.kt", l = {149}, m = "invokeSuspend", v = 2)
final class DeepLinkDispatcherActivity$handleWarmStart$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkDispatcherActivity f56848c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ w1 f56849e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkDispatcherActivity$handleWarmStart$1(DeepLinkDispatcherActivity deepLinkDispatcherActivity, String str, w1 w1Var, Continuation continuation) {
        super(2, continuation);
        this.f56848c = deepLinkDispatcherActivity;
        this.d = str;
        this.f56849e = w1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeepLinkDispatcherActivity$handleWarmStart$1(this.f56848c, this.d, this.f56849e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkDispatcherActivity$handleWarmStart$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0266  */
    /* JADX WARN: Code duplicated, block: B:192:0x0426  */
    /* JADX WARN: Code duplicated, block: B:194:0x0444  */
    /* JADX WARN: Code duplicated, block: B:195:0x0448  */
    /* JADX WARN: Code duplicated, block: B:198:0x0451  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objQ;
        Class cls;
        LinkNavigator linkNavigator;
        ActivityResultLauncher activityResultLauncher;
        LinkTarget.ForwardToExistingFlow forwardToExistingFlow;
        LinkTarget linkTargetD;
        Intent intentA;
        Intent intentA2;
        LinkTarget standaloneIntent;
        Object failure;
        ComponentName componentName;
        String className;
        Intent intentA3;
        Uri data;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56847b;
        DeepLinkDispatcherActivity deepLinkDispatcherActivity = this.f56848c;
        if (i2 == 0) {
            ResultKt.b(obj);
            StateFlow stateFlow = ((DeepLinkDispatcherViewModel) deepLinkDispatcherActivity.p.getF71699b()).f56858e;
            DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1 deepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1 = new DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1(2, null);
            this.f56847b = 1;
            objQ = FlowKt.q(stateFlow, deepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1, this);
            if (objQ == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objQ = obj;
        }
        RoutingDataState routingDataState = (RoutingDataState) objQ;
        if (routingDataState instanceof RoutingDataState.Success) {
            deepLinkDispatcherActivity.D();
            LinkRoutingData linkRoutingData = ((RoutingDataState.Success) routingDataState).f56871a;
            WarmStartLinkExclusionPolicy warmStartLinkExclusionPolicy = deepLinkDispatcherActivity.n;
            if (warmStartLinkExclusionPolicy == null) {
                Intrinsics.h("warmStartLinkExclusionPolicy");
                throw null;
            }
            linkRoutingData.getClass();
            LinkClassifier linkClassifier = warmStartLinkExclusionPolicy.f51712a;
            String str = this.d;
            if (linkClassifier.a(str) && (linkRoutingData.f51632a.contains(str) || AppLinkPatterns.a(str))) {
                deepLinkDispatcherActivity.D();
                deepLinkDispatcherActivity.startActivity(deepLinkDispatcherActivity.B(MainActivity.class));
            } else {
                LinkParser linkParser = deepLinkDispatcherActivity.l;
                if (linkParser == null) {
                    Intrinsics.h("linkParser");
                    throw null;
                }
                ParsedLink parsedLinkA = linkParser.a(str);
                if (parsedLinkA != null) {
                    LinkNavigator linkNavigator2 = deepLinkDispatcherActivity.m;
                    if (linkNavigator2 == null) {
                        Intrinsics.h("linkNavigator");
                        throw null;
                    }
                    UserSessionService userSessionService = linkNavigator2.d;
                    boolean z = linkRoutingData.f51634c;
                    boolean z2 = linkRoutingData.d;
                    boolean z3 = parsedLinkA instanceof ParsedLink.StoryArticle;
                    LinkTarget.ForwardToExistingFlow forwardToExistingFlow2 = LinkTarget.ForwardToExistingFlow.f51635a;
                    if (z3) {
                        ImmersiveArticleDestinations immersiveArticleDestinationsB = ImmersiveArticleDestinationsKt.b((126 & 1) != 0 ? null : null, (126 & 2) != 0 ? null : ((ParsedLink.StoryArticle) parsedLinkA).f51685b, ImmersiveArticleType.IMMERSIVE_ARTICLE.getType(), null, null, null);
                        standaloneIntent = LinkNavigator.d(immersiveArticleDestinationsB != null ? ImmersiveArticleDestinationsKt.a(immersiveArticleDestinationsB, deepLinkDispatcherActivity) : null);
                    } else {
                        if (parsedLinkA instanceof ParsedLink.ImmersiveArticle) {
                            ImmersiveArticleDestinations immersiveArticleDestinationsB2 = ImmersiveArticleDestinationsKt.b((126 & 1) != 0 ? null : ((ParsedLink.ImmersiveArticle) parsedLinkA).f51662b, (126 & 2) != 0 ? null : null, ImmersiveArticleType.IMMERSIVE_ARTICLE.getType(), null, null, null);
                            standaloneIntent = LinkNavigator.d(immersiveArticleDestinationsB2 != null ? ImmersiveArticleDestinationsKt.a(immersiveArticleDestinationsB2, deepLinkDispatcherActivity) : null);
                        } else {
                            if (parsedLinkA instanceof ParsedLink.WebView) {
                                activityResultLauncher = null;
                                linkNavigator = linkNavigator2;
                                linkTargetD = new LinkTarget.StandaloneIntent(WebViewActivity.Companion.a(WebViewActivity.v, deepLinkDispatcherActivity, ((ParsedLink.WebView) parsedLinkA).f51687b, false, false, null, null, null, false, false, null, 2044));
                                cls = MainActivity.class;
                                forwardToExistingFlow = forwardToExistingFlow2;
                            } else {
                                linkNavigator = linkNavigator2;
                                if (parsedLinkA instanceof ParsedLink.StoreLocator) {
                                    activityResultLauncher = null;
                                    forwardToExistingFlow = forwardToExistingFlow2;
                                    cls = MainActivity.class;
                                    linkTargetD = new LinkTarget.StandaloneIntent(WebViewActivity.Companion.a(WebViewActivity.v, deepLinkDispatcherActivity, linkRoutingData.f51633b, false, false, null, null, null, false, false, null, 2044));
                                } else {
                                    activityResultLauncher = null;
                                    forwardToExistingFlow = forwardToExistingFlow2;
                                    linkNavigator = linkNavigator;
                                    if (parsedLinkA instanceof ParsedLink.SharedWishlist) {
                                        ParsedLink.SharedWishlist sharedWishlist = (ParsedLink.SharedWishlist) parsedLinkA;
                                        standaloneIntent = new LinkTarget.StandaloneIntent(WishlistActivity.Companion.a(WishlistActivity.t, deepLinkDispatcherActivity, false, sharedWishlist.f51682b, sharedWishlist.f51683c, 2));
                                    } else {
                                        boolean zBooleanValue = false;
                                        if (parsedLinkA.equals(ParsedLink.PersonalWishlist.f51675b)) {
                                            ActivityManager activityManager = (ActivityManager) deepLinkDispatcherActivity.getSystemService(ActivityManager.class);
                                            if (activityManager != null) {
                                                try {
                                                    Result.Companion companion = Result.INSTANCE;
                                                    List<ActivityManager.AppTask> appTasks = activityManager.getAppTasks();
                                                    appTasks.getClass();
                                                    List<ActivityManager.AppTask> list = appTasks;
                                                    if (!(list instanceof Collection) || !list.isEmpty()) {
                                                        Iterator<T> it = list.iterator();
                                                        while (it.hasNext()) {
                                                            ActivityManager.RecentTaskInfo taskInfo = ((ActivityManager.AppTask) it.next()).getTaskInfo();
                                                            if ((taskInfo == null || (componentName = taskInfo.topActivity) == null || (className = componentName.getClassName()) == null) ? false : !CollectionsKt.P(MainActivity.class.getName(), DeepLinkDispatcherActivity.class.getName()).contains(className)) {
                                                                zBooleanValue = true;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                    failure = Boolean.valueOf(zBooleanValue);
                                                } catch (Throwable th) {
                                                    Result.Companion companion2 = Result.INSTANCE;
                                                    failure = new Result.Failure(th);
                                                }
                                                Object obj2 = Boolean.FALSE;
                                                Result.Companion companion3 = Result.INSTANCE;
                                                if (failure instanceof Result.Failure) {
                                                    failure = obj2;
                                                }
                                                zBooleanValue = ((Boolean) failure).booleanValue();
                                            }
                                            if (!zBooleanValue) {
                                                intentA3 = null;
                                            } else if (userSessionService.b()) {
                                                intentA3 = WishlistActivity.Companion.a(WishlistActivity.t, deepLinkDispatcherActivity, false, null, null, 14);
                                            } else {
                                                AuthenticationActivity.Companion companion4 = AuthenticationActivity.u;
                                                AuthenticationActivity.Routes routes = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST;
                                                LoginContext loginContext = LoginContext.WISHLIST;
                                                TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.WISHLIST;
                                                companion4.getClass();
                                                intentA3 = AuthenticationActivity.Companion.a(deepLinkDispatcherActivity, routes, loginContext, trackingAuthOrigin);
                                            }
                                            standaloneIntent = LinkNavigator.d(intentA3);
                                        } else if (parsedLinkA instanceof ParsedLink.CatalogProductList) {
                                            standaloneIntent = LinkNavigator.d(LinkNavigator.a(deepLinkDispatcherActivity, ((ParsedLink.CatalogProductList) parsedLinkA).f51650b));
                                        } else {
                                            if ((parsedLinkA instanceof ParsedLink.AuthenticateGoogle) || (parsedLinkA instanceof ParsedLink.AuthenticateLine) || (parsedLinkA instanceof ParsedLink.AuthenticateKakao) || (parsedLinkA instanceof ParsedLink.RepairCreate) || (parsedLinkA instanceof ParsedLink.Appointments)) {
                                                cls = MainActivity.class;
                                            } else if (parsedLinkA instanceof ParsedLink.LegalNotices) {
                                                standaloneIntent = new LinkTarget.StandaloneIntent(LinkNavigator.c(deepLinkDispatcherActivity, ((ParsedLink.LegalNotices) parsedLinkA).f51663b));
                                            } else if (parsedLinkA instanceof ParsedLink.OrderConfirmation) {
                                                String str2 = ((ParsedLink.OrderConfirmation) parsedLinkA).f51669b;
                                                String str3 = linkNavigator.f51695b.a().l;
                                                if (str2 == null) {
                                                    intentA2 = null;
                                                } else {
                                                    String str4 = StringAndroidExtKt.c(str2, str3) ? str2 : null;
                                                    if (str4 != null) {
                                                        intentA2 = WebViewActivity.Companion.a(WebViewActivity.v, deepLinkDispatcherActivity, str4, true, false, null, null, null, false, false, null, 2040);
                                                    } else {
                                                        intentA2 = null;
                                                    }
                                                }
                                                linkTargetD = LinkNavigator.d(intentA2);
                                                cls = MainActivity.class;
                                            } else {
                                                cls = MainActivity.class;
                                                if (!(parsedLinkA instanceof ParsedLink.AudioGuide) && !parsedLinkA.equals(ParsedLink.BareExplore.f51645b)) {
                                                    if (parsedLinkA.equals(ParsedLink.MyLv.f51665b)) {
                                                        MyLvActivity.s.getClass();
                                                        linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, null));
                                                    } else if (parsedLinkA.equals(ParsedLink.LvPassQrCode.f51664b)) {
                                                        if (userSessionService.b()) {
                                                            LVPassActivity.s.getClass();
                                                            intentA = LVPassActivity.Companion.a(deepLinkDispatcherActivity);
                                                        } else {
                                                            AuthenticationActivity.Companion companion5 = AuthenticationActivity.u;
                                                            AuthenticationActivity.Routes routes2 = AuthenticationActivity.Routes.WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS;
                                                            LoginContext loginContext2 = LoginContext.MY_LV;
                                                            TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                                                            companion5.getClass();
                                                            intentA = AuthenticationActivity.Companion.a(deepLinkDispatcherActivity, routes2, loginContext2, trackingAuthOrigin2);
                                                        }
                                                        linkTargetD = new LinkTarget.StandaloneIntent(intentA);
                                                    } else if (parsedLinkA.equals(ParsedLink.MyLvPrivacySettings.f51666b) || parsedLinkA.equals(ParsedLink.MyOrders.f51667b) || (parsedLinkA instanceof ParsedLink.OrderDetail) || parsedLinkA.equals(ParsedLink.Gdpr.f51661b)) {
                                                        MyLvActivity.s.getClass();
                                                        linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                    } else if (parsedLinkA.equals(ParsedLink.CertificatesList.f51655b)) {
                                                        if (z2) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA instanceof ParsedLink.CertificateDetail) {
                                                        if (z2) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA.equals(ParsedLink.CertificateDiamondActivation.f51654b)) {
                                                        if (z2) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA.equals(ParsedLink.ExclusiveSection.f51659b)) {
                                                        if (z) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA instanceof ParsedLink.ExclusiveCategory) {
                                                        if (z) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA instanceof ParsedLink.ExclusiveProduct) {
                                                        if (z) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA.equals(ParsedLink.Travels.f51686b)) {
                                                        MyLvActivity.s.getClass();
                                                        linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                    } else if (parsedLinkA instanceof ParsedLink.PairingV2) {
                                                        if (userSessionService.b()) {
                                                            MyLvActivity.s.getClass();
                                                            linkTargetD = new LinkTarget.StandaloneIntent(MyLvActivity.Companion.a(deepLinkDispatcherActivity, parsedLinkA));
                                                        }
                                                    } else if (parsedLinkA.equals(ParsedLink.PreferenceCenter.f51678b)) {
                                                        NotificationsPreferencesActivity.q.getClass();
                                                        Intent intent = new Intent(deepLinkDispatcherActivity, (Class<?>) NotificationsPreferencesActivity.class);
                                                        intent.putExtra("extra_display_bottom_sheet", false);
                                                        linkTargetD = new LinkTarget.StandaloneIntent(intent);
                                                    } else if (parsedLinkA.equals(ParsedLink.Privacy.f51679b)) {
                                                        LegalTextActivity.p.getClass();
                                                        linkTargetD = new LinkTarget.StandaloneIntent(LegalTextActivity.Companion.a(deepLinkDispatcherActivity, false));
                                                    } else {
                                                        linkTargetD = LinkNavigator.d(LinkNavigator.b(deepLinkDispatcherActivity, parsedLinkA));
                                                    }
                                                }
                                            }
                                            linkTargetD = forwardToExistingFlow;
                                        }
                                    }
                                    cls = MainActivity.class;
                                    linkTargetD = standaloneIntent;
                                }
                            }
                            linkNavigator = linkNavigator;
                        }
                        if (linkTargetD instanceof LinkTarget.StandaloneIntent) {
                            NavigationHelper.b(linkNavigator.f51696c, ((LinkTarget.StandaloneIntent) linkTargetD).f51636a.addFlags(268435456), deepLinkDispatcherActivity, activityResultLauncher, 12);
                            deepLinkDispatcherActivity.D();
                            data = deepLinkDispatcherActivity.getIntent().getData();
                            if (data != null) {
                                UtmNotificationTracker.a(deepLinkDispatcherActivity, data);
                            }
                        } else if (!linkTargetD.equals(forwardToExistingFlow)) {
                            v40.g();
                            return activityResultLauncher;
                        }
                    }
                    activityResultLauncher = null;
                    cls = MainActivity.class;
                    linkNavigator = linkNavigator2;
                    forwardToExistingFlow = forwardToExistingFlow2;
                    linkTargetD = standaloneIntent;
                    if (linkTargetD instanceof LinkTarget.StandaloneIntent) {
                        NavigationHelper.b(linkNavigator.f51696c, ((LinkTarget.StandaloneIntent) linkTargetD).f51636a.addFlags(268435456), deepLinkDispatcherActivity, activityResultLauncher, 12);
                        deepLinkDispatcherActivity.D();
                        data = deepLinkDispatcherActivity.getIntent().getData();
                        if (data != null) {
                            UtmNotificationTracker.a(deepLinkDispatcherActivity, data);
                        }
                    } else if (!linkTargetD.equals(forwardToExistingFlow)) {
                        v40.g();
                        return activityResultLauncher;
                    }
                } else {
                    cls = MainActivity.class;
                }
                deepLinkDispatcherActivity.D();
                deepLinkDispatcherActivity.startActivity(deepLinkDispatcherActivity.B(cls));
            }
        } else if (routingDataState instanceof RoutingDataState.Failure) {
            int i3 = DeepLinkDispatcherActivity.q;
            deepLinkDispatcherActivity.D();
            deepLinkDispatcherActivity.startActivity(deepLinkDispatcherActivity.B(MainActivity.class));
        } else if (!Intrinsics.c(routingDataState, RoutingDataState.Loading.f56870a)) {
            v40.g();
            return null;
        }
        this.f56849e.mo47invoke();
        return Unit.f71739a;
    }
}
