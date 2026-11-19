package com.vuitton.android.presentation.screen.webview;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.MailTo;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.GeolocationPermissions;
import android.webkit.HttpAuthHandler;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.browser.customtabs.CustomTabColorSchemeParams$Builder;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.akamai.botman.CYFMonitor;
import com.google.android.material.snackbar.Snackbar;
import com.linkplay.network.SecurityConstants;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.net.interceptor.UserAgentInterceptor;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.databinding.FragmentWebViewBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.StringAndroidExtKt;
import com.vuitton.android.presentation.extensions.UriExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt$requestApplyInsetsWhenAttachedToWindow$1;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.KeyboardVisibilityListener;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.link.builder.DeepLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.OnBackPressedListener;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.pdp.models.CustomizationCallback;
import com.vuitton.android.presentation.screen.pdp.models.CustomizationJsInterface;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.privacy.models.ConsentMapperKt;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import com.vuitton.android.presentation.screen.thankyou.ThankYouActivity;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.utils.PermissionUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.UrlCatchingConfig;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import dagger.Lazy;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.bp;
import defpackage.f31;
import defpackage.l61;
import defpackage.ln0;
import defpackage.m61;
import defpackage.md;
import defpackage.p11;
import defpackage.v40;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.json.Json;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\f\r\u000eB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u0013²\u0006\f\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002²\u0006\f\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002²\u0006\f\u0010\u0012\u001a\u00020\u00118\nX\u008a\u0084\u0002²\u0006\f\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002²\u0006\f\u0010\u0012\u001a\u00020\u00118\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/main/OnBackPressedListener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "LVWebChromeClient", "LVWebViewClient", "", "showBottomSheet", "Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;", "viewState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WebViewFragment extends Hilt_WebViewFragment implements OnBackPressedListener {
    public final ViewModelLazy F;
    public Lazy G;
    public Lazy H;
    public WebViewRouter I;
    public LVEventSender J;
    public Logger K;
    public Json L;
    public WebViewRouter M;
    public AkamaiSecurityHelper N;
    public LinkHandler O;
    public ContactUsNavigator P;
    public ChatAttachable Q;
    public ChatLifecycleObserver R;
    public BuildConfigProvider S;
    public final FragmentViewBindingDelegate T;
    public final kotlin.Lazy V;
    public final kotlin.Lazy W;
    public final kotlin.Lazy X;
    public final kotlin.Lazy Y;
    public final kotlin.Lazy Z;
    public final kotlin.Lazy b1;
    public final kotlin.Lazy c1;
    public final kotlin.Lazy d1;
    public final kotlin.Lazy e1;
    public final kotlin.Lazy f1;
    public boolean g1;
    public final kotlin.Lazy h0;
    public boolean h1;
    public boolean i1;
    public String j1;
    public final MutableStateFlow k1;
    public final MutableStateFlow l1;
    public final MutableStateFlow m1;
    public final kotlin.Lazy t0;
    public static final /* synthetic */ KProperty[] o1 = {Reflection.f71922a.h(new PropertyReference1Impl(WebViewFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;", 0))};
    public static final Companion n1 = new Companion(null);
    public static final String p1 = "WebViewFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;", "", "", "KEY_URL", "Ljava/lang/String;", "KEY_IS_CART", "KEY_DISPLAY_TOOLBAR", "KEY_IS_PLP_STORY", "KEY_STORY_TITLE", "KEY_NATIVE_CHECKOUT_PREVIOUS_SCREEN", "KEY_CART_ID", "KEY_IS_DISTANT_REPAIR_PBL", "KEY_CUSTOMIZATION_TYPE", "KEY_SHOW_CONTACT_US", "KEY_IS_BOOKING_PAYMENT", "ORDER_CANCELED", "TAG_ALERT", "TAG_CONSOLE", "BOOKING_PAYMENT_SUCCESS", "BOOKING_PAYMENT_EXIT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static WebViewFragment a(String str, boolean z, boolean z2, boolean z3, String str2, CartPreviousScreen cartPreviousScreen, String str3, boolean z4, boolean z5, CustomizationType customizationType, boolean z6) {
            customizationType.getClass();
            WebViewFragment webViewFragment = new WebViewFragment();
            Bundle bundle = new Bundle();
            bundle.putString("URL", str);
            bundle.putBoolean("IS_CART", z);
            bundle.putBoolean("DISPLAY_TOOLBAR", z2);
            bundle.putBoolean("IS_PLP_STORY", z3);
            bundle.putString("STORY_TITLE", str2);
            if (cartPreviousScreen != null) {
                bundle.putInt("NATIVE_CHECKOUT_PREVIOUS_SCREEN", cartPreviousScreen.ordinal());
            }
            bundle.putString("KEY_CART_ID", str3);
            bundle.putBoolean("KEY_IS_DISTANT_REPAIR_PBL", z4);
            bundle.putBoolean("KEY_SHOW_CONTACT_US", z5);
            bundle.putString("CUSTOMIZATION_TYPE", customizationType.name());
            bundle.putBoolean("KEY_IS_BOOKING_PAYMENT", z6);
            webViewFragment.setArguments(bundle);
            return webViewFragment;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;", "Landroid/webkit/WebChromeClient;", "<init>", "(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class LVWebChromeClient extends WebChromeClient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f65463b = 0;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f65465a;

            static {
                int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
                try {
                    iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f65465a = iArr;
            }
        }

        public LVWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (consoleMessage != null) {
                b bVar = new b(consoleMessage, 1);
                ConsoleMessage.MessageLevel messageLevel = consoleMessage.messageLevel();
                int i2 = messageLevel == null ? -1 : WhenMappings.f65465a[messageLevel.ordinal()];
                WebViewFragment webViewFragment = WebViewFragment.this;
                if (i2 == 1) {
                    webViewFragment.S().b("WebViewConsole", bVar, null);
                } else if (i2 != 2) {
                    webViewFragment.S();
                } else {
                    webViewFragment.S().a("WebViewConsole", bVar);
                }
            }
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            str.getClass();
            callback.getClass();
            WebViewFragment webViewFragment = WebViewFragment.this;
            if (webViewFragment.getActivity() == null || !(webViewFragment.getActivity() instanceof WebViewActivity)) {
                callback.invoke(str, false, false);
                return;
            }
            FragmentActivity activity = webViewFragment.getActivity();
            activity.getClass();
            WebViewActivity webViewActivity = (WebViewActivity) activity;
            webViewActivity.q = callback;
            webViewActivity.r = str;
            for (int i2 = 0; i2 < 2; i2++) {
                String[] strArr = PermissionUtils.f65862a;
                if (ContextCompat.checkSelfPermission(webViewActivity, strArr[i2]) != 0) {
                    webViewActivity.requestPermissions(strArr, 1486);
                    return;
                }
            }
            PermissionUtils.b(webViewActivity, new WebViewActivity$checkGps$1(webViewActivity));
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            FragmentActivity activity;
            webView.getClass();
            str.getClass();
            str2.getClass();
            jsResult.getClass();
            jsResult.confirm();
            if (str2.equalsIgnoreCase("BackHomOnclick")) {
                webView.stopLoading();
                Companion companion = WebViewFragment.n1;
                WebViewFragment webViewFragment = WebViewFragment.this;
                if (!webViewFragment.X() && (activity = webViewFragment.getActivity()) != null) {
                    if (activity.getSupportFragmentManager().J() > 0) {
                        activity.getSupportFragmentManager().V();
                        return true;
                    }
                    activity.finish();
                }
            }
            return true;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;", "Landroid/webkit/WebViewClient;", "<init>", "(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class LVWebViewClient extends WebViewClient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f65466b = 0;

        public LVWebViewClient() {
        }

        public final void a(Context context, Intent intent) {
            Object failure;
            String stringExtra;
            Companion companion = WebViewFragment.n1;
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.P().f51394f.stopLoading();
            try {
                Result.Companion companion2 = Result.INSTANCE;
                context.startActivity(intent);
                failure = Unit.f71739a;
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            if (Result.a(failure) == null || (stringExtra = intent.getStringExtra("browser_fallback_url")) == null) {
                return;
            }
            Companion companion4 = WebViewFragment.n1;
            WebView webView = webViewFragment.P().f51394f;
            HashMap mapR = webViewFragment.R();
            JSHookAop.loadUrl(webView, stringExtra, mapR);
            webView.loadUrl(stringExtra, mapR);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            webView.getClass();
            str.getClass();
            super.onPageFinished(webView, str);
            Companion companion = WebViewFragment.n1;
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.P().f51394f.setVisibility(0);
            webViewFragment.P().d.setVisibility(4);
            webViewFragment.j1 = null;
            if (webViewFragment.V()) {
                BookingPaymentJsInterface.d.getClass();
                webView.evaluateJavascript(BookingPaymentJsInterface.f65448e, null);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            webView.getClass();
            str.getClass();
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.i1 = false;
            webViewFragment.j1 = str;
            webViewFragment.P().f51394f.setVisibility(4);
            webViewFragment.P().d.setVisibility(0);
            if (webViewFragment.V()) {
                BookingPaymentJsInterface.d.getClass();
                webView.evaluateJavascript(BookingPaymentJsInterface.f65448e, null);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            webView.getClass();
            webResourceRequest.getClass();
            webResourceError.getClass();
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            c cVar = new c(webResourceError, webResourceRequest, 1);
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            WebViewFragment webViewFragment = WebViewFragment.this;
            if (!zIsForMainFrame) {
                webViewFragment.S();
                WebViewFragment.n1.getClass();
            } else {
                Logger loggerS = webViewFragment.S();
                WebViewFragment.n1.getClass();
                loggerS.b(WebViewFragment.p1, cVar, null);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            webView.getClass();
            httpAuthHandler.getClass();
            str.getClass();
            str2.getClass();
            if (WebViewFragment.this.S != null) {
                return;
            }
            Intrinsics.h("buildConfigProvider");
            throw null;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            webView.getClass();
            webResourceRequest.getClass();
            webResourceResponse.getClass();
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            c cVar = new c(webResourceResponse, webResourceRequest, 0);
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            WebViewFragment webViewFragment = WebViewFragment.this;
            if (!zIsForMainFrame) {
                webViewFragment.S();
                WebViewFragment.n1.getClass();
            } else {
                Logger loggerS = webViewFragment.S();
                WebViewFragment.n1.getClass();
                loggerS.b(WebViewFragment.p1, cVar, null);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            webView.getClass();
            sslErrorHandler.getClass();
            sslError.getClass();
            WebViewFragment webViewFragment = WebViewFragment.this;
            Logger loggerS = webViewFragment.S();
            WebViewFragment.n1.getClass();
            loggerS.b(WebViewFragment.p1, new b(sslError, 2), null);
            sslErrorHandler.cancel();
            if (!Intrinsics.c(sslError.getUrl(), webViewFragment.j1) || webViewFragment.i1 || !webViewFragment.isAdded() || webViewFragment.getView() == null) {
                return;
            }
            webViewFragment.i1 = true;
            webViewFragment.P().d.setVisibility(4);
            webViewFragment.P().f51394f.setVisibility(0);
            FragmentActivity activity = webViewFragment.getActivity();
            if (activity != null) {
                activity.runOnUiThread(new f31(webViewFragment, 9));
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:100:0x0250  */
        /* JADX WARN: Code duplicated, block: B:104:0x0268  */
        /* JADX WARN: Code duplicated, block: B:107:0x02a9  */
        /* JADX WARN: Code duplicated, block: B:108:0x02ae  */
        /* JADX WARN: Code duplicated, block: B:110:0x02b6  */
        /* JADX WARN: Code duplicated, block: B:112:0x02ba  */
        /* JADX WARN: Code duplicated, block: B:113:0x02bf  */
        /* JADX WARN: Code duplicated, block: B:115:0x02c3  */
        /* JADX WARN: Code duplicated, block: B:117:0x02c6  */
        /* JADX WARN: Code duplicated, block: B:119:0x02ce  */
        /* JADX WARN: Code duplicated, block: B:121:0x02d8  */
        /* JADX WARN: Code duplicated, block: B:125:0x02e8  */
        /* JADX WARN: Code duplicated, block: B:127:0x0316  */
        /* JADX WARN: Code duplicated, block: B:129:0x031e  */
        /* JADX WARN: Code duplicated, block: B:130:0x032e  */
        /* JADX WARN: Code duplicated, block: B:132:0x0336  */
        /* JADX WARN: Code duplicated, block: B:134:0x0345  */
        /* JADX WARN: Code duplicated, block: B:137:0x034e  */
        /* JADX WARN: Code duplicated, block: B:138:0x0353  */
        /* JADX WARN: Code duplicated, block: B:140:0x035d  */
        /* JADX WARN: Code duplicated, block: B:141:0x036e  */
        /* JADX WARN: Code duplicated, block: B:143:0x0371  */
        /* JADX WARN: Code duplicated, block: B:145:0x037e  */
        /* JADX WARN: Code duplicated, block: B:148:0x0395  */
        /* JADX WARN: Code duplicated, block: B:150:0x039d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:151:0x039f  */
        /* JADX WARN: Code duplicated, block: B:152:0x03b2  */
        /* JADX WARN: Code duplicated, block: B:154:0x03ba A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:155:0x03bc  */
        /* JADX WARN: Code duplicated, block: B:156:0x03cf  */
        /* JADX WARN: Code duplicated, block: B:158:0x03d7 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:159:0x03d9  */
        /* JADX WARN: Code duplicated, block: B:160:0x03ec  */
        /* JADX WARN: Code duplicated, block: B:162:0x03f7  */
        /* JADX WARN: Code duplicated, block: B:169:0x0420  */
        /* JADX WARN: Code duplicated, block: B:171:0x042c  */
        /* JADX WARN: Code duplicated, block: B:175:0x0446  */
        /* JADX WARN: Code duplicated, block: B:177:0x045a  */
        /* JADX WARN: Code duplicated, block: B:184:0x0490  */
        /* JADX WARN: Code duplicated, block: B:186:0x04a0  */
        /* JADX WARN: Code duplicated, block: B:193:0x04d5  */
        /* JADX WARN: Code duplicated, block: B:195:0x04e5  */
        /* JADX WARN: Code duplicated, block: B:202:0x051a  */
        /* JADX WARN: Code duplicated, block: B:205:0x051e  */
        /* JADX WARN: Code duplicated, block: B:65:0x014b  */
        /* JADX WARN: Code duplicated, block: B:72:0x0171  */
        /* JADX WARN: Code duplicated, block: B:88:0x020c  */
        /* JADX WARN: Code duplicated, block: B:92:0x0223  */
        /* JADX WARN: Code duplicated, block: B:93:0x0235  */
        /* JADX WARN: Code duplicated, block: B:96:0x0240  */
        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Object failure;
            boolean zBooleanValue;
            Object failure2;
            WebViewRouter webViewRouterU;
            FragmentActivity activity;
            FragmentActivity activity2;
            boolean zB;
            WebViewRouter webViewRouterU2;
            String strB;
            boolean zU;
            FragmentActivity activity3;
            String str2;
            String str3;
            String str4;
            boolean zA;
            Intent intent;
            FragmentActivity activity4;
            FragmentActivity activity5;
            String to;
            LinkHandler linkHandler;
            UrlCatchingConfig urlCatchingConfigA;
            String str5;
            FragmentActivity activity6;
            UrlCatchingConfig urlCatchingConfigA2;
            String str6;
            webView.getClass();
            WebViewFragment webViewFragment = WebViewFragment.this;
            if (str == null) {
                webViewFragment.h1 = false;
                return false;
            }
            Companion companion = WebViewFragment.n1;
            WebViewViewModel webViewViewModelT = webViewFragment.T();
            kotlin.Lazy lazy = webViewFragment.h0;
            boolean zC = StringAndroidExtKt.c(str, ((WebViewUiModel) webViewViewModelT.x.getValue()).f65538e);
            webViewFragment.h1 = zC;
            if (zC) {
                WebViewViewModel webViewViewModelT2 = webViewFragment.T();
                BuildersKt.c(ViewModelKt.a(webViewViewModelT2), null, null, new WebViewViewModel$onConfirmationPageReached$1(webViewViewModelT2, webView.getUrl(), (CartPreviousScreen) lazy.getF71699b(), null), 3);
                ChatLifecycleObserver chatLifecycleObserver = webViewFragment.R;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    String str7 = (String) webViewFragment.t0.getF71699b();
                    if (str7 == null) {
                        str7 = "";
                    }
                    chatLifecycleObserver.b(str7);
                }
            }
            webViewFragment.S().c("Url-in-webView", str, null);
            Uri uri = Uri.parse(str);
            if (Intrinsics.c(uri.getScheme(), "intent")) {
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    Context contextRequireContext = webViewFragment.requireContext();
                    contextRequireContext.getClass();
                    try {
                        failure2 = Intent.parseUri(uri.toString(), 1);
                    } catch (Throwable th) {
                        Result.Companion companion3 = Result.INSTANCE;
                        failure2 = new Result.Failure(th);
                    }
                    if (failure2 instanceof Result.Failure) {
                        failure2 = null;
                    }
                    Intent intent2 = (Intent) failure2;
                    if (intent2 == null) {
                        zBooleanValue = false;
                    } else {
                        a(contextRequireContext, intent2);
                        failure = Boolean.TRUE;
                    }
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    failure = new Result.Failure(th2);
                }
                if (Result.a(failure) != null) {
                    failure = Boolean.FALSE;
                }
                zBooleanValue = ((Boolean) failure).booleanValue();
            } else {
                zBooleanValue = false;
            }
            if (!zBooleanValue) {
                Uri uriA = UriExtKt.a(UriExtKt.b(UriExtKt.c(uri), ((WebViewUiModel) webViewFragment.T().x.getValue()).f65537c), ((WebViewUiModel) webViewFragment.T().x.getValue()).f65543k);
                String string = uriA.toString();
                string.getClass();
                WebViewRouter webViewRouterU3 = webViewFragment.U();
                FragmentActivity activity7 = webViewFragment.getActivity();
                if (activity7 != null && (urlCatchingConfigA2 = webViewRouterU3.a(string)) != null && (str6 = urlCatchingConfigA2.f67281b) != null) {
                    switch (str6) {
                        case "Catalog":
                            activity7.startActivity(MainActivity.Companion.a(MainActivity.L, activity7, MainTopLevelDestination.CATALOG, null, null, null, 28));
                            break;
                        case "external":
                        case "External":
                            activity7.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                            break;
                        case "Privacy Policy":
                            LegalTextActivity.p.getClass();
                            activity7.startActivity(LegalTextActivity.Companion.a(activity7, false));
                            break;
                        case "MyOrders":
                        case "My Orders":
                            DeepLinkBuilder deepLinkBuilder = webViewRouterU3.d;
                            List listO = CollectionsKt.O(DeepLink.LOGIN);
                            List listP = CollectionsKt.P("null", "myorders");
                            deepLinkBuilder.getClass();
                            StringBuilder sb = new StringBuilder();
                            sb.append(deepLinkBuilder.f51629a.j());
                            sb.append(CollectionsKt.K(listO, "/", null, null, new bp(17), 30));
                            if (listP != null && !listP.isEmpty()) {
                                sb.append("/");
                                sb.append(CollectionsKt.K(listP, "/", null, null, null, 62));
                            }
                            activity7.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(sb.toString())));
                            break;
                        case "Wall":
                        case "wall":
                            activity7.startActivity(MainActivity.Companion.a(MainActivity.L, activity7, MainTopLevelDestination.FEED, null, null, null, 28));
                            break;
                        case "catalog":
                            activity7.startActivity(MainActivity.Companion.a(MainActivity.L, activity7, MainTopLevelDestination.CATALOG, null, null, null, 28));
                            break;
                        case "General Terms":
                            LegalTextActivity.p.getClass();
                            activity7.startActivity(LegalTextActivity.Companion.a(activity7, true));
                            break;
                        default:
                            webViewRouterU = webViewFragment.U();
                            activity = webViewFragment.getActivity();
                            if (activity != null || (urlCatchingConfigA = webViewRouterU.a(string)) == null) {
                                activity2 = webViewFragment.getActivity();
                                if (activity2 != null) {
                                    linkHandler = webViewFragment.O;
                                    if (linkHandler == null) {
                                        Intrinsics.h("linkHandler");
                                        throw null;
                                    }
                                    zB = LinkHandler.b(linkHandler, str, activity2);
                                } else {
                                    zB = false;
                                }
                                if (!zB) {
                                    if (StringsKt.P(str, "mailto:", false)) {
                                        if (StringsKt.P(str, "tel:", false)) {
                                            if (StringsKt.k(str, "/homepage", false)) {
                                                webViewRouterU2 = webViewFragment.U();
                                                strB = StringExtKt.b(str);
                                                if (strB != null) {
                                                    zU = CollectionsKt.u(webViewRouterU2.f65509e, Uri.parse(strB).getHost());
                                                } else {
                                                    zU = false;
                                                }
                                                if (zU) {
                                                    webViewFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                                                    return true;
                                                }
                                                webViewFragment.U();
                                                activity3 = webViewFragment.getActivity();
                                                if (!((Boolean) webViewFragment.b1.getF71699b()).booleanValue()) {
                                                    if (StringsKt.k(str, "success", false)) {
                                                        if (StringsKt.k(str, "error", false)) {
                                                            if (StringsKt.k(str, "cancel", false)) {
                                                                if (activity3 != null) {
                                                                    activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_CANCEL", true));
                                                                    activity3.finish();
                                                                }
                                                                break;
                                                            } else {
                                                                webViewFragment.U();
                                                                if (((CartPreviousScreen) lazy.getF71699b()) == null) {
                                                                    if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                                                        Companion companion5 = WebViewFragment.n1;
                                                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                        if (str2 == null) {
                                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                            if (str3 == null) {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            } else {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                            if (str3 == null) {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            } else {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!zA) {
                                                                            WebView webView2 = webViewFragment.P().f51394f;
                                                                            HashMap mapR = webViewFragment.R();
                                                                            JSHookAop.loadUrl(webView2, string, mapR);
                                                                            webView2.loadUrl(string, mapR);
                                                                            return false;
                                                                        }
                                                                    } else {
                                                                        Companion companion6 = WebViewFragment.n1;
                                                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                        if (str2 == null) {
                                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                            if (str3 == null) {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            } else {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                            if (str3 == null) {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            } else {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null) {
                                                                                    zA = false;
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!zA) {
                                                                            WebView webView3 = webViewFragment.P().f51394f;
                                                                            HashMap mapR2 = webViewFragment.R();
                                                                            JSHookAop.loadUrl(webView3, string, mapR2);
                                                                            webView3.loadUrl(string, mapR2);
                                                                            return false;
                                                                        }
                                                                    }
                                                                } else if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                                                    Companion companion7 = WebViewFragment.n1;
                                                                    str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                    if (str2 == null) {
                                                                        str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                        if (str3 == null) {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        } else {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                        if (str3 == null) {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        } else {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        }
                                                                    }
                                                                    if (!zA) {
                                                                        WebView webView4 = webViewFragment.P().f51394f;
                                                                        HashMap mapR3 = webViewFragment.R();
                                                                        JSHookAop.loadUrl(webView4, string, mapR3);
                                                                        webView4.loadUrl(string, mapR3);
                                                                        return false;
                                                                    }
                                                                } else {
                                                                    Companion companion8 = WebViewFragment.n1;
                                                                    str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                    if (str2 == null) {
                                                                        str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                        if (str3 == null) {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        } else {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                        if (str3 == null) {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        } else {
                                                                            str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                            if (str4 == null) {
                                                                                zA = false;
                                                                            } else {
                                                                                zA = false;
                                                                            }
                                                                        }
                                                                    }
                                                                    if (!zA) {
                                                                        WebView webView5 = webViewFragment.P().f51394f;
                                                                        HashMap mapR4 = webViewFragment.R();
                                                                        JSHookAop.loadUrl(webView5, string, mapR4);
                                                                        webView5.loadUrl(string, mapR4);
                                                                        return false;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            if (activity3 != null) {
                                                                activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_FAILED", true));
                                                                activity3.finish();
                                                            }
                                                            break;
                                                        }
                                                    } else {
                                                        if (activity3 != null) {
                                                            activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_SUCCESS", true));
                                                            activity3.finish();
                                                        }
                                                        break;
                                                    }
                                                } else {
                                                    webViewFragment.U();
                                                    if (((CartPreviousScreen) lazy.getF71699b()) == null) {
                                                        if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                                            Companion companion9 = WebViewFragment.n1;
                                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                            if (str2 == null) {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            } else {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            }
                                                            if (!zA) {
                                                                WebView webView6 = webViewFragment.P().f51394f;
                                                                HashMap mapR5 = webViewFragment.R();
                                                                JSHookAop.loadUrl(webView6, string, mapR5);
                                                                webView6.loadUrl(string, mapR5);
                                                                return false;
                                                            }
                                                        } else {
                                                            Companion companion10 = WebViewFragment.n1;
                                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                            if (str2 == null) {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            } else {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            }
                                                            if (!zA) {
                                                                WebView webView7 = webViewFragment.P().f51394f;
                                                                HashMap mapR6 = webViewFragment.R();
                                                                JSHookAop.loadUrl(webView7, string, mapR6);
                                                                webView7.loadUrl(string, mapR6);
                                                                return false;
                                                            }
                                                        }
                                                    } else if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                                        Companion companion11 = WebViewFragment.n1;
                                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                        if (str2 == null) {
                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                            if (str3 == null) {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            } else {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            }
                                                        } else {
                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                            if (str3 == null) {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            } else {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            }
                                                        }
                                                        if (!zA) {
                                                            WebView webView8 = webViewFragment.P().f51394f;
                                                            HashMap mapR7 = webViewFragment.R();
                                                            JSHookAop.loadUrl(webView8, string, mapR7);
                                                            webView8.loadUrl(string, mapR7);
                                                            return false;
                                                        }
                                                    } else {
                                                        Companion companion12 = WebViewFragment.n1;
                                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                        if (str2 == null) {
                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                            if (str3 == null) {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            } else {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            }
                                                        } else {
                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                            if (str3 == null) {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            } else {
                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                if (str4 == null) {
                                                                    zA = false;
                                                                } else {
                                                                    zA = false;
                                                                }
                                                            }
                                                        }
                                                        if (!zA) {
                                                            WebView webView9 = webViewFragment.P().f51394f;
                                                            HashMap mapR8 = webViewFragment.R();
                                                            JSHookAop.loadUrl(webView9, string, mapR8);
                                                            webView9.loadUrl(string, mapR8);
                                                            return false;
                                                        }
                                                    }
                                                }
                                            } else {
                                                intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                                                activity4 = webViewFragment.getActivity();
                                                if (activity4 != null) {
                                                    activity4.startActivity(intent);
                                                }
                                                activity5 = webViewFragment.getActivity();
                                                if (activity5 != null) {
                                                    activity5.finish();
                                                }
                                                break;
                                            }
                                        } else {
                                            webViewFragment.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
                                            break;
                                        }
                                    } else {
                                        MailTo mailTo = MailTo.parse(str);
                                        to = mailTo.getTo();
                                        if (to == null) {
                                            to = "";
                                        }
                                        String subject = mailTo.getSubject();
                                        String body = mailTo.getBody();
                                        String cc = mailTo.getCc();
                                        if (cc != null) {
                                        }
                                        Intent intent3 = new Intent("android.intent.action.SEND");
                                        intent3.putExtra("android.intent.extra.EMAIL", new String[]{to});
                                        intent3.putExtra("android.intent.extra.TEXT", subject);
                                        intent3.putExtra("android.intent.extra.SUBJECT", body);
                                        intent3.putExtra("android.intent.extra.CC", new String[]{str});
                                        intent3.setType("message/rfc822");
                                        webViewFragment.startActivity(intent3);
                                        break;
                                    }
                                }
                            } else {
                                str5 = urlCatchingConfigA.f67281b;
                                if ("Forward".equals(str5) && !"forward".equals(str5)) {
                                    activity2 = webViewFragment.getActivity();
                                    if (activity2 != null) {
                                        linkHandler = webViewFragment.O;
                                        if (linkHandler == null) {
                                            Intrinsics.h("linkHandler");
                                            throw null;
                                        }
                                        zB = LinkHandler.b(linkHandler, str, activity2);
                                    } else {
                                        zB = false;
                                    }
                                    if (!zB) {
                                        if (StringsKt.P(str, "mailto:", false)) {
                                            if (StringsKt.P(str, "tel:", false)) {
                                                if (StringsKt.k(str, "/homepage", false)) {
                                                    webViewRouterU2 = webViewFragment.U();
                                                    strB = StringExtKt.b(str);
                                                    if (strB != null) {
                                                        zU = CollectionsKt.u(webViewRouterU2.f65509e, Uri.parse(strB).getHost());
                                                    } else {
                                                        zU = false;
                                                    }
                                                    if (zU) {
                                                        webViewFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                                                        return true;
                                                    }
                                                    webViewFragment.U();
                                                    activity3 = webViewFragment.getActivity();
                                                    if (!((Boolean) webViewFragment.b1.getF71699b()).booleanValue()) {
                                                        if (StringsKt.k(str, "success", false)) {
                                                            if (StringsKt.k(str, "error", false)) {
                                                                if (StringsKt.k(str, "cancel", false)) {
                                                                    webViewFragment.U();
                                                                    if (((CartPreviousScreen) lazy.getF71699b()) == null && StringsKt.k(string, "lvpass=true", false) && StringsKt.k(string, "cancelOrder=true", false)) {
                                                                        FragmentActivity activity8 = webViewFragment.getActivity();
                                                                        if (activity8 != null) {
                                                                            activity8.setResult(-1, new Intent().putExtra("NATIVE_CART_ORDER_CANCELED", true));
                                                                            activity8.finish();
                                                                        }
                                                                    } else if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE) || Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_HTTPS)) {
                                                                        Companion companion13 = WebViewFragment.n1;
                                                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                        if (str2 == null && StringsKt.P(str, str2, false)) {
                                                                            webViewFragment.g1 = true;
                                                                            Uri.Builder builderEncodedAuthority = new Uri.Builder().scheme("lvpass").encodedAuthority(DeepLink.AUTHENTICATE_GOOGLE.getHost());
                                                                            LinkHandler linkHandler2 = webViewFragment.O;
                                                                            if (linkHandler2 == null) {
                                                                                Intrinsics.h("linkHandler");
                                                                                throw null;
                                                                            }
                                                                            String string2 = builderEncodedAuthority.toString();
                                                                            string2.getClass();
                                                                            FragmentActivity activity9 = webViewFragment.getActivity();
                                                                            int i2 = LinkHandler.f51604e;
                                                                            zA = linkHandler2.a(string2, activity9, null);
                                                                        } else {
                                                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                            if (str3 == null && StringsKt.P(str, str3, false)) {
                                                                                webViewFragment.g1 = true;
                                                                                Uri.Builder builderEncodedAuthority2 = new Uri.Builder().scheme("lvpass").encodedAuthority(DeepLink.AUTHENTICATE_LINE.getHost());
                                                                                LinkHandler linkHandler3 = webViewFragment.O;
                                                                                if (linkHandler3 == null) {
                                                                                    Intrinsics.h("linkHandler");
                                                                                    throw null;
                                                                                }
                                                                                String string3 = builderEncodedAuthority2.toString();
                                                                                string3.getClass();
                                                                                FragmentActivity activity10 = webViewFragment.getActivity();
                                                                                int i3 = LinkHandler.f51604e;
                                                                                zA = linkHandler3.a(string3, activity10, null);
                                                                            } else {
                                                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                if (str4 == null && StringsKt.P(str, str4, false)) {
                                                                                    webViewFragment.g1 = true;
                                                                                    Uri.Builder builderEncodedAuthority3 = new Uri.Builder().scheme("lvpass").encodedAuthority(DeepLink.AUTHENTICATE_KAKAO.getHost());
                                                                                    LinkHandler linkHandler4 = webViewFragment.O;
                                                                                    if (linkHandler4 == null) {
                                                                                        Intrinsics.h("linkHandler");
                                                                                        throw null;
                                                                                    }
                                                                                    String string4 = builderEncodedAuthority3.toString();
                                                                                    string4.getClass();
                                                                                    FragmentActivity activity11 = webViewFragment.getActivity();
                                                                                    int i4 = LinkHandler.f51604e;
                                                                                    zA = linkHandler4.a(string4, activity11, null);
                                                                                } else {
                                                                                    zA = false;
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!zA) {
                                                                            WebView webView10 = webViewFragment.P().f51394f;
                                                                            HashMap mapR9 = webViewFragment.R();
                                                                            JSHookAop.loadUrl(webView10, string, mapR9);
                                                                            webView10.loadUrl(string, mapR9);
                                                                            return false;
                                                                        }
                                                                    } else {
                                                                        try {
                                                                            webViewFragment.requireActivity().startActivity(new Intent("android.intent.action.VIEW", uriA));
                                                                        } catch (ActivityNotFoundException unused) {
                                                                            Companion companion14 = WebViewFragment.n1;
                                                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                            if (str2 == null) {
                                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                                if (str3 == null) {
                                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                    if (str4 == null) {
                                                                                        zA = false;
                                                                                    } else {
                                                                                        zA = false;
                                                                                    }
                                                                                } else {
                                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                    if (str4 == null) {
                                                                                        zA = false;
                                                                                    } else {
                                                                                        zA = false;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                                if (str3 == null) {
                                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                    if (str4 == null) {
                                                                                        zA = false;
                                                                                    } else {
                                                                                        zA = false;
                                                                                    }
                                                                                } else {
                                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                                    if (str4 == null) {
                                                                                        zA = false;
                                                                                    } else {
                                                                                        zA = false;
                                                                                    }
                                                                                }
                                                                            }
                                                                            if (!zA) {
                                                                                WebView webView11 = webViewFragment.P().f51394f;
                                                                                HashMap mapR10 = webViewFragment.R();
                                                                                JSHookAop.loadUrl(webView11, string, mapR10);
                                                                                webView11.loadUrl(string, mapR10);
                                                                                return false;
                                                                            }
                                                                        }
                                                                    }
                                                                } else if (activity3 != null) {
                                                                    activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_CANCEL", true));
                                                                    activity3.finish();
                                                                }
                                                            } else if (activity3 != null) {
                                                                activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_FAILED", true));
                                                                activity3.finish();
                                                            }
                                                        } else if (activity3 != null) {
                                                            activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_SUCCESS", true));
                                                            activity3.finish();
                                                        }
                                                        break;
                                                    } else {
                                                        webViewFragment.U();
                                                        if (((CartPreviousScreen) lazy.getF71699b()) == null) {
                                                            if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                                                Companion companion15 = WebViewFragment.n1;
                                                                str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                if (str2 == null) {
                                                                    str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                    if (str3 == null) {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    } else {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    }
                                                                } else {
                                                                    str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                    if (str3 == null) {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    } else {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    }
                                                                }
                                                                if (!zA) {
                                                                    WebView webView12 = webViewFragment.P().f51394f;
                                                                    HashMap mapR11 = webViewFragment.R();
                                                                    JSHookAop.loadUrl(webView12, string, mapR11);
                                                                    webView12.loadUrl(string, mapR11);
                                                                    return false;
                                                                }
                                                            } else {
                                                                Companion companion16 = WebViewFragment.n1;
                                                                str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                                if (str2 == null) {
                                                                    str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                    if (str3 == null) {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    } else {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    }
                                                                } else {
                                                                    str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                    if (str3 == null) {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    } else {
                                                                        str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                        if (str4 == null) {
                                                                            zA = false;
                                                                        } else {
                                                                            zA = false;
                                                                        }
                                                                    }
                                                                }
                                                                if (!zA) {
                                                                    WebView webView13 = webViewFragment.P().f51394f;
                                                                    HashMap mapR12 = webViewFragment.R();
                                                                    JSHookAop.loadUrl(webView13, string, mapR12);
                                                                    webView13.loadUrl(string, mapR12);
                                                                    return false;
                                                                }
                                                            }
                                                        } else if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                                            Companion companion17 = WebViewFragment.n1;
                                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                            if (str2 == null) {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            } else {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            }
                                                            if (!zA) {
                                                                WebView webView14 = webViewFragment.P().f51394f;
                                                                HashMap mapR13 = webViewFragment.R();
                                                                JSHookAop.loadUrl(webView14, string, mapR13);
                                                                webView14.loadUrl(string, mapR13);
                                                                return false;
                                                            }
                                                        } else {
                                                            Companion companion18 = WebViewFragment.n1;
                                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                                            if (str2 == null) {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            } else {
                                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                                if (str3 == null) {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                } else {
                                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                                    if (str4 == null) {
                                                                        zA = false;
                                                                    } else {
                                                                        zA = false;
                                                                    }
                                                                }
                                                            }
                                                            if (!zA) {
                                                                WebView webView15 = webViewFragment.P().f51394f;
                                                                HashMap mapR14 = webViewFragment.R();
                                                                JSHookAop.loadUrl(webView15, string, mapR14);
                                                                webView15.loadUrl(string, mapR14);
                                                                return false;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                                                    activity4 = webViewFragment.getActivity();
                                                    if (activity4 != null) {
                                                        activity4.startActivity(intent);
                                                    }
                                                    activity5 = webViewFragment.getActivity();
                                                    if (activity5 != null) {
                                                        activity5.finish();
                                                    }
                                                    break;
                                                }
                                            } else {
                                                webViewFragment.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
                                                break;
                                            }
                                        } else {
                                            MailTo mailTo2 = MailTo.parse(str);
                                            to = mailTo2.getTo();
                                            if (to == null) {
                                                to = "";
                                            }
                                            String subject2 = mailTo2.getSubject();
                                            String body2 = mailTo2.getBody();
                                            String cc2 = mailTo2.getCc();
                                            String str8 = cc2 != null ? cc2 : "";
                                            Intent intent4 = new Intent("android.intent.action.SEND");
                                            intent4.putExtra("android.intent.extra.EMAIL", new String[]{to});
                                            intent4.putExtra("android.intent.extra.TEXT", subject2);
                                            intent4.putExtra("android.intent.extra.SUBJECT", body2);
                                            intent4.putExtra("android.intent.extra.CC", new String[]{str8});
                                            intent4.setType("message/rfc822");
                                            webViewFragment.startActivity(intent4);
                                            break;
                                        }
                                    }
                                } else {
                                    Logger logger = webViewRouterU.f65508c;
                                    "Url used to open CustomTabs = ".concat(string);
                                    logger.getClass();
                                    if (StringExtKt.a(string)) {
                                        Context applicationContext = activity.getApplicationContext();
                                        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
                                        Integer numValueOf = Integer.valueOf(ContextCompat.getColor(applicationContext, R.color.eternity) | com.batch.android.q0.b.v);
                                        CustomTabColorSchemeParams$Builder customTabColorSchemeParams$Builder = builder.f1380b;
                                        customTabColorSchemeParams$Builder.f1375b = numValueOf;
                                        customTabColorSchemeParams$Builder.f1374a = Integer.valueOf(ContextCompat.getColor(applicationContext, R.color.white) | com.batch.android.q0.b.v);
                                        CustomTabsIntent customTabsIntentA = builder.a();
                                        Uri uri2 = Uri.parse(string);
                                        Intent intent5 = customTabsIntentA.f1377a;
                                        intent5.setData(uri2);
                                        ContextCompat.startActivity(activity, intent5, customTabsIntentA.f1378b);
                                    }
                                    activity6 = webViewFragment.getActivity();
                                    if (activity6 != null) {
                                        activity6.finish();
                                    }
                                    break;
                                }
                            }
                    }
                } else {
                    webViewRouterU = webViewFragment.U();
                    activity = webViewFragment.getActivity();
                    if (activity != null) {
                        activity2 = webViewFragment.getActivity();
                        if (activity2 != null) {
                            linkHandler = webViewFragment.O;
                            if (linkHandler == null) {
                                Intrinsics.h("linkHandler");
                                throw null;
                            }
                            zB = LinkHandler.b(linkHandler, str, activity2);
                        } else {
                            zB = false;
                        }
                        if (!zB) {
                            if (StringsKt.P(str, "mailto:", false)) {
                                MailTo mailTo3 = MailTo.parse(str);
                                to = mailTo3.getTo();
                                if (to == null) {
                                    to = "";
                                }
                                String subject3 = mailTo3.getSubject();
                                String body3 = mailTo3.getBody();
                                String cc3 = mailTo3.getCc();
                                if (cc3 != null) {
                                }
                                Intent intent6 = new Intent("android.intent.action.SEND");
                                intent6.putExtra("android.intent.extra.EMAIL", new String[]{to});
                                intent6.putExtra("android.intent.extra.TEXT", subject3);
                                intent6.putExtra("android.intent.extra.SUBJECT", body3);
                                intent6.putExtra("android.intent.extra.CC", new String[]{str8});
                                intent6.setType("message/rfc822");
                                webViewFragment.startActivity(intent6);
                            } else if (StringsKt.P(str, "tel:", false)) {
                                webViewFragment.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
                            } else if (StringsKt.k(str, "/homepage", false)) {
                                intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                                activity4 = webViewFragment.getActivity();
                                if (activity4 != null) {
                                    activity4.startActivity(intent);
                                }
                                activity5 = webViewFragment.getActivity();
                                if (activity5 != null) {
                                    activity5.finish();
                                }
                            } else {
                                webViewRouterU2 = webViewFragment.U();
                                strB = StringExtKt.b(str);
                                if (strB != null) {
                                    zU = CollectionsKt.u(webViewRouterU2.f65509e, Uri.parse(strB).getHost());
                                } else {
                                    zU = false;
                                }
                                if (zU) {
                                    webViewFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                                    return true;
                                }
                                webViewFragment.U();
                                activity3 = webViewFragment.getActivity();
                                if (!((Boolean) webViewFragment.b1.getF71699b()).booleanValue()) {
                                    webViewFragment.U();
                                    if (((CartPreviousScreen) lazy.getF71699b()) == null) {
                                        if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                            Companion companion19 = WebViewFragment.n1;
                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                            if (str2 == null) {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            } else {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            }
                                            if (!zA) {
                                                WebView webView16 = webViewFragment.P().f51394f;
                                                HashMap mapR15 = webViewFragment.R();
                                                JSHookAop.loadUrl(webView16, string, mapR15);
                                                webView16.loadUrl(string, mapR15);
                                                return false;
                                            }
                                        } else {
                                            Companion companion110 = WebViewFragment.n1;
                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                            if (str2 == null) {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            } else {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            }
                                            if (!zA) {
                                                WebView webView17 = webViewFragment.P().f51394f;
                                                HashMap mapR16 = webViewFragment.R();
                                                JSHookAop.loadUrl(webView17, string, mapR16);
                                                webView17.loadUrl(string, mapR16);
                                                return false;
                                            }
                                        }
                                    } else if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                        Companion companion111 = WebViewFragment.n1;
                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                        if (str2 == null) {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        } else {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        }
                                        if (!zA) {
                                            WebView webView18 = webViewFragment.P().f51394f;
                                            HashMap mapR17 = webViewFragment.R();
                                            JSHookAop.loadUrl(webView18, string, mapR17);
                                            webView18.loadUrl(string, mapR17);
                                            return false;
                                        }
                                    } else {
                                        Companion companion112 = WebViewFragment.n1;
                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                        if (str2 == null) {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        } else {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        }
                                        if (!zA) {
                                            WebView webView19 = webViewFragment.P().f51394f;
                                            HashMap mapR18 = webViewFragment.R();
                                            JSHookAop.loadUrl(webView19, string, mapR18);
                                            webView19.loadUrl(string, mapR18);
                                            return false;
                                        }
                                    }
                                } else if (StringsKt.k(str, "success", false)) {
                                    if (activity3 != null) {
                                        activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_SUCCESS", true));
                                        activity3.finish();
                                    }
                                } else if (StringsKt.k(str, "error", false)) {
                                    if (activity3 != null) {
                                        activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_FAILED", true));
                                        activity3.finish();
                                    }
                                } else if (StringsKt.k(str, "cancel", false)) {
                                    webViewFragment.U();
                                    if (((CartPreviousScreen) lazy.getF71699b()) == null) {
                                        if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                            Companion companion113 = WebViewFragment.n1;
                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                            if (str2 == null) {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            } else {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            }
                                            if (!zA) {
                                                WebView webView110 = webViewFragment.P().f51394f;
                                                HashMap mapR19 = webViewFragment.R();
                                                JSHookAop.loadUrl(webView110, string, mapR19);
                                                webView110.loadUrl(string, mapR19);
                                                return false;
                                            }
                                        } else {
                                            Companion companion114 = WebViewFragment.n1;
                                            str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                            if (str2 == null) {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            } else {
                                                str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                                if (str3 == null) {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                } else {
                                                    str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                    if (str4 == null) {
                                                        zA = false;
                                                    } else {
                                                        zA = false;
                                                    }
                                                }
                                            }
                                            if (!zA) {
                                                WebView webView111 = webViewFragment.P().f51394f;
                                                HashMap mapR110 = webViewFragment.R();
                                                JSHookAop.loadUrl(webView111, string, mapR110);
                                                webView111.loadUrl(string, mapR110);
                                                return false;
                                            }
                                        }
                                    } else if (Intrinsics.c(uriA.getScheme(), SecurityConstants.SECURITY_NONE)) {
                                        Companion companion115 = WebViewFragment.n1;
                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                        if (str2 == null) {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        } else {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        }
                                        if (!zA) {
                                            WebView webView112 = webViewFragment.P().f51394f;
                                            HashMap mapR111 = webViewFragment.R();
                                            JSHookAop.loadUrl(webView112, string, mapR111);
                                            webView112.loadUrl(string, mapR111);
                                            return false;
                                        }
                                    } else {
                                        Companion companion116 = WebViewFragment.n1;
                                        str2 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65539f;
                                        if (str2 == null) {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        } else {
                                            str3 = ((WebViewUiModel) webViewFragment.T().x.getValue()).g;
                                            if (str3 == null) {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            } else {
                                                str4 = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65540h;
                                                if (str4 == null) {
                                                    zA = false;
                                                } else {
                                                    zA = false;
                                                }
                                            }
                                        }
                                        if (!zA) {
                                            WebView webView113 = webViewFragment.P().f51394f;
                                            HashMap mapR112 = webViewFragment.R();
                                            JSHookAop.loadUrl(webView113, string, mapR112);
                                            webView113.loadUrl(string, mapR112);
                                            return false;
                                        }
                                    }
                                } else if (activity3 != null) {
                                    activity3.setResult(-1, new Intent().putExtra("CARE_SERVICE_PAYMENT_CANCEL", true));
                                    activity3.finish();
                                }
                            }
                        }
                    } else {
                        str5 = urlCatchingConfigA.f67281b;
                        if ("Forward".equals(str5)) {
                        }
                        Logger logger2 = webViewRouterU.f65508c;
                        "Url used to open CustomTabs = ".concat(string);
                        logger2.getClass();
                        if (StringExtKt.a(string)) {
                            Context applicationContext2 = activity.getApplicationContext();
                            CustomTabsIntent.Builder builder2 = new CustomTabsIntent.Builder();
                            Integer numValueOf2 = Integer.valueOf(ContextCompat.getColor(applicationContext2, R.color.eternity) | com.batch.android.q0.b.v);
                            CustomTabColorSchemeParams$Builder customTabColorSchemeParams$Builder2 = builder2.f1380b;
                            customTabColorSchemeParams$Builder2.f1375b = numValueOf2;
                            customTabColorSchemeParams$Builder2.f1374a = Integer.valueOf(ContextCompat.getColor(applicationContext2, R.color.white) | com.batch.android.q0.b.v);
                            CustomTabsIntent customTabsIntentA2 = builder2.a();
                            Uri uri3 = Uri.parse(string);
                            Intent intent7 = customTabsIntentA2.f1377a;
                            intent7.setData(uri3);
                            ContextCompat.startActivity(activity, intent7, customTabsIntentA2.f1378b);
                        }
                        activity6 = webViewFragment.getActivity();
                        if (activity6 != null) {
                            activity6.finish();
                        }
                    }
                }
            }
            return true;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65468a;

        static {
            int[] iArr = new int[CustomizationType.values().length];
            try {
                iArr[CustomizationType.MONOGRAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomizationType.BEAUTY_ENGRAVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomizationType.HOTSTAMPING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomizationType.PERFUME_ENGRAVING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CustomizationType.DIAMOND_ENGRAVING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CustomizationType.NO_CUSTOMIZATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f65468a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onDestroyView$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onDestroyView$1", f = "WebViewFragment.kt", l = {872}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65481b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WebViewFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65481b;
            Integer num = null;
            Object[] objArr = 0;
            int i3 = 1;
            if (i2 == 0) {
                ResultKt.b(obj);
                LVEventSender lVEventSender = WebViewFragment.this.J;
                if (lVEventSender == null) {
                    Intrinsics.h("eventSender");
                    throw null;
                }
                AppEvent.RefreshCartCountEvent refreshCartCountEvent = new AppEvent.RefreshCartCountEvent(num, i3, objArr == true ? 1 : 0);
                this.f65481b = 1;
                if (lVEventSender.a(refreshCartCountEvent, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$3", f = "WebViewFragment.kt", l = {1344}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65485b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$3$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "checkoutUrl", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$3$1", f = "WebViewFragment.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f65487b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WebViewFragment f65488c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(WebViewFragment webViewFragment, Continuation continuation) {
                super(2, continuation);
                this.f65488c = webViewFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f65488c, continuation);
                anonymousClass1.f65487b = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((String) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                String str = (String) this.f65487b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                WebViewFragment webViewFragment = this.f65488c;
                if (webViewFragment.g1) {
                    WebViewFragment.O(webViewFragment, str);
                    webViewFragment.g1 = false;
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass3(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WebViewFragment.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65485b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Companion companion = WebViewFragment.n1;
                WebViewFragment webViewFragment = WebViewFragment.this;
                SharedFlow sharedFlow = webViewFragment.T().r;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(webViewFragment, null);
                sharedFlow.getClass();
                this.f65485b = 1;
                if (FlowKt.g(sharedFlow, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            md.k("SharedFlow never completes, this call should never return.");
            return null;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$4", f = "WebViewFragment.kt", l = {352}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65489b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$4$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$4$1", f = "WebViewFragment.kt", l = {1344}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f65491b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WebViewFragment f65492c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$4$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$4$1$1", f = "WebViewFragment.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C03201 extends SuspendLambda implements Function2<WebViewViewModel.CheckoutEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public /* synthetic */ Object f65493b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ WebViewFragment f65494c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C03201(WebViewFragment webViewFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f65494c = webViewFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    C03201 c03201 = new C03201(this.f65494c, continuation);
                    c03201.f65493b = obj;
                    return c03201;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C03201) create((WebViewViewModel.CheckoutEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    WebViewViewModel.CheckoutEvent checkoutEvent = (WebViewViewModel.CheckoutEvent) this.f65493b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    if (!(checkoutEvent instanceof WebViewViewModel.CheckoutEvent.NavigateToThankYou)) {
                        v40.g();
                        return null;
                    }
                    FragmentActivity activity = this.f65494c.getActivity();
                    if (activity != null) {
                        ThankYouActivity.Companion companion = ThankYouActivity.q;
                        CartPreviousScreen cartPreviousScreen = ((WebViewViewModel.CheckoutEvent.NavigateToThankYou) checkoutEvent).f65565a;
                        companion.getClass();
                        cartPreviousScreen.getClass();
                        Intent intentPutExtra = new Intent(activity, (Class<?>) ThankYouActivity.class).putExtra("PREVIOUS_SCREEN", cartPreviousScreen.ordinal());
                        intentPutExtra.getClass();
                        activity.startActivity(intentPutExtra);
                        activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        activity.finish();
                    }
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(WebViewFragment webViewFragment, Continuation continuation) {
                super(2, continuation);
                this.f65492c = webViewFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f65492c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f65491b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = WebViewFragment.n1;
                    WebViewFragment webViewFragment = this.f65492c;
                    SharedFlow sharedFlow = webViewFragment.T().t;
                    C03201 c03201 = new C03201(webViewFragment, null);
                    sharedFlow.getClass();
                    this.f65491b = 1;
                    if (FlowKt.g(sharedFlow, c03201, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                md.k("SharedFlow never completes, this call should never return.");
                return null;
            }
        }

        public AnonymousClass4(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WebViewFragment.this.new AnonymousClass4(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65489b;
            if (i2 == 0) {
                ResultKt.b(obj);
                WebViewFragment webViewFragment = WebViewFragment.this;
                LifecycleOwner viewLifecycleOwner = webViewFragment.getViewLifecycleOwner();
                viewLifecycleOwner.getClass();
                Lifecycle.State state = Lifecycle.State.STARTED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(webViewFragment, null);
                this.f65489b = 1;
                if (RepeatOnLifecycleKt.b(viewLifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5", f = "WebViewFragment.kt", l = {370}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65495b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5$1", f = "WebViewFragment.kt", l = {371}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f65497b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WebViewFragment f65498c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$onViewCreated$5$1$1", f = "WebViewFragment.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C03211 extends SuspendLambda implements Function2<WebViewViewEvents, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public /* synthetic */ Object f65499b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ WebViewFragment f65500c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C03211(WebViewFragment webViewFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f65500c = webViewFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    C03211 c03211 = new C03211(this.f65500c, continuation);
                    c03211.f65499b = obj;
                    return c03211;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C03211) create((WebViewViewEvents) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    View viewFindViewById;
                    Object next;
                    Object next2;
                    Object next3;
                    ConsentValueUiModel consentValueUiModel;
                    ConsentValueUiModel consentValueUiModel2;
                    ConsentValueUiModel consentValueUiModel3;
                    WebViewFragment webViewFragment = this.f65500c;
                    kotlin.Lazy lazy = webViewFragment.V;
                    WebViewViewEvents webViewViewEvents = (WebViewViewEvents) this.f65499b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    if (webViewViewEvents instanceof WebViewViewEvents.SetConsents) {
                        List list = ((WebViewViewEvents.SetConsents) webViewViewEvents).f65546a;
                        Companion companion = WebViewFragment.n1;
                        if (StringExtKt.a((String) lazy.getF71699b())) {
                            String str = (String) lazy.getF71699b();
                            if (str == null) {
                                str = "";
                            }
                            Uri uriC = UriExtKt.c(Uri.parse(str));
                            boolean z = ((WebViewUiModel) webViewFragment.T().x.getValue()).f65536b;
                            list.getClass();
                            if (UriExtKt.f(uriC)) {
                                String string = uriC.toString();
                                string.getClass();
                                boolean zA = false;
                                if (!StringsKt.k(string, "consentAnalytics", false) && z) {
                                    Uri.Builder builderBuildUpon = uriC.buildUpon();
                                    List list2 = list;
                                    Iterator it = list2.iterator();
                                    do {
                                        if (!it.hasNext()) {
                                            next = null;
                                            break;
                                        }
                                        next = it.next();
                                    } while (!(((ConsentUiModel) next) instanceof ConsentUiModel.AnalyticsConsentUiModel));
                                    ConsentUiModel consentUiModel = (ConsentUiModel) next;
                                    Uri.Builder builderAppendQueryParameter = builderBuildUpon.appendQueryParameter("consentAnalytics", String.valueOf((consentUiModel == null || (consentValueUiModel3 = consentUiModel.f63400a) == null) ? false : consentValueUiModel3.a()));
                                    Iterator it2 = list2.iterator();
                                    do {
                                        if (!it2.hasNext()) {
                                            next2 = null;
                                            break;
                                        }
                                        next2 = it2.next();
                                    } while (!(((ConsentUiModel) next2) instanceof ConsentUiModel.CustomisationConsentUiModel));
                                    ConsentUiModel consentUiModel2 = (ConsentUiModel) next2;
                                    Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter("consentPersonalization", String.valueOf((consentUiModel2 == null || (consentValueUiModel2 = consentUiModel2.f63400a) == null) ? false : consentValueUiModel2.a()));
                                    Iterator it3 = list2.iterator();
                                    do {
                                        if (!it3.hasNext()) {
                                            next3 = null;
                                            break;
                                        }
                                        next3 = it3.next();
                                    } while (!(((ConsentUiModel) next3) instanceof ConsentUiModel.SocialConsentUiModel));
                                    ConsentUiModel consentUiModel3 = (ConsentUiModel) next3;
                                    if (consentUiModel3 != null && (consentValueUiModel = consentUiModel3.f63400a) != null) {
                                        zA = consentValueUiModel.a();
                                    }
                                    uriC = builderAppendQueryParameter2.appendQueryParameter("consentAdvertising", String.valueOf(zA)).build();
                                    uriC.getClass();
                                }
                            }
                            Uri uriA = UriExtKt.a(UriExtKt.b(uriC, ((WebViewUiModel) webViewFragment.T().x.getValue()).f65537c), ((WebViewUiModel) webViewFragment.T().x.getValue()).f65543k);
                            if (webViewFragment.W()) {
                                WebViewViewModel webViewViewModelT = webViewFragment.T();
                                String string2 = uriA.toString();
                                string2.getClass();
                                BuildersKt.c(ViewModelKt.a(webViewViewModelT), null, null, new WebViewViewModel$checkSSOForWebView$1(webViewViewModelT, string2, null), 3);
                            } else {
                                WebView webView = webViewFragment.P().f51394f;
                                String string3 = uriA.toString();
                                HashMap mapR = webViewFragment.R();
                                JSHookAop.loadUrl(webView, string3, mapR);
                                webView.loadUrl(string3, mapR);
                            }
                        } else {
                            FragmentActivity activity = webViewFragment.getActivity();
                            if (activity != null) {
                                activity.runOnUiThread(new f31(webViewFragment, 9));
                            }
                        }
                    } else if (webViewViewEvents instanceof WebViewViewEvents.LoadCart) {
                        WebViewFragment.O(webViewFragment, ((WebViewViewEvents.LoadCart) webViewViewEvents).f65545a);
                    } else {
                        if (!(webViewViewEvents instanceof WebViewViewEvents.DisplayError)) {
                            v40.g();
                            return null;
                        }
                        Throwable th = ((WebViewViewEvents.DisplayError) webViewViewEvents).f65544a;
                        Companion companion2 = WebViewFragment.n1;
                        webViewFragment.S().c(WebViewFragment.p1, th.getMessage(), th);
                        FragmentActivity activity2 = webViewFragment.getActivity();
                        if (activity2 != null && (viewFindViewById = activity2.findViewById(android.R.id.content)) != null) {
                            int[] iArr = Snackbar.A;
                            Snackbar.g(viewFindViewById, viewFindViewById.getResources().getText(R.string.error_generic), -1).h();
                        }
                    }
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(WebViewFragment webViewFragment, Continuation continuation) {
                super(2, continuation);
                this.f65498c = webViewFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f65498c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f65497b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = WebViewFragment.n1;
                    WebViewFragment webViewFragment = this.f65498c;
                    Flow flow = webViewFragment.T().v;
                    C03211 c03211 = new C03211(webViewFragment, null);
                    this.f65497b = 1;
                    if (FlowKt.g(flow, c03211, this) == coroutineSingletons) {
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

        public AnonymousClass5(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WebViewFragment.this.new AnonymousClass5(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass5) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65495b;
            if (i2 == 0) {
                ResultKt.b(obj);
                WebViewFragment webViewFragment = WebViewFragment.this;
                LifecycleOwner viewLifecycleOwner = webViewFragment.getViewLifecycleOwner();
                viewLifecycleOwner.getClass();
                Lifecycle.State state = Lifecycle.State.STARTED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(webViewFragment, null);
                this.f65495b = 1;
                if (RepeatOnLifecycleKt.b(viewLifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
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

    public WebViewFragment() {
        super(R.layout.fragment_web_view);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final kotlin.Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.F = new ViewModelLazy(Reflection.f71922a.b(WebViewViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) == null) ? this.getF13588e() : f13588e;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.T = FragmentExtKt.d(this, WebViewFragment$binding$2.f65469b);
        this.V = LazyKt.b(new l61(this, 5));
        this.W = LazyKt.b(new l61(this, 17));
        this.X = LazyKt.b(new l61(this, 18));
        this.Y = LazyKt.b(new l61(this, 19));
        this.Z = LazyKt.b(new l61(this, 20));
        this.h0 = LazyKt.b(new l61(this, 21));
        this.t0 = LazyKt.b(new l61(this, 22));
        this.b1 = LazyKt.b(new l61(this, 0));
        this.c1 = LazyKt.b(new l61(this, 1));
        this.d1 = LazyKt.b(new l61(this, 2));
        this.e1 = LazyKt.b(new l61(this, 10));
        this.f1 = LazyKt.b(new l61(this, 14));
        Boolean bool = Boolean.FALSE;
        this.k1 = StateFlowKt.a(bool);
        this.l1 = StateFlowKt.a(bool);
        this.m1 = StateFlowKt.a(bool);
    }

    public static final void O(WebViewFragment webViewFragment, String str) {
        Uri uriB = UriExtKt.b(Uri.parse(str), ((WebViewUiModel) webViewFragment.T().x.getValue()).f65537c);
        WebView webView = webViewFragment.P().f51394f;
        String string = uriB.toString();
        HashMap mapR = webViewFragment.R();
        JSHookAop.loadUrl(webView, string, mapR);
        webView.loadUrl(string, mapR);
    }

    public final FragmentWebViewBinding P() {
        return (FragmentWebViewBinding) this.T.c(this, o1[0]);
    }

    public final CustomizationType Q() {
        return (CustomizationType) this.d1.getF71699b();
    }

    public final HashMap R() {
        String strA;
        HashMap map = new HashMap();
        String str = ((WebViewUiModel) T().x.getValue()).f65541i;
        AkamaiSecurityHelper akamaiSecurityHelper = this.N;
        if (akamaiSecurityHelper == null) {
            Intrinsics.h("akamaiSecurityHelper");
            throw null;
        }
        UserAgentInterceptor.Companion companion = UserAgentInterceptor.f47097c;
        Context context = akamaiSecurityHelper.f65800a;
        akamaiSecurityHelper.f65801b.getClass();
        companion.getClass();
        map.put("X-Akamai-Webview", UserAgentInterceptor.Companion.a(context, false));
        if (str != null && str.length() != 0) {
            String str2 = ((WebViewUiModel) T().x.getValue()).f65542j;
            if (str2 == null) {
                str2 = "";
            }
            map.put("USERID_SF", str2);
            map.put("TOKEN_SF", str);
        }
        if (!W()) {
            return map;
        }
        synchronized (CYFMonitor.class) {
            try {
                strA = com.cyberfend.cyfsecurity.CYFMonitor.f();
            } catch (Throwable unused) {
                strA = CYFMonitor.a();
            }
        }
        map.put("X-acf-sensor-data", strA);
        return map;
    }

    public final Logger S() {
        Logger logger = this.K;
        if (logger != null) {
            return logger;
        }
        Intrinsics.h("logger");
        throw null;
    }

    public final WebViewViewModel T() {
        return (WebViewViewModel) this.F.getF71699b();
    }

    public final WebViewRouter U() {
        WebViewRouter webViewRouter = this.M;
        if (webViewRouter != null) {
            return webViewRouter;
        }
        Intrinsics.h("webViewRouter");
        throw null;
    }

    public final boolean V() {
        return ((Boolean) this.f1.getF71699b()).booleanValue();
    }

    public final boolean W() {
        return ((Boolean) this.X.getF71699b()).booleanValue();
    }

    public final boolean X() {
        if (!P().f51394f.canGoBack() || ((Boolean) this.Y.getF71699b()).booleanValue() || this.h1 || V()) {
            return false;
        }
        P().f51394f.goBack();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ChatLifecycleObserver chatLifecycleObserver = this.R;
        if (chatLifecycleObserver != null) {
            if (chatLifecycleObserver != null) {
                chatLifecycleObserver.d(i2, i3, intent);
            } else {
                Intrinsics.h("chatLifecycleObserver");
                throw null;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.main.OnBackPressedListener
    public final boolean onBackPressed() {
        return X();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        if (((CartPreviousScreen) this.h0.getF71699b()) != null) {
            WebViewViewModel webViewViewModelT = T();
            String url = P().f51394f.getUrl();
            if (!webViewViewModelT.w) {
                webViewViewModelT.w = true;
                BuildersKt.c(ViewModelKt.a(webViewViewModelT), null, null, new WebViewViewModel$onCheckoutWebViewClosing$1(webViewViewModelT, url, null), 3);
            }
        }
        WebView webView = P().f51394f;
        JSHookAop.loadUrl(webView, MyScreenshareProducerWebView.BLANK);
        webView.loadUrl(MyScreenshareProducerWebView.BLANK);
        webView.clearHistory();
        webView.clearCache(true);
        webView.onPause();
        webView.removeAllViews();
        webView.destroy();
        P().f51393e.removeAllViews();
        if (W()) {
            BuildersKt.c(ViewModelKt.a(T()), null, null, new AnonymousClass1(null), 3);
        }
        super.onDestroyView();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.vuitton.android.presentation.screen.webview.Hilt_WebViewFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        FragmentManager supportFragmentManager;
        Fragment fragmentG;
        FragmentManager supportFragmentManager2;
        TextView textView;
        ImageView imageView;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        final BottomBarHandling bottomBarHandling = new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51578i);
        Lifecycle f13561b = getD();
        f13561b.getClass();
        new KeyboardVisibilityListener(view, f13561b, new KeyboardVisibilityListener.OnKeyboardVisibilityListener() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment.onViewCreated.1
            @Override // com.vuitton.android.presentation.lifecycleaware.KeyboardVisibilityListener.OnKeyboardVisibilityListener
            public final void a() {
                Companion companion = WebViewFragment.n1;
                WebViewFragment webViewFragment = WebViewFragment.this;
                webViewFragment.P().f51392c.setVisibility(webViewFragment.W() ? 0 : 8);
                bottomBarHandling.b(true);
            }

            @Override // com.vuitton.android.presentation.lifecycleaware.KeyboardVisibilityListener.OnKeyboardVisibilityListener
            public final void b() {
                Companion companion = WebViewFragment.n1;
                WebViewFragment webViewFragment = WebViewFragment.this;
                Button button = webViewFragment.P().f51392c;
                webViewFragment.W();
                button.setVisibility(8);
                bottomBarHandling.b(false);
            }
        });
        int i2 = 1;
        ViewExtKt.b(1, P().f51391b.f51467b);
        ConstraintLayout constraintLayout = P().f51393e;
        constraintLayout.getClass();
        int i3 = 2;
        ViewExtKt.b(2, constraintLayout);
        ViewExtKt.b(8, P().f51395h);
        WebView webView = P().f51394f;
        ViewCompat.x(webView, new ln0(webView, 25));
        if (webView.isAttachedToWindow()) {
            webView.requestApplyInsets();
        } else {
            webView.addOnAttachStateChangeListener(new ViewExtKt$requestApplyInsetsWhenAttachedToWindow$1());
        }
        boolean zBooleanValue = ((Boolean) this.W.getF71699b()).booleanValue();
        kotlin.Lazy lazy = this.c1;
        int i4 = 3;
        int i5 = 0;
        ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed disposeOnViewTreeLifecycleDestroyed = ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a;
        if (zBooleanValue) {
            FragmentExtKt.a(this, P().f51391b.f51468c, new l61(this, i4), 2);
            if (((Boolean) this.Y.getF71699b()).booleanValue()) {
                kotlin.Lazy lazy2 = this.Z;
                if (((String) lazy2.getF71699b()).length() > 0) {
                    String str = (String) lazy2.getF71699b();
                    FragmentActivity activity = getActivity();
                    if (activity != null && (imageView = (ImageView) activity.findViewById(R.id.toolbar_web_view_image)) != null) {
                        imageView.setVisibility(8);
                    }
                    FragmentActivity activity2 = getActivity();
                    if (activity2 != null && (textView = (TextView) activity2.findViewById(R.id.toolbar_web_view_title)) != null) {
                        textView.setText(str);
                        textView.setVisibility(0);
                    }
                }
            }
            if (((Boolean) lazy.getF71699b()).booleanValue()) {
                Context contextRequireContext = requireContext();
                contextRequireContext.getClass();
                ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
                composeView.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                composeView.setLayoutParams(new Toolbar.LayoutParams(-2, -2, 8388613));
                composeView.setContent(new ComposableLambdaImpl(2145611397, true, new m61(this, i3)));
                P().f51391b.f51468c.addView(composeView);
            }
        } else {
            P().f51391b.f51467b.setVisibility(8);
        }
        WebView webView2 = P().f51394f;
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView2, true);
        webView2.resumeTimers();
        Context context = webView2.getContext();
        if (context != null) {
            webView2.setBackgroundColor(ContextCompat.getColor(context, R.color.off_white));
        }
        webView2.setInitialScale(1);
        WebSettings settings = webView2.getSettings();
        settings.getClass();
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setGeolocationEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        webView2.setWebViewClient(new LVWebViewClient());
        webView2.setWebChromeClient(new LVWebChromeClient());
        Lazy lazy3 = this.G;
        if (lazy3 == null) {
            Intrinsics.h("analyticsWebInterface");
            throw null;
        }
        webView2.addJavascriptInterface(lazy3.get(), "AnalyticsWebInterface");
        Lazy lazy4 = this.H;
        if (lazy4 == null) {
            Intrinsics.h("appsFlyerWebInterface");
            throw null;
        }
        webView2.addJavascriptInterface(lazy4.get(), "AppsFlyerWebInterface");
        kotlin.Lazy lazy5 = this.e1;
        if (((Boolean) lazy5.getF71699b()).booleanValue()) {
            CustomizationCallback customizationCallback = new CustomizationCallback() { // from class: com.vuitton.android.presentation.screen.webview.WebViewFragment$initWebView$1$customizationCallback$1

                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public static final /* synthetic */ class WhenMappings {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final /* synthetic */ int[] f65480a;

                    static {
                        int[] iArr = new int[CustomizationType.values().length];
                        try {
                            iArr[CustomizationType.MONOGRAM.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[CustomizationType.BEAUTY_ENGRAVING.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[CustomizationType.PERFUME_ENGRAVING.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[CustomizationType.DIAMOND_ENGRAVING.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        try {
                            iArr[CustomizationType.HOTSTAMPING.ordinal()] = 5;
                        } catch (NoSuchFieldError unused5) {
                        }
                        f65480a = iArr;
                    }
                }

                @Override // com.vuitton.android.presentation.screen.pdp.models.CustomizationCallback
                public final void a(String str2, String str3) {
                    WebViewTrackingUiModel webViewTrackingUiModel;
                    WebViewFragment.Companion companion = WebViewFragment.n1;
                    WebViewFragment webViewFragment = this.f65479a;
                    int i6 = WhenMappings.f65480a[webViewFragment.Q().ordinal()];
                    if (i6 == 1) {
                        webViewTrackingUiModel = WebViewTrackingUiModel.OnMyMonogramWebViewConfirmEvent.f65529a;
                    } else if (i6 == 2) {
                        webViewTrackingUiModel = WebViewTrackingUiModel.OnBeautyEngravingWebViewConfirmEvent.f65517a;
                    } else if (i6 == 3) {
                        webViewTrackingUiModel = WebViewTrackingUiModel.OnPerfumeEngravingWebViewConfirmEvent.f65533a;
                    } else {
                        if (i6 != 4) {
                            md.k("Should not happen for customization");
                            return;
                        }
                        webViewTrackingUiModel = WebViewTrackingUiModel.OnDiamondEngravingWebViewConfirmEvent.f65521a;
                    }
                    webViewFragment.T().zc(webViewTrackingUiModel);
                    Intent intent = new Intent();
                    intent.putExtra("CUSTOMIZATION_ID", new CustomizationIdUiModel(str2, CustomizationIdTypeUiModel.THREEKIT));
                    intent.putExtra("SKU", str3);
                    intent.putExtra("CUSTOMIZATION_TYPE", webViewFragment.Q().name());
                    FragmentActivity activity3 = webViewFragment.getActivity();
                    if (activity3 != null) {
                        activity3.setResult(-1, intent);
                        activity3.finish();
                    }
                }

                @Override // com.vuitton.android.presentation.screen.pdp.models.CustomizationCallback
                public final void b(String str2) {
                    str2.getClass();
                    WebViewFragment.Companion companion = WebViewFragment.n1;
                    WebViewFragment webViewFragment = this.f65479a;
                    if (WhenMappings.f65480a[webViewFragment.Q().ordinal()] != 5) {
                        md.k("Should not happen for customization");
                        return;
                    }
                    webViewFragment.T().zc(WebViewTrackingUiModel.OnHotstampingWebViewConfirmEvent.f65525a);
                    Intent intent = new Intent();
                    intent.putExtra("CUSTOMIZATION_ID", new CustomizationIdUiModel(str2, CustomizationIdTypeUiModel.BASE64));
                    intent.putExtra("CUSTOMIZATION_TYPE", webViewFragment.Q().name());
                    FragmentActivity activity3 = webViewFragment.getActivity();
                    if (activity3 != null) {
                        activity3.setResult(-1, intent);
                        activity3.finish();
                    }
                }
            };
            Json json = this.L;
            if (json == null) {
                Intrinsics.h("json");
                throw null;
            }
            webView2.addJavascriptInterface(new CustomizationJsInterface(customizationCallback, json), "Android");
        }
        int i6 = 4;
        if (V()) {
            Json json2 = this.L;
            if (json2 == null) {
                Intrinsics.h("json");
                throw null;
            }
            webView2.addJavascriptInterface(new BookingPaymentJsInterface(json2, S(), new l61(this, i6)), "BookingPaymentBridge");
        }
        if (((Boolean) lazy5.getF71699b()).booleanValue()) {
            switch (WhenMappings.f65468a[Q().ordinal()]) {
                case 1:
                    T().zc(WebViewTrackingUiModel.MyMonogramWebViewScreen.f65513a);
                    Context contextRequireContext2 = requireContext();
                    contextRequireContext2.getClass();
                    ComposeView composeView2 = new ComposeView(contextRequireContext2, null, 0, 6, null);
                    composeView2.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                    composeView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                    composeView2.setContent(new ComposableLambdaImpl(-478375564, true, new m61(this, i5)));
                    P().f51393e.addView(composeView2);
                    break;
                case 2:
                    T().zc(WebViewTrackingUiModel.BeautyEngravingWebViewScreen.f65510a);
                    Context contextRequireContext3 = requireContext();
                    contextRequireContext3.getClass();
                    ComposeView composeView3 = new ComposeView(contextRequireContext3, null, 0, 6, null);
                    composeView3.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                    composeView3.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                    composeView3.setContent(new ComposableLambdaImpl(-478375564, true, new m61(this, i5)));
                    P().f51393e.addView(composeView3);
                    break;
                case 3:
                    T().zc(WebViewTrackingUiModel.HotstampingWebViewScreen.f65512a);
                    Context contextRequireContext4 = requireContext();
                    contextRequireContext4.getClass();
                    ComposeView composeView4 = new ComposeView(contextRequireContext4, null, 0, 6, null);
                    composeView4.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                    composeView4.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                    composeView4.setContent(new ComposableLambdaImpl(-478375564, true, new m61(this, i5)));
                    P().f51393e.addView(composeView4);
                    break;
                case 4:
                    T().zc(WebViewTrackingUiModel.PerfumeEngravingWebViewScreen.f65534a);
                    Context contextRequireContext5 = requireContext();
                    contextRequireContext5.getClass();
                    ComposeView composeView5 = new ComposeView(contextRequireContext5, null, 0, 6, null);
                    composeView5.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                    composeView5.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                    composeView5.setContent(new ComposableLambdaImpl(-478375564, true, new m61(this, i5)));
                    P().f51393e.addView(composeView5);
                    break;
                case 5:
                    T().zc(WebViewTrackingUiModel.DiamondEngravingWebViewScreen.f65511a);
                    Context contextRequireContext6 = requireContext();
                    contextRequireContext6.getClass();
                    ComposeView composeView6 = new ComposeView(contextRequireContext6, null, 0, 6, null);
                    composeView6.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                    composeView6.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                    composeView6.setContent(new ComposableLambdaImpl(-478375564, true, new m61(this, i5)));
                    P().f51393e.addView(composeView6);
                    break;
                case 6:
                    Context contextRequireContext7 = requireContext();
                    contextRequireContext7.getClass();
                    ComposeView composeView7 = new ComposeView(contextRequireContext7, null, 0, 6, null);
                    composeView7.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
                    composeView7.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
                    composeView7.setContent(new ComposableLambdaImpl(-478375564, true, new m61(this, i5)));
                    P().f51393e.addView(composeView7);
                    break;
                default:
                    v40.g();
                    return;
            }
        }
        if (V()) {
            Context contextRequireContext8 = requireContext();
            contextRequireContext8.getClass();
            ComposeView composeView8 = new ComposeView(contextRequireContext8, null, 0, 6, null);
            composeView8.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
            composeView8.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            composeView8.setContent(new ComposableLambdaImpl(453348528, true, new m61(this, i2)));
            P().f51393e.addView(composeView8);
        }
        if (((Boolean) lazy.getF71699b()).booleanValue()) {
            WebViewViewModel webViewViewModelT = T();
            boolean zBooleanValue2 = ((Boolean) this.b1.getF71699b()).booleanValue();
            ContactUsDelegate contactUsDelegate = webViewViewModelT.f65550e;
            if (zBooleanValue2) {
                contactUsDelegate.f8(ContactUsMode.DISTANT_CARE);
            } else {
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
            }
            Context contextRequireContext9 = requireContext();
            contextRequireContext9.getClass();
            ComposeView composeView9 = new ComposeView(contextRequireContext9, null, 0, 6, null);
            composeView9.setViewCompositionStrategy(disposeOnViewTreeLifecycleDestroyed);
            composeView9.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            composeView9.setContent(new ComposableLambdaImpl(-515452279, true, new m61(this, i4)));
            P().f51393e.addView(composeView9);
            T().C(ScreenType.CHECKOUT);
        }
        P().f51392c.setVisibility(W() ? 0 : 8);
        ViewExtKt.d(P().f51392c, new p11(this, 19));
        if (getContext() != null) {
            Context contextRequireContext10 = requireContext();
            contextRequireContext10.getClass();
            Object systemService = contextRequireContext10.getSystemService("connectivity");
            systemService.getClass();
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                P().f51394f.setVisibility(4);
                FragmentActivity activity3 = getActivity();
                FragmentTransaction fragmentTransactionD = (activity3 == null || (supportFragmentManager2 = activity3.getSupportFragmentManager()) == null) ? null : supportFragmentManager2.d();
                if (fragmentTransactionD != null) {
                    FragmentActivity activity4 = getActivity();
                    if (activity4 != null && (supportFragmentManager = activity4.getSupportFragmentManager()) != null && (fragmentG = supportFragmentManager.G("tag alert")) != null) {
                        DialogFragment dialogFragment = fragmentG instanceof DialogFragment ? (DialogFragment) fragmentG : null;
                        if (dialogFragment != null) {
                            dialogFragment.dismiss();
                        }
                        if (fragmentG instanceof LVAlertView) {
                            return;
                        }
                    }
                    fragmentTransactionD.d(null);
                    LVAlertView.G.getClass();
                    LVAlertView lVAlertView = new LVAlertView();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("IS_FISH_ACTIVITY_WHEN_CLOSE", true);
                    lVAlertView.setArguments(bundle);
                    lVAlertView.show(fragmentTransactionD, "tag alert");
                    return;
                }
                return;
            }
        }
        P().f51394f.setVisibility(0);
        WebViewViewModel webViewViewModelT2 = T();
        List listF = webViewViewModelT2.f65549c.f50267a.f();
        BufferedChannel bufferedChannel = webViewViewModelT2.u;
        List list = listF;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ConsentMapperKt.c((Consent) it.next()));
        }
        bufferedChannel.b(new WebViewViewEvents.SetConsents(arrayList));
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        BuildersKt.c(LifecycleOwnerKt.a(viewLifecycleOwner), null, null, new AnonymousClass3(null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass4(null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass5(null), 3);
    }
}
