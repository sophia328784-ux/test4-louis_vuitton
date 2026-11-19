package com.vuitton.android.presentation.screen.main;

import com.vuitton.android.presentation.redirectlink.LinkEffect;
import com.vuitton.android.presentation.redirectlink.RedirectionArgs;
import com.vuitton.android.presentation.screen.authentication.LoginRedirection;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.mylv.MyLvDeeplinkRouter;
import com.vuitton.android.presentation.screen.mylv.MyLvRoutes$Routes;
import com.vuitton.android.presentation.screen.services.ServicesDeeplinkRouter;
import com.vuitton.android.presentation.screen.services.ServicesRoutes$Routes;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import defpackage.jx;
import defpackage.kb0;
import defpackage.lb0;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$listenLinkSideEffect$2", f = "MainActivity.kt", l = {658}, m = "invokeSuspend", v = 2)
final class MainActivity$listenLinkSideEffect$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f58974c;
    public final /* synthetic */ lb0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ jx f58975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ kb0 f58976f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$listenLinkSideEffect$2(MainActivity mainActivity, lb0 lb0Var, jx jxVar, kb0 kb0Var, Continuation continuation) {
        super(2, continuation);
        this.f58974c = mainActivity;
        this.d = lb0Var;
        this.f58975e = jxVar;
        this.f58976f = kb0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivity$listenLinkSideEffect$2(this.f58974c, this.d, this.f58975e, this.f58976f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivity$listenLinkSideEffect$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58973b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MainActivity.Companion companion = MainActivity.L;
            final MainActivity mainActivity = this.f58974c;
            Flow d = mainActivity.I().getD();
            final jx jxVar = this.f58975e;
            final kb0 kb0Var = this.f58976f;
            final lb0 lb0Var = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$listenLinkSideEffect$2.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    CatalogRoute catalogRoute;
                    MyLvRoutes$Routes myLvRoutes$Routes;
                    ServicesRoutes$Routes servicesRoutes$Routes;
                    LinkEffect linkEffect = (LinkEffect) obj2;
                    boolean z = linkEffect instanceof LinkEffect.Navigation.Direct;
                    CatalogRoute catalogRoute2 = null;
                    MainActivity mainActivity2 = mainActivity;
                    if (z) {
                        MainActivityRouter mainActivityRouter = mainActivity2.E;
                        if (mainActivityRouter == null) {
                            Intrinsics.h("mainActivityRouter");
                            throw null;
                        }
                        mainActivityRouter.a(mainActivity2, mainActivity2.H, (LinkEffect.Navigation.Direct) linkEffect);
                    } else if (linkEffect instanceof LinkEffect.Dialog.AlreadySignedIn) {
                        lb0Var.invoke(linkEffect);
                    } else if (linkEffect instanceof LinkEffect.Dialog.ChangeLocaleBottomSheet) {
                        jxVar.invoke(((LinkEffect.Dialog.ChangeLocaleBottomSheet) linkEffect).f51962a);
                    } else if (linkEffect instanceof LinkEffect.Navigation.RedirectAfterLogin) {
                        MainActivityRouter mainActivityRouter2 = mainActivity2.E;
                        if (mainActivityRouter2 == null) {
                            Intrinsics.h("mainActivityRouter");
                            throw null;
                        }
                        LinkEffect.Navigation.RedirectAfterLogin redirectAfterLogin = (LinkEffect.Navigation.RedirectAfterLogin) linkEffect;
                        LoginRedirection loginRedirection = redirectAfterLogin.f51998a;
                        RedirectionArgs redirectionArgs = redirectAfterLogin.f51999b;
                        int i3 = MainActivityRouter.WhenMappings.f59051a[loginRedirection.getType().ordinal()];
                        if (i3 == 1) {
                            MyLvDeeplinkRouter myLvDeeplinkRouter = mainActivityRouter2.f59048a;
                            switch (MainActivityRouter.WhenMappings.f59052b[loginRedirection.ordinal()]) {
                                case 7:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.MY_ACCOUNT;
                                    break;
                                case 8:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_MY_PROFILE;
                                    break;
                                case 9:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_MY_ORDERS;
                                    break;
                                case 10:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_WISH_LIST;
                                    break;
                                case 11:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_CERTIFICATES_LIST;
                                    break;
                                case 12:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_CERTIFICATES_LIST;
                                    break;
                                case 13:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_CERTIFICATES_DETAIL;
                                    break;
                                case 14:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION;
                                    break;
                                case 15:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_SECTION;
                                    break;
                                case 16:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_CATEGORY;
                                    break;
                                case 17:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_DETAIL;
                                    break;
                                case 18:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_SECTION;
                                    break;
                                case 19:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_LVPASS_QRCODE;
                                    break;
                                case 20:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_PRIVACY_SETTINGS;
                                    break;
                                case 21:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.REDIRECTION_ORDER_DETAIL;
                                    break;
                                default:
                                    myLvRoutes$Routes = MyLvRoutes$Routes.MY_ACCOUNT;
                                    break;
                            }
                            myLvDeeplinkRouter.getClass();
                            MyLvDeeplinkRouter.a(mainActivity2, myLvRoutes$Routes, redirectionArgs);
                        } else {
                            if (i3 != 2) {
                                v40.g();
                                return null;
                            }
                            ServicesDeeplinkRouter servicesDeeplinkRouter = mainActivityRouter2.f59049b;
                            switch (MainActivityRouter.WhenMappings.f59052b[loginRedirection.ordinal()]) {
                                case 1:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.SERVICES;
                                    break;
                                case 2:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.REDIRECTION_REPAIR_SECTION;
                                    break;
                                case 3:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.REDIRECTION_REPAIR_CREATE;
                                    break;
                                case 4:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.REDIRECTION_REPAIR_DETAIL;
                                    break;
                                case 5:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.REDIRECTION_OSA;
                                    break;
                                case 6:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.REDIRECTION_OSA_MY_APPOINTMENTS;
                                    break;
                                default:
                                    servicesRoutes$Routes = ServicesRoutes$Routes.SERVICES;
                                    break;
                            }
                            servicesDeeplinkRouter.getClass();
                            ServicesDeeplinkRouter.a(mainActivity2, servicesRoutes$Routes, redirectionArgs);
                        }
                    } else {
                        if (!(linkEffect instanceof LinkEffect.Tab)) {
                            v40.g();
                            return null;
                        }
                        LinkEffect.Tab tab = (LinkEffect.Tab) linkEffect;
                        boolean z2 = tab instanceof LinkEffect.Tab.Feed;
                        kb0 kb0Var2 = kb0Var;
                        if (z2) {
                            FeedTab.Companion companion2 = FeedTab.INSTANCE;
                            LinkEffect.Tab.Feed feed = (LinkEffect.Tab.Feed) linkEffect;
                            String str = feed.f52011b;
                            companion2.getClass();
                            FeedTab feedTabA = FeedTab.Companion.a(str);
                            if (feedTabA != null) {
                                MainActivity.Companion companion3 = MainActivity.L;
                                mainActivity2.J().S1(feedTabA);
                            }
                            kb0Var2.invoke(feed.f52000a, null);
                        } else if (tab instanceof LinkEffect.Tab.Wishlist) {
                            kb0Var2.invoke(((LinkEffect.Tab.Wishlist) linkEffect).f52000a, null);
                        } else if (tab instanceof LinkEffect.Tab.Services) {
                            kb0Var2.invoke(((LinkEffect.Tab.Services) linkEffect).f52000a, null);
                        } else {
                            if (!(tab instanceof LinkEffect.Tab.Catalog)) {
                                v40.g();
                                return null;
                            }
                            LinkEffect.Tab.Catalog catalog = (LinkEffect.Tab.Catalog) linkEffect;
                            MainTopLevelDestination mainTopLevelDestination = catalog.f52000a;
                            if (!(catalog instanceof LinkEffect.Tab.Catalog.CatalogDefault)) {
                                if (catalog instanceof LinkEffect.Tab.Catalog.CatalogPlp) {
                                    LinkEffect.Tab.Catalog.CatalogPlp catalogPlp = (LinkEffect.Tab.Catalog.CatalogPlp) linkEffect;
                                    catalogRoute = new CatalogRoute(CatalogDeepLinkType.CATALOG_PLP, (String) null, (String) null, (StoreModeLaunchMode) null, (List) null, (String) null, false, catalogPlp.f52002b, (String) null, (String) null, (String) null, catalogPlp.f52003c, 1918, (DefaultConstructorMarker) null);
                                } else if (catalog instanceof LinkEffect.Tab.Catalog.CatalogProduct) {
                                    LinkEffect.Tab.Catalog.CatalogProduct catalogProduct = (LinkEffect.Tab.Catalog.CatalogProduct) linkEffect;
                                    catalogRoute = new CatalogRoute(CatalogDeepLinkType.CATALOG_PRODUCT, (String) null, (String) null, (StoreModeLaunchMode) null, (List) null, catalogProduct.f52004b, catalogProduct.f52005c, (String) null, (String) null, (String) null, (String) null, (String) null, 3998, (DefaultConstructorMarker) null);
                                } else if (catalog instanceof LinkEffect.Tab.Catalog.CatalogSection) {
                                    LinkEffect.Tab.Catalog.CatalogSection catalogSection = (LinkEffect.Tab.Catalog.CatalogSection) linkEffect;
                                    catalogRoute = new CatalogRoute(CatalogDeepLinkType.CATALOG_SECTION, (String) null, (String) null, (StoreModeLaunchMode) null, (List) null, (String) null, false, (String) null, catalogSection.f52006b, catalogSection.f52007c, catalogSection.d, (String) null, 2302, (DefaultConstructorMarker) null);
                                } else if (catalog instanceof LinkEffect.Tab.Catalog.CatalogSkuList) {
                                    catalogRoute = new CatalogRoute(CatalogDeepLinkType.CATALOG_SKU_LIST, (String) null, (String) null, (StoreModeLaunchMode) null, ((LinkEffect.Tab.Catalog.CatalogSkuList) linkEffect).f52008b, (String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, 4078, (DefaultConstructorMarker) null);
                                } else {
                                    if (!(catalog instanceof LinkEffect.Tab.Catalog.StoreMode)) {
                                        v40.g();
                                        return null;
                                    }
                                    LinkEffect.Tab.Catalog.StoreMode storeMode = (LinkEffect.Tab.Catalog.StoreMode) linkEffect;
                                    catalogRoute2 = new CatalogRoute(CatalogDeepLinkType.STORE_MODE, storeMode.f52009b, storeMode.f52010c, storeMode.d, (List) null, (String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, 4080, (DefaultConstructorMarker) null);
                                }
                                catalogRoute2 = catalogRoute;
                            }
                            kb0Var2.invoke(mainTopLevelDestination, catalogRoute2);
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f58973b = 1;
            if (d.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
