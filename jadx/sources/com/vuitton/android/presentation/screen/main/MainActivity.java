package com.vuitton.android.presentation.screen.main;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.linkplay.network.SecurityConstants;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatComposeContainer;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.UriExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.link.parsing.AppLinkPatterns;
import com.vuitton.android.presentation.link.parsing.LinkClassifier;
import com.vuitton.android.presentation.link.parsing.PassAppLinkConverter;
import com.vuitton.android.presentation.push.UtmNotificationTracker;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.redirectlink.LinkViewModel;
import com.vuitton.android.presentation.redirectlink.LinkViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl;
import com.vuitton.android.presentation.screen.main.models.MainActivityUiEvent;
import com.vuitton.android.presentation.screen.main.models.MainActivityViewState;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import com.vuitton.android.presentation.utils.ArUtils;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ba0;
import defpackage.kb0;
import defpackage.lb0;
import defpackage.mb0;
import defpackage.v;
import defpackage.v40;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0010²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\t\u001a\u00020\b8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000b\u001a\u00020\n8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\r\u001a\u0004\u0018\u00010\f8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;", "viewState", "Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;", "deepLinkViewState", "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;", "bottomSheetType", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;", "alreadySignedInEffect", "Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class MainActivity extends Hilt_MainActivity implements ChatHostActivity {
    public static final Companion L = new Companion(null);
    public ContactUsNavigator A;
    public LinkClassifier B;
    public PassAppLinkConverter C;
    public ContributionLinkNavigator D;
    public MainActivityRouter E;
    public EnvironmentProvider F;
    public ChatAttachable G;
    public final ActivityResultLauncher H;
    public final ActivityResultLauncher I;
    public final ActivityResultLauncher J;
    public final ActivityResultLauncher K;
    public final ViewModelLazy p;
    public final ViewModelLazy q;
    public final ViewModelLazy r;
    public final ViewModelLazy s;
    public final ViewModelLazy t;
    public String u;
    public LVEventSender v;
    public RefreshAuthFromCheckoutUseCase w;
    public ChatLifecycleObserver x;
    public PassAppLinkBuilder y;
    public LinkHandler z;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\t\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\b8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;", "", "", "EXTRA_REFRESH_ORDERS", "Ljava/lang/String;", "KEY_SELECTED_NAV_ITEM", "KEY_FEED_TAB", "MAIN_ACTIVITY_REQUEST_CODE", "", "REQUEST_CODE_AUTH_WITH_REDIRECTION", "I", "REQUEST_CODE_AUTH_DEEPLINK_V2", "REQUEST_CODE_AUTH_REPAIRS", "REQUEST_CODE_AUTH_OSA", "REQUEST_CODE_AUTH_TRAVEL", "KEY_RMS_CODE", "KEY_STORE_MODE_LAUNCH_MODE", "", "APPS_FLYER_DEDUP_WINDOW_MS", "J", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Companion companion, Context context, MainTopLevelDestination mainTopLevelDestination, String str, StoreModeLaunchMode storeModeLaunchMode, String str2, int i2) {
            if ((i2 & 2) != 0) {
                mainTopLevelDestination = MainTopLevelDestination.FEED;
            }
            if ((i2 & 4) != 0) {
                str = null;
            }
            if ((i2 & 8) != 0) {
                storeModeLaunchMode = StoreModeLaunchMode.MAYBE_ONGOING_SESSION;
            }
            if ((i2 & 16) != 0) {
                str2 = null;
            }
            companion.getClass();
            context.getClass();
            mainTopLevelDestination.getClass();
            storeModeLaunchMode.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) MainActivity.class).putExtra("KEY_SELECTED_NAV_ITEM", mainTopLevelDestination).putExtra("KEY_RMS_CODE", str).putExtra("KEY_STORE_MODE_LAUNCH_MODE", storeModeLaunchMode).putExtra("KEY_FEED_TAB", str2);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    public MainActivity() {
        Function0<ViewModelProvider.Factory> function0 = new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        };
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function1 = null;
        this.p = new ViewModelLazy(reflectionFactory.b(MainActivityViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, function0, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.q = new ViewModelLazy(reflectionFactory.b(AuthenticationViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$5
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$4
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$6
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.r = new ViewModelLazy(reflectionFactory.b(QuickAccessFiltersViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$8
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$7
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$9
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.s = new ViewModelLazy(reflectionFactory.b(WelcomeViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$11
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$10
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$12
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.t = new ViewModelLazy(reflectionFactory.b(LinkViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$14
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$13
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$special$$inlined$viewModels$default$15
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                return (function2 == null || (creationExtras = (CreationExtras) function2.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        this.H = ActivityExtKt.a(this, new v(17), new lb0(this, 1));
        this.I = ActivityExtKt.a(this, new mb0(this, 5), new lb0(this, 2));
        this.J = ActivityExtKt.a(this, new mb0(this, 6), new ba0(3));
        this.K = registerForActivityResult(new ActivityResultContracts$RequestPermission(), new v40(20));
    }

    public static MainTopLevelDestination H(String str) {
        if (Intrinsics.c(str, DeepLink.NATIVE_STORY.getHost()) || Intrinsics.c(str, DeepLink.STORELOCATOR.getHost()) || Intrinsics.c(str, DeepLink.EXPLORE.getHost()) || Intrinsics.c(str, DeepLink.AUDIOGUIDE.getHost())) {
            return MainTopLevelDestination.FEED;
        }
        if (Intrinsics.c(str, DeepLink.CATALOG.getHost()) || Intrinsics.c(str, DeepLink.STORE_MODE.getHost())) {
            return MainTopLevelDestination.CATALOG;
        }
        if (Intrinsics.c(str, DeepLink.MY_LV.getHost()) || Intrinsics.c(str, DeepLink.ACTIVATE_ACCOUNT.getHost()) || Intrinsics.c(str, DeepLink.LOGIN.getHost()) || Intrinsics.c(str, DeepLink.REGISTER.getHost()) || Intrinsics.c(str, DeepLink.GDPR.getHost()) || Intrinsics.c(str, DeepLink.MY_ORDERS.getHost()) || Intrinsics.c(str, DeepLink.EXCLUSIVE_SECTION.getHost()) || Intrinsics.c(str, DeepLink.EXCLUSIVE_CATEGORY.getHost()) || Intrinsics.c(str, DeepLink.EXCLUSIVE_DETAIL.getHost()) || Intrinsics.c(str, DeepLink.CONNECTED.getHost()) || Intrinsics.c(str, DeepLink.PAIRING_V2.getHost()) || Intrinsics.c(str, DeepLink.CERTIFICATES.getHost())) {
            return MainTopLevelDestination.FEED;
        }
        return (Intrinsics.c(str, DeepLink.REPAIR_CREATE.getHost()) || Intrinsics.c(str, DeepLink.REPAIR_SECTION.getHost()) || Intrinsics.c(str, DeepLink.REPAIR_VIDEOCALL.getHost()) || Intrinsics.c(str, DeepLink.MY_APPOINTMENTS.getHost()) || Intrinsics.c(str, DeepLink.ADVISOR_CURATION.getHost()) || Intrinsics.c(str, DeepLink.POST_VISIT.getHost())) ? MainTopLevelDestination.SERVICES : MainTopLevelDestination.FEED;
    }

    public static void K(Intent intent, Function2 function2) {
        MainTopLevelDestination mainTopLevelDestination;
        String strValueOf = String.valueOf(intent != null ? intent.getData() : null);
        if (AppLinkPatterns.f51703h.matcher(strValueOf).find()) {
            mainTopLevelDestination = MainTopLevelDestination.FEED;
        } else {
            mainTopLevelDestination = (AppLinkPatterns.f51704i.matcher(strValueOf).find() || AppLinkPatterns.f51705j.matcher(strValueOf).find()) ? MainTopLevelDestination.CATALOG : MainTopLevelDestination.FEED;
        }
        function2.invoke(mainTopLevelDestination, String.valueOf(intent != null ? intent.getData() : null));
    }

    public final LinkViewModel I() {
        return (LinkViewModel) this.t.getF71699b();
    }

    public final MainActivityViewModel J() {
        return (MainActivityViewModel) this.p.getF71699b();
    }

    /* JADX WARN: Code duplicated, block: B:160:0x02aa  */
    public final void L(Intent intent, Function2 function2, Function2 function3) {
        StoreModeLaunchMode storeModeLaunchMode;
        Pair pair;
        Object objH;
        Object serializableExtra;
        Uri data;
        Uri uriA;
        Uri data2;
        String string;
        Uri data3;
        Object serializableExtra2;
        Uri data4;
        Uri data5;
        if (intent != null && (data5 = intent.getData()) != null) {
            UtmNotificationTracker.a(this, data5);
        }
        String queryParameter = (intent == null || (data4 = intent.getData()) == null) ? null : data4.getQueryParameter("deep_link_value");
        if (queryParameter != null) {
            if (queryParameter.equals(this.u)) {
                return;
            }
            this.u = queryParameter;
            I().l9(this, Uri.parse(queryParameter), null, false);
            BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new MainActivity$handleAppsFlyerDeeplinkOnce$1(this, queryParameter, null), 3);
            return;
        }
        String stringExtra = intent != null ? intent.getStringExtra("KEY_RMS_CODE") : null;
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra2 = intent.getSerializableExtra("KEY_STORE_MODE_LAUNCH_MODE", StoreModeLaunchMode.class);
            } else {
                Object serializableExtra3 = intent.getSerializableExtra("KEY_STORE_MODE_LAUNCH_MODE");
                if (!(serializableExtra3 instanceof StoreModeLaunchMode)) {
                    serializableExtra3 = null;
                }
                serializableExtra2 = (StoreModeLaunchMode) serializableExtra3;
            }
            storeModeLaunchMode = (StoreModeLaunchMode) serializableExtra2;
        } else {
            storeModeLaunchMode = null;
        }
        String strValueOf = String.valueOf(intent != null ? intent.getData() : null);
        if (intent != null && intent.getBooleanExtra("EXTRA_REDIRECT_TO_REPAIR_CREATE", false)) {
            I().Zb();
            return;
        }
        if (Intrinsics.c(DeepLink.ORDER_CONFIRMATION.getHost(), (intent == null || (data3 = intent.getData()) == null) ? null : data3.getHost())) {
            Uri data6 = intent.getData();
            if (data6 == null || (string = data6.toString()) == null) {
                return;
            }
            LinkHandler linkHandler = this.z;
            if (linkHandler == null) {
                Intrinsics.h("linkHandler");
                throw null;
            }
            int i2 = LinkHandler.f51604e;
            linkHandler.c(string, this, null);
            return;
        }
        if (stringExtra != null && storeModeLaunchMode == StoreModeLaunchMode.NEW_FROM_QRCODE_SCAN) {
            J().F6(new MainActivityUiEvent.NavigateToTopLevelDestination(MainTopLevelDestination.CATALOG, new CatalogRoute(CatalogDeepLinkType.STORE_MODE, stringExtra, (String) null, storeModeLaunchMode, (List) null, (String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, 4084, (DefaultConstructorMarker) null)));
            return;
        }
        LinkClassifier linkClassifier = this.B;
        if (linkClassifier == null) {
            Intrinsics.h("linkClassifier");
            throw null;
        }
        if (linkClassifier.a(strValueOf)) {
            K(intent, function3);
            return;
        }
        LinkClassifier linkClassifier2 = this.B;
        if (linkClassifier2 == null) {
            Intrinsics.h("linkClassifier");
            throw null;
        }
        if (linkClassifier2.c(strValueOf)) {
            if (intent == null || (data2 = intent.getData()) == null) {
                uriA = null;
            } else {
                PassAppLinkConverter passAppLinkConverter = this.C;
                if (passAppLinkConverter == null) {
                    Intrinsics.h("passAppLinkConverter");
                    throw null;
                }
                EnvironmentProvider environmentProvider = this.F;
                if (environmentProvider == null) {
                    Intrinsics.h("environmentProvider");
                    throw null;
                }
                uriA = passAppLinkConverter.a(data2, environmentProvider.j());
            }
            if (uriA != null) {
                function2.invoke(H(uriA.getHost()), new Pair(uriA, null));
                return;
            } else {
                K(intent, function3);
                return;
            }
        }
        if (intent == null || (data = intent.getData()) == null) {
            pair = null;
        } else {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            if (!Intrinsics.c(data.getScheme(), SecurityConstants.SECURITY_HTTPS)) {
                String queryParameter2 = data.getQueryParameter("locale");
                if (queryParameter2 != null && (!StringsKt.w(queryParameter2))) {
                    ref$ObjectRef.f71921b = data.getQueryParameter("locale");
                    Uri.Builder builder = new Uri.Builder();
                    builder.scheme("lvpass");
                    builder.encodedAuthority(data.getHost());
                    List<String> pathSegments = data.getPathSegments();
                    pathSegments.getClass();
                    Iterator<T> it = pathSegments.iterator();
                    while (it.hasNext()) {
                        builder.appendPath((String) it.next());
                    }
                    Set<String> queryParameterNames = data.getQueryParameterNames();
                    queryParameterNames.getClass();
                    for (String str : queryParameterNames) {
                        if (!Intrinsics.c(str, "locale")) {
                            builder.appendQueryParameter(str, data.getQueryParameter(str));
                        }
                    }
                    data = builder.build();
                    data.getClass();
                }
            } else if (!Intrinsics.c(UriExtKt.d(data), "videocall")) {
                Uri.Builder builder2 = new Uri.Builder();
                builder2.scheme("lvpass");
                Regex regex = new Regex("([a-zA-Z]{2,4}-[a-zA-Z1-9]{2})");
                String str2 = data.getPathSegments().get(0);
                if (str2 == null || !regex.f(str2)) {
                    str2 = null;
                }
                ref$ObjectRef.f71921b = str2;
                for (String str3 : data.getQueryParameterNames()) {
                    builder2.appendQueryParameter(str3, data.getQueryParameter(str3));
                }
                String encodedFragment = data.getEncodedFragment();
                if (encodedFragment != null) {
                    if (StringsKt.w(encodedFragment)) {
                        encodedFragment = null;
                    }
                    if (encodedFragment != null) {
                        builder2.encodedFragment(encodedFragment);
                    }
                }
                data = builder2.build();
                data.getClass();
            }
            pair = new Pair(data, ref$ObjectRef.f71921b);
        }
        Uri uri = pair != null ? (Uri) pair.f71705b : null;
        if (J().A4() && ((MainActivityViewState) J().getI().getValue()).f59143f.f59121a) {
            objH = MainTopLevelDestination.CATALOG;
        } else if (uri != null) {
            J().S2();
            objH = H(uri.getHost());
        } else if (intent == null) {
            objH = MainTopLevelDestination.FEED;
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("KEY_SELECTED_NAV_ITEM", MainTopLevelDestination.class);
            } else {
                Object serializableExtra4 = intent.getSerializableExtra("KEY_SELECTED_NAV_ITEM");
                serializableExtra = (MainTopLevelDestination) (serializableExtra4 instanceof MainTopLevelDestination ? serializableExtra4 : null);
            }
            objH = (MainTopLevelDestination) serializableExtra;
            if (objH == null) {
                objH = MainTopLevelDestination.FEED;
            }
        }
        function2.invoke(objH, pair);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ChatLifecycleObserver chatLifecycleObserver = this.x;
        if (chatLifecycleObserver != null) {
            if (chatLifecycleObserver != null) {
                chatLifecycleObserver.d(i2, i3, intent);
            } else {
                Intrinsics.h("chatLifecycleObserver");
                throw null;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdge.b(this, null, 3);
        getIntent().putExtra("SHOULD_HANDLE_LV_NAVBAR", true).putExtra("KEY_QAF_SOURCE", QafSource.PLP);
        ChatComposeContainer chatComposeContainer = new ChatComposeContainer(this);
        Lifecycle lifecycle = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.x;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        lifecycle.a(chatLifecycleObserver);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new MainActivity$listenToCartRefreshEvents$1(this, null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new MainActivity$listenToRefreshAuthFromCheckoutEvents$1(this, null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new MainActivity$listenToAppsFlyerDeeplink$1(this, null), 3);
        ArUtils.b(this);
        chatComposeContainer.a(new ComposableLambdaImpl(-553667927, true, new kb0(this, 0)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        FirebaseAnalytics.getInstance(this).f34361a.i(null);
        J().s();
        super.onDestroy();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        L(intent, new kb0(this, 1), new kb0(this, 2));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        B().k(false, this);
        J().N8(null);
    }
}
