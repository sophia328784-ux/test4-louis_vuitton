package com.powerfront.insidewebsdkandroid;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.appsflyer.sdk_base.referrer.Payload;
import com.linkplay.medialib.ContentTree;
import com.linkplay.medialib.server.HttpServer;
import com.powerfront.insidewebsdkandroid.models.InsideCart;
import com.powerfront.insidewebsdkandroid.models.InsideCartItem;
import com.powerfront.insidewebsdkandroid.models.InsideUser;
import com.powerfront.insidewebsdkandroid.models.InsideView;
import com.powerfront.insidewebsdkandroid.models.InsideViewType;
import com.powerfront.insidewebsdkandroid.utils.ProgressDialogView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView;
import com.vuitton.core.infrastructure.chat.adapter.InsideChatAdapter;
import com.vuitton.core.infrastructure.chat.model.ChatEvent;
import com.vuitton.foundation.contracts.link.UrlVerifier;
import com.vuitton.foundation.logger.Logger;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class InsideClient {
    public static InsideClient A;
    public static Context y;
    public static Context z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WebView f43289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f43290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f43291c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InsideUser f43292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InsideCart f43293f;
    public InsideView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WebView f43294h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ValueCallback f43295i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f43296j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InsideChatAdapter f43297k;
    public ValueCallback l;
    public String m;
    public ViewGroup n;
    public String o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;
    public boolean u;
    public boolean v;
    public boolean w;
    public ProgressDialogView x;

    /* JADX INFO: renamed from: com.powerfront.insidewebsdkandroid.InsideClient$2, reason: invalid class name */
    class AnonymousClass2 implements ValueCallback<String> {
        @Override // android.webkit.ValueCallback
        public final /* bridge */ /* synthetic */ void onReceiveValue(String str) {
        }
    }

    public static void a(InsideClient insideClient, int i2) {
        String str;
        InsideChatAdapter insideChatAdapter;
        insideClient.getClass();
        if (i2 == -4) {
            str = "User authentication failed on server";
        } else if (i2 == -8) {
            str = "The server is taking too much time to communicate. Try again later.";
        } else if (i2 == -15) {
            str = "Too many requests during this load";
        } else if (i2 == -12) {
            str = "Check entered URL..";
        } else if (i2 == -6) {
            str = "Failed to connect to the server";
        } else if (i2 == -11) {
            str = "Failed to perform SSL handshake";
        } else if (i2 == -5) {
            str = "User authentication failed on proxy";
        } else if (i2 == -9) {
            str = "Too many redirects";
        } else if (i2 == -3) {
            str = "Unsupported authentication scheme (not basic or digest)";
        } else if (i2 == -10) {
            str = "unsupported scheme";
        } else if (i2 == -13) {
            str = "Generic file error";
        } else if (i2 == -14) {
            str = "File not found";
        } else {
            str = i2 == -7 ? "The server failed to communicate. Try again later." : null;
        }
        if (str == null || (insideChatAdapter = insideClient.f43297k) == null) {
            return;
        }
        insideChatAdapter.f65897e.getClass();
        insideChatAdapter.f65896c.a(ChatEvent.Companion.a(new ChatEvent.Error(str, i2)));
    }

    public static void b(InsideClient insideClient) {
        String[] strArr;
        JSONObject jSONObjectA = insideClient.g.a();
        try {
            InsideCart insideCart = insideClient.f43293f;
            if (insideCart != null && !insideCart.f43305f.isEmpty() && !insideClient.f43293f.f43303c) {
                jSONObjectA.put("orderId", "auto");
                jSONObjectA.put("orderTotal", insideClient.i().f43302b.toString());
            }
            String str = insideClient.f43296j;
            if (str != null && !str.isEmpty()) {
                if (jSONObjectA.has(DbParams.KEY_DATA)) {
                    JSONObject jSONObject = new JSONObject(jSONObjectA.get(DbParams.KEY_DATA).toString());
                    jSONObject.put("pn-gcm-token", insideClient.f43296j);
                    jSONObjectA.put(DbParams.KEY_DATA, jSONObject);
                } else {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("pn-gcm-token", insideClient.f43296j);
                    jSONObjectA.put(DbParams.KEY_DATA, jSONObject2);
                }
            }
            InsideView insideView = insideClient.g;
            if (insideView == null || (strArr = insideView.f43316e) == null || strArr.length <= 0) {
                jSONObjectA.put("tags", "SDK");
            } else {
                String strSubstring = "SDK,";
                int i2 = 0;
                while (true) {
                    String[] strArr2 = insideClient.g.f43316e;
                    if (i2 >= strArr2.length) {
                        break;
                    }
                    if (strArr2[i2].length() > 255) {
                        String str2 = insideClient.g.f43316e[i2];
                    } else {
                        strSubstring = strSubstring + insideClient.g.f43316e[i2] + ",";
                    }
                    i2++;
                }
                if (strSubstring.length() > 0) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
                jSONObjectA.put("tags", strSubstring);
            }
            insideClient.d("trackView", jSONObjectA);
        } catch (JSONException e2) {
            e2.getLocalizedMessage();
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.getLocalizedMessage();
            e3.printStackTrace();
        }
    }

    public static Object e(Class cls, Object obj) {
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        return null;
    }

    public final void c(final Activity activity, final int i2, final int i3) {
        activity.runOnUiThread(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.1
            @Override // java.lang.Runnable
            public void run() {
                if (InsideClient.this.f43294h != null) {
                    Context context = InsideClient.y;
                    if (context instanceof Activity) {
                        ((Activity) context).runOnUiThread(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                WebView webView = InsideClient.this.f43294h;
                                if (webView == null || webView.getParent() == null) {
                                    return;
                                }
                                InsideClient.this.f43294h.setVisibility(8);
                            }
                        });
                    }
                }
                InsideClient insideClient = InsideClient.this;
                Activity activity2 = activity;
                insideClient.getClass();
                InsideClient.y = activity2;
                WebView webView = InsideClient.this.f43289a;
                if (webView == null || webView.getParent() == null) {
                    InsideClient insideClient2 = InsideClient.this;
                    if (insideClient2.f43289a == null) {
                        insideClient2.j(activity, insideClient2.o, insideClient2.p, insideClient2.q, insideClient2.r, insideClient2.s);
                        return;
                    }
                } else {
                    ((ViewGroup) InsideClient.this.f43289a.getParent()).removeView(InsideClient.this.f43289a);
                }
                InsideClient.this.n = (ViewGroup) ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
                if (i2 == 0 && i3 == 0) {
                    InsideClient insideClient3 = InsideClient.this;
                    insideClient3.f43289a.setLayoutParams(insideClient3.n.getLayoutParams());
                    InsideClient.this.f43289a.setVisibility(0);
                    InsideClient insideClient4 = InsideClient.this;
                    insideClient4.n.addView(insideClient4.f43289a);
                } else {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    layoutParams.setMargins(0, i2, 0, i3);
                    InsideClient insideClient5 = InsideClient.this;
                    insideClient5.f43289a.setLayoutParams(insideClient5.n.getLayoutParams());
                    InsideClient.this.f43289a.setVisibility(0);
                    InsideClient insideClient6 = InsideClient.this;
                    insideClient6.n.addView(insideClient6.f43289a, layoutParams);
                }
                InsideClient.this.d("openChatPane", null);
                InsideClient insideClient7 = InsideClient.this;
                insideClient7.u = true;
                InsideUser insideUser = insideClient7.f43292e;
                if (insideUser != null) {
                    String str = insideUser.f43313c;
                    if (str != null) {
                        str.isEmpty();
                    }
                    InsideClient insideClient8 = InsideClient.this;
                    if (insideClient8.f43292e.f43312b != null) {
                        WebView webView2 = insideClient8.f43289a;
                        StringBuilder sb = new StringBuilder("prepopulatePrechat(\"");
                        String str2 = InsideClient.this.f43292e.f43313c;
                        if (str2 == null || str2.isEmpty()) {
                            str2 = "";
                        }
                        sb.append(str2);
                        sb.append("\", \"");
                        sb.append(InsideClient.this.f43292e.f43312b);
                        sb.append("\");");
                        webView2.evaluateJavascript(sb.toString(), null);
                    }
                }
            }
        });
    }

    @JavascriptInterface
    public void chatEnded(String str) {
    }

    @JavascriptInterface
    public void chatEndedBy(String str) {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
            insideChatAdapter.f65896c.a(ChatEvent.Companion.a(new ChatEvent.ChatEndedBy(str)));
        }
    }

    @JavascriptInterface
    public void currentChatID(String str) {
        SharedPreferences sharedPreferences = y.getSharedPreferences("my_prefs", 0);
        String string = sharedPreferences.getString("chat_id", "");
        this.w = false;
        if (string == null || string.equalsIgnoreCase(str)) {
            return;
        }
        this.w = true;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("chat_id", str);
        editorEdit.apply();
    }

    public final void d(String str, JSONObject jSONObject) {
        final String strL = jSONObject != null ? d21.l("javascript:", str, "(", jSONObject.toString(), ")") : fc.h("javascript:", str, "()");
        WebView webView = this.f43289a;
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.13
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView2;
                    try {
                        String str2 = strL;
                        if (str2 == null || (webView2 = InsideClient.this.f43289a) == null) {
                            return;
                        }
                        JSHookAop.loadUrl(webView2, str2);
                        webView2.loadUrl(str2);
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public final void f() {
        d("closeChatPane", null);
        this.u = false;
        Context context = y;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.7
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView = InsideClient.this.f43289a;
                    if (webView == null || webView.getParent() == null) {
                        return;
                    }
                    InsideClient.this.f43289a.setVisibility(8);
                }
            });
            if (this.f43294h != null) {
                Context context2 = y;
                if (context2 instanceof Activity) {
                    ((Activity) context2).runOnUiThread(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.8
                        @Override // java.lang.Runnable
                        public void run() {
                            WebView webView = InsideClient.this.f43294h;
                            if (webView == null || webView.getParent() == null) {
                                return;
                            }
                            InsideClient.this.f43294h.setVisibility(8);
                        }
                    });
                }
            }
        }
    }

    public final void g() {
        WebView webView = this.f43289a;
        if (webView != null) {
            webView.evaluateJavascript(this.m, new ValueCallback<String>() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.10
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(String str) {
                    InsideChatAdapter insideChatAdapter = InsideClient.this.f43297k;
                    if (insideChatAdapter != null) {
                        insideChatAdapter.b();
                    }
                }
            });
            WebView webView2 = this.f43289a;
            this.f43294h = webView2;
            JSHookAop.loadUrl(webView2, MyScreenshareProducerWebView.BLANK);
            webView2.loadUrl(MyScreenshareProducerWebView.BLANK);
            this.f43289a = null;
            this.f43291c = false;
        }
        ProgressDialogView progressDialogView = this.x;
        if (progressDialogView != null) {
            progressDialogView.hide();
        }
    }

    public final void h() {
        try {
            if (this.x != null) {
                Context context = y;
                if (context instanceof Activity) {
                    ((Activity) context).runOnUiThread(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.17
                        @Override // java.lang.Runnable
                        public void run() {
                            ProgressDialogView progressDialogView = InsideClient.this.x;
                            if (progressDialogView == null || !progressDialogView.isShowing()) {
                                return;
                            }
                            InsideClient.this.x.dismiss();
                        }
                    });
                }
            }
        } catch (IllegalArgumentException | Exception unused) {
        }
    }

    public final InsideCart i() {
        if (this.f43293f == null) {
            this.f43293f = new InsideCart(null, null);
        }
        return this.f43293f;
    }

    public final void j(Activity activity, String str, String str2, String str3, String str4, String str5) {
        this.o = str;
        this.p = str2;
        this.q = str3;
        this.r = str4;
        this.s = str5;
        y = activity;
        ProgressDialogView progressDialogView = new ProgressDialogView(y, com.vuitton.android.R.drawable.circle_progess);
        this.x = progressDialogView;
        progressDialogView.setCancelable(false);
        if (this.f43289a != null && this.f43291c) {
            if (((Activity) this.n.getContext()).equals(activity)) {
                return;
            }
            y = activity;
            if (this.f43289a.getParent() != null) {
                ((ViewGroup) this.f43289a.getParent()).removeView(this.f43289a);
            }
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
            this.n = viewGroup;
            this.f43289a.setLayoutParams(viewGroup.getLayoutParams());
            this.f43289a.setVisibility(8);
            this.n.addView(this.f43289a);
            return;
        }
        this.n = (ViewGroup) ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
        WebView webView = new WebView(y);
        webView.setId(com.vuitton.android.R.id.inside_web_view);
        webView.setTag("inside_web_view");
        webView.setLayoutParams(this.n.getLayoutParams());
        this.f43289a = webView;
        webView.setVisibility(8);
        this.f43290b = str;
        this.f43289a.addJavascriptInterface(this, str4);
        WebSettings settings = this.f43289a.getSettings();
        settings.setJavaScriptEnabled(true);
        this.f43289a.setVerticalScrollBarEnabled(false);
        this.f43289a.setHorizontalScrollBarEnabled(false);
        this.f43289a.getSettings().setAllowFileAccess(true);
        this.f43289a.getSettings().setAllowFileAccess(true);
        this.f43289a.getSettings().setAllowContentAccess(true);
        this.f43289a.getSettings().setDomStorageEnabled(true);
        this.f43289a.getSettings().setDatabaseEnabled(true);
        this.f43289a.getSettings().setCacheMode(2);
        this.f43289a.clearCache(true);
        SharedPreferences.Editor editorEdit = y.getSharedPreferences("my_prefs", 0).edit();
        editorEdit.putString("chat_id", ContentTree.ROOT_ID);
        editorEdit.apply();
        this.f43289a.requestFocus(130);
        this.n.addView(this.f43289a);
        StringBuilder sbU = n00.u(settings.getUserAgentString(), " ");
        sbU.append(Build.MANUFACTURER);
        sbU.append(" InsideMobileAndroid ");
        sbU.append(str4);
        settings.setUserAgentString(sbU.toString());
        this.f43289a.evaluateJavascript("navigator.userAgent", new AnonymousClass2());
        Context context = y;
        if (context != null) {
            l(context);
        } else {
            Context context2 = z;
            if (context2 != null) {
                l(context2);
            }
        }
        StringBuilder sbS = fc.s("<!DOCTYPE html><html><body><script>var loaded = false;var chatAvailable = false;var insideWebApp = true; var chatIdTimer;function getCurrentChatId(callback) {if(typeof insideFrontInterface !== 'undefined' && insideFrontInterface.currentChatId) {  clearTimeout(chatIdTimer); callback(insideFrontInterface.currentChatId);} else {   clearTimeout(chatIdTimer);  chatIdTimer = setTimeout(function() {    getCurrentChatId(callback) }, 500); }};function deferWait(callback, test) {     if (test()) {         callback();         return;     }     var _interval = 10;     var _spin = function() {         if (test()) {             callback();         } else {             _interval = _interval >= 1000 ? 1000 : _interval * 2;             setTimeout(_spin, _interval);         }     };     setTimeout(_spin, _interval);}function onLoad() {", str4, ".onLoad();     deferWait(function () {         var websiteId = insideFrontInterface.chat.userid.split(':')[1];         _insideGraph.loadJS(_insideCDN + 'custom/' + websiteId + '-customScript.js?v=' +_insideScriptVersion);         }, function () {             return typeof _insideGraph != 'undefined' && _insideGraph.loadJS && insideFrontInterface.chat && insideFrontInterface.chat.userid;         });}function onChatAvailable(available) {    if (available !== chatAvailable) {        chatAvailable = available;        if (available) {", str4, ".onChatAvailable();        } else {");
        cj.C(sbS, str4, ".onChatUnavailable();        }    }}function onChatVisible() {    if (!loaded) {        loaded = true;", str4, ".onChatVisible();setTimeout(function() {clearTimeout(chatIdTimer);}, 180000);getCurrentChatId(function(currentChatId) {");
        cj.C(sbS, str4, ".currentChatID(currentChatId);});}}function trackView(view) { if(view.url)  {      _insideGraph.current.url = view.url;   }   else   {      _insideGraph.current.url = window.location.href;    }    _insideGraph.current.trackView(view);    console.log(\"trackView called\", view);};function trackUser(id,name,data) {    console.log(\"trackUser called\");    _insideGraph.current.visitorId = id;    _insideGraph.current.visitorName = name;    _insideGraph.current.visitorData = data;    console.log(\"trackUser called\");};function addItem(item) {    _insideGraph.current.addItem(item);    console.log(\"item added\", item);};function trackOrder(order) {    _insideGraph.current.trackOrder(order);    console.log(\"order tracked\");};function onCloseChat() {", str4, ".onCloseChat();};function onMinimiseChat() {");
        cj.C(sbS, str4, ".onMinimiseChat();};function onConnected(data) {", str4, ".onConnected();};function onDisconnectedToChat() {");
        cj.C(sbS, str4, ".onDisconnectedToChat();    console.log(\"Chat disconnected\");};function disconnectMe() {", str4, ".currentChatID(insideFrontInterface.currentChatId);    var zxcv = insideFrontInterface.disconnectSignalr();    console.log(\"disconnected called\");};var chatWorkflowId = null; function openChatPane(eventId) {if(eventId > 0){chatWorkflowId = insideFrontInterface.chatSettings.chatPane.preChatWorkflow || null;insideFrontInterface.chatSettings.chatPane.preChatWorkflow = null; } setTimeout(function() {insideFrontInterface.openChatPane();}, 30); };  function onOpenChat() {    setTimeout(function() {if(chatWorkflowId != null){   insideFrontInterface.chatSettings.chatPane.preChatWorkflow = chatWorkflowId;    chatWorkflowId = null;}},1000);getCurrentChatId(function(currentChatId) {");
        cj.C(sbS, str4, ".currentChatID(insideFrontInterface.currentChatId);});}; function closeChatPane() {    console.log(\"CloseChatPane Called\");    var amd = insideFrontInterface.chat.closeChatPane(true);", str4, ".currentChatID(insideFrontInterface.currentChatId);  clearTimeout(chatIdTimer); };function prepopulatePrechat(name, email) {                try {                    var $ = _insideGraph.jQuery;                   if ($(\"#inside_holder #inside_prechatForm\").length > 0) {                setTimeout(function () {            $(\"#inside_holder #inside_prechatForm #inside_prechat_name\").val(name);                    $(\"#inside_holder #inside_prechatForm #inside_prechat_email\").val(email);        }, 100);    }     else    {        setTimeout(function(){prepopulatePrechat(name, email);}, 500);    }} catch (tempex) { }};function onChatEnded(data) {");
        cj.C(sbS, str4, ".chatEndedBy(data.endedBy);", str4, ".chatEnded(JSON.stringify(data));");
        cj.C(sbS, str4, ".currentChatID(insideFrontInterface.currentChatId);};function onChatNotificationReceived(data) {", str4, ".currentChatID(data.message.chatid);");
        cj.C(sbS, str4, ".unReadCount(data.unreadMessageCount);if( typeof data.message.fromname !== 'undefined' && data.message.fromname) {", str4, ".onChatNotificationReceived(data.message.text, data.message.fromname , data.message.img || null);}else{");
        cj.C(sbS, str4, ".onChatNotificationReceived(data.message.text, '' , data.message.img || null);}};function onAddToBasket(product) {", str4, ".onAddToBasket(JSON.stringify(product));};function viewproduct(product) {");
        cj.C(sbS, str4, ".viewproduct(JSON.stringify(product));};function onAddToBasketComplete(skuObj) {    window._insideAddToBasket.onAddToBasketSuccess(skuObj);}function onAddToBasketFailure(skuObj) {    window._insideAddToBasket.onAddToBasketError(skuObj);}var _inside = [\n    { action:\"bind\", name:\"chat_visible\", callback:onChatVisible },\n    { action:\"bind\", name:\"chatavailable\", callback:onChatAvailable },\n    { action:\"bind\", name:\"onload\", callback:onLoad },\n    { action:\"bind\", name:\"closechat\", callback:onCloseChat },\n     { action:\"bind\", name:\"openchat\", callback:onOpenChat },\n    { action:\"bind\", name:\"minimisechat\", callback:onMinimiseChat },\n    { action:\"bind\", name:\"onconnected\", callback:onConnected },\n    { action:\"bind\", name:\"disconnected\", callback:onDisconnectedToChat },\n    { action:\"bind\", name:\"chatnotification\", callback:onChatNotificationReceived },\n    { action:\"bind\", name:\"chatended\", callback:onChatEnded },\n    { action:\"bind\", name:\"addtobasket\", callback:onAddToBasket },\n    { action:\"bind\", name:\"viewproduct\", callback:viewproduct },\n    { action:\"getTracker\", account: \"", str2, "\" ,subsiteId:\"");
        String strL = tr.l(sbS, str5, "\"},\n];</script><script src=\"", str3, "/ig.js\"></script></body></html>");
        this.f43289a.setWebChromeClient(new WebChromeClient() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.3

            /* JADX INFO: renamed from: com.powerfront.insidewebsdkandroid.InsideClient$3$1, reason: invalid class name */
            class AnonymousClass1 implements DialogInterface.OnClickListener {
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                }
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView2, String str6, String str7, JsResult jsResult) {
                AlertDialog alertDialogCreate = new AlertDialog.Builder(InsideClient.y).create();
                alertDialogCreate.setTitle("Inside JS Alert");
                alertDialogCreate.setMessage(str7);
                alertDialogCreate.setButton(-3, Payload.RESPONSE_OK, new AnonymousClass1());
                alertDialogCreate.show();
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onShowFileChooser(WebView webView2, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                InsideClient insideClient = InsideClient.this;
                insideClient.getClass();
                int iCheckSelfPermission = ContextCompat.checkSelfPermission(InsideClient.y, "android.permission.CAMERA");
                InsideChatAdapter insideChatAdapter = insideClient.f43297k;
                if (iCheckSelfPermission == 0) {
                    insideChatAdapter.d(false);
                    insideClient.f43295i = valueCallback;
                    return insideClient.k();
                }
                insideChatAdapter.d(true);
                insideClient.f43295i = valueCallback;
                insideClient.l = null;
                return true;
            }
        });
        this.f43289a.setWebViewClient(new WebViewClient(activity) { // from class: com.powerfront.insidewebsdkandroid.InsideClient.4
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView2, String str6) {
                InsideClient insideClient = InsideClient.this;
                boolean z2 = insideClient.d;
                if (!z2) {
                    insideClient.f43291c = true;
                }
                if (!insideClient.f43291c || z2) {
                    insideClient.d = false;
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView webView2, String str6, Bitmap bitmap) {
                InsideClient.this.f43291c = false;
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
                InsideClient.a(InsideClient.this, webResourceError.getErrorCode());
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                InsideClient.a(InsideClient.this, webResourceResponse.getStatusCode());
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedSslError(WebView webView2, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView2, sslErrorHandler, sslError);
                InsideClient.a(InsideClient.this, sslError.getPrimaryError());
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView2, String str6) {
                InsideClient insideClient = InsideClient.this;
                if (!insideClient.f43291c) {
                    insideClient.d = true;
                }
                insideClient.f43291c = true;
                InsideChatAdapter insideChatAdapter = insideClient.f43297k;
                UrlVerifier urlVerifier = insideChatAdapter.f65894a;
                insideChatAdapter.f65897e.getClass();
                ChatEvent webAppLinkUrl = ChatEvent.UrlType.UnknownUrl.f65915a;
                if (str6 != null) {
                    if (urlVerifier.b(str6)) {
                        webAppLinkUrl = new ChatEvent.UrlType.DeepLinkUrl(str6);
                    } else if (urlVerifier.a(str6)) {
                        webAppLinkUrl = new ChatEvent.UrlType.WebAppLinkUrl(str6);
                    }
                }
                insideChatAdapter.f65896c.a(ChatEvent.Companion.a(webAppLinkUrl));
                return true;
            }
        });
        try {
            if (this.x != null) {
                Context context3 = y;
                if (context3 instanceof Activity) {
                    ((Activity) context3).runOnUiThread(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.5
                        @Override // java.lang.Runnable
                        public void run() {
                            InsideClient.this.h();
                            if (((Activity) InsideClient.y).isFinishing()) {
                                return;
                            }
                            InsideClient insideClient = InsideClient.this;
                            if (insideClient.v) {
                                insideClient.x.show();
                            }
                        }
                    });
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.6
                        @Override // java.lang.Runnable
                        public void run() {
                            InsideClient.this.h();
                        }
                    }, 60000L);
                }
            }
        } catch (Exception unused) {
            h();
        }
        WebView webView2 = this.f43289a;
        String str6 = this.f43290b;
        JSHookAop.loadDataWithBaseURL(webView2, str6, strL, HttpServer.MIME_HTML, "utf-8", null);
        webView2.loadDataWithBaseURL(str6, strL, HttpServer.MIME_HTML, "utf-8", null);
    }

    public final boolean k() {
        File fileCreateTempFile;
        Activity activity = (Activity) y;
        ValueCallback valueCallback = this.l;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
        this.l = this.f43295i;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(activity.getPackageManager()) != null) {
            try {
                fileCreateTempFile = File.createTempFile(fc.h("JPEG_", new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()), "_"), ".jpg", y.getExternalCacheDir());
                try {
                    String str = "file:" + fileCreateTempFile.getAbsolutePath();
                    this.t = str;
                    intent.putExtra("PhotoPath", str);
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
                fileCreateTempFile = null;
            }
            if (fileCreateTempFile != null) {
                this.t = "file:" + fileCreateTempFile.getAbsolutePath();
                intent.putExtra("output", FileProvider.getUriForFile(activity, activity.getPackageName() + ".provider", fileCreateTempFile));
            } else {
                intent = null;
            }
        }
        Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
        intent2.addCategory("android.intent.category.OPENABLE");
        intent2.setType("*/*");
        Intent intent3 = new Intent("android.media.action.VIDEO_CAPTURE");
        intent3.putExtra("output", activity.getExternalCacheDir() + "/videocapture" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + ".mp4");
        Intent[] intentArr = {intent, intent3};
        Intent intent4 = new Intent("android.intent.action.CHOOSER");
        intent4.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        intent4.putExtra("android.intent.extra.INTENT", intent2);
        intent4.putExtra("android.intent.extra.TITLE", "Choose an action");
        intent4.putExtra("android.intent.extra.INITIAL_INTENTS", intentArr);
        try {
            activity.startActivityForResult(intent4, 2);
            return true;
        } catch (ActivityNotFoundException unused3) {
            this.l = null;
            return false;
        }
    }

    public final void l(Context context) {
        String string = context.getSharedPreferences("my_prefs", 0).getString("device_token", "");
        if (string == null || string.isEmpty()) {
            string = "cJLzb7syinE:APA91bHNpW3Um6qQO6EowRBUMALgWZ0PWB9A6Xj7UnS4iZaZtFwNVBcrgU1kpmJosVp0V-tsfYsStAy84uoiqainnOdbPLue6vfIZakRN1ffssJjFipITMQ-QHG0xx1Vss709ibal2H0";
        }
        this.f43296j = string;
    }

    public final void m() {
        InsideCart insideCart = this.f43293f;
        if (insideCart == null || insideCart.f43305f.isEmpty()) {
            return;
        }
        InsideCart insideCart2 = this.f43293f;
        if (insideCart2.d) {
            for (InsideCartItem insideCartItem : insideCart2.f43305f.values()) {
                String str = insideCartItem.f43310f;
                HashMap map = new HashMap();
                map.put("orderId", "auto");
                map.put("sku", insideCartItem.f43306a);
                map.put("name", insideCartItem.f43307b);
                map.put("price", insideCartItem.f43308c.toString());
                map.put("qty", Integer.valueOf(insideCartItem.d));
                String str2 = insideCartItem.f43309e;
                if (str2 != null && !str2.isEmpty()) {
                    map.put("category", str2);
                }
                if (str != null && !str.isEmpty()) {
                    map.put("img", str);
                }
                d("addItem", new JSONObject(map));
            }
            if (this.f43293f != null) {
                i().getClass();
                d("trackOrder", this.f43293f.b());
                this.f43293f.d = false;
            }
        }
    }

    public final void n(String str, String str2, HashMap map) {
        if (str.isEmpty()) {
            this.f43292e = null;
            return;
        }
        this.f43292e = new InsideUser(str, str2, map);
        StringBuilder sbS = fc.s("javascript:trackUser(\"", str, "\",\"", str2, "\",");
        sbS.append(new JSONObject(map));
        sbS.append(")");
        final String string = sbS.toString();
        WebView webView = this.f43289a;
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.16
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView2;
                    try {
                        String str3 = string;
                        if (str3 == null || (webView2 = InsideClient.this.f43289a) == null) {
                            return;
                        }
                        JSHookAop.loadUrl(webView2, str3);
                        webView2.loadUrl(str3);
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public final void o(InsideViewType insideViewType, String str, String str2, String str3, BigDecimal bigDecimal, String str4, String str5, HashMap map) {
        if (insideViewType == null || str == null) {
            md.n("type or name can not be null");
        } else {
            this.g = new InsideView(insideViewType, str, str4, str2, str3, bigDecimal, str5, map, null);
            new Handler().postDelayed(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.14
                @Override // java.lang.Runnable
                public void run() {
                    InsideClient.b(InsideClient.this);
                }
            }, 1000L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0045  */
    @JavascriptInterface
    public void onAddToBasket(String str) {
        String str2;
        if (this.f43297k != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String strValueOf = "";
                if (!jSONObject.has("productId")) {
                    str2 = "";
                } else if (e(String.class, jSONObject.get("productId")) != null) {
                    str2 = (String) jSONObject.get("productId");
                } else {
                    Integer num = (Integer) e(Integer.class, jSONObject.get("productId"));
                    if (num != null) {
                        str2 = "P" + num;
                    } else {
                        str2 = "";
                    }
                }
                if (jSONObject.has("skuId")) {
                    if (e(String.class, jSONObject.get("skuId")) != null) {
                        strValueOf = String.valueOf(jSONObject.get("skuId"));
                    } else {
                        Integer num2 = (Integer) e(Integer.class, jSONObject.get("skuId"));
                        if (num2 != null) {
                            strValueOf = String.valueOf(num2);
                        }
                    }
                }
                InsideChatAdapter insideChatAdapter = this.f43297k;
                insideChatAdapter.f65897e.getClass();
                insideChatAdapter.f65896c.a(ChatEvent.Companion.a(new ChatEvent.AddToBasket(str2, strValueOf)));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    @JavascriptInterface
    public void onChatAvailable() {
        WebView webView = this.f43289a;
        if (webView != null) {
            webView.requestFocus(130);
        }
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
            insideChatAdapter.d.f();
            insideChatAdapter.f65895b.setValue(Boolean.TRUE);
        }
    }

    @JavascriptInterface
    public void onChatNotificationReceived(String str, String str2, String str3) {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            boolean z2 = this.w;
            Logger logger = insideChatAdapter.f65897e;
            StringBuilder sbS = d21.s("onChatNotificationReceived: message: ", str, ",\n                |  isProactiveChat: ", ",\n                |   fromName: ", z2);
            sbS.append(str2);
            sbS.append(",\n                |    image: ");
            sbS.append(str3);
            sbS.append(" ");
            StringsKt.c0(sbS.toString());
            logger.getClass();
            insideChatAdapter.f65896c.a(ChatEvent.Companion.a(new ChatEvent.ChatNotificationReceived(str, z2, str2, str3)));
        }
    }

    @JavascriptInterface
    public void onChatUnavailable() {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
            insideChatAdapter.f65895b.setValue(Boolean.FALSE);
        }
    }

    @JavascriptInterface
    public void onChatVisible() {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
        }
        if (this.u) {
            h();
        } else {
            new Handler().postDelayed(new Runnable() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.9
                @Override // java.lang.Runnable
                public void run() {
                    InsideClient.this.h();
                }
            }, 8000L);
        }
    }

    @JavascriptInterface
    public void onCloseChat() {
        h();
        if (this.f43297k != null) {
            WebView webView = this.f43289a;
            if (webView != null && webView.getVisibility() == 0) {
                this.f43297k.a();
                this.u = false;
            }
            WebView webView2 = this.f43294h;
            if (webView2 == null || webView2.getVisibility() != 0) {
                return;
            }
            this.f43297k.a();
            this.u = false;
        }
    }

    @JavascriptInterface
    public void onConnected() {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
        }
    }

    @JavascriptInterface
    public void onDisconnectedToChat() {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.b();
        }
    }

    @JavascriptInterface
    public void onLoad() {
        String[] strArr;
        if (this.g == null) {
            this.g = new InsideView(InsideViewType.Home, "Home", null, null, null, null, null, null, null);
        }
        JSONObject jSONObject = new JSONObject();
        Context context = y;
        if (context != null) {
            l(context);
        } else {
            Context context2 = z;
            if (context2 != null) {
                l(context2);
            }
        }
        try {
            jSONObject.put("type", "homepage");
            jSONObject.put("name", "Home");
            String str = this.f43296j;
            if (str != null && !str.isEmpty()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("pn-gcm-token", this.f43296j);
                jSONObject.put(DbParams.KEY_DATA, jSONObject2);
            }
            InsideView insideView = this.g;
            if (insideView == null || (strArr = insideView.f43316e) == null || strArr.length <= 0) {
                jSONObject.put("tags", "SDK");
            } else {
                String strSubstring = "SDK,";
                int i2 = 0;
                while (true) {
                    String[] strArr2 = this.g.f43316e;
                    if (i2 >= strArr2.length) {
                        break;
                    }
                    if (strArr2[i2].length() > 255) {
                        String str2 = this.g.f43316e[i2];
                    } else {
                        strSubstring = strSubstring + this.g.f43316e[i2] + ",";
                    }
                    i2++;
                }
                if (strSubstring.length() > 0) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
                jSONObject.put("tags", strSubstring);
            }
            d("trackView", jSONObject);
        } catch (JSONException e2) {
            e2.getLocalizedMessage();
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.getLocalizedMessage();
            e3.printStackTrace();
        }
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
            insideChatAdapter.f65896c.a(ChatEvent.Companion.a(ChatEvent.ChatIsLoading.f65902a));
        }
    }

    @JavascriptInterface
    public void onMinimiseChat() {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
            insideChatAdapter.d.f();
            insideChatAdapter.f65896c.a(ChatEvent.Companion.a(ChatEvent.ChatMinimising.f65904a));
        }
        f();
    }

    @JavascriptInterface
    public void onOpenChat() {
    }

    public final void p() {
        if (this.f43289a != null) {
            this.f43292e = new InsideUser("", "", null);
            this.f43289a.evaluateJavascript("javascript:trackUser(\"\",\"\",{})", new ValueCallback<String>() { // from class: com.powerfront.insidewebsdkandroid.InsideClient.15
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(String str) {
                    InsideClient.b(InsideClient.this);
                }
            });
        }
    }

    @JavascriptInterface
    public void unReadCount(int i2) {
        InsideChatAdapter insideChatAdapter = this.f43297k;
        if (insideChatAdapter != null) {
            insideChatAdapter.f65897e.getClass();
            insideChatAdapter.f65896c.a(ChatEvent.Companion.a(new ChatEvent.UnReadCount(i2)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004d  */
    @JavascriptInterface
    public void viewproduct(String str) {
        String strValueOf;
        if (this.f43297k != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String strValueOf2 = "";
                if (!jSONObject.has("productId") || !jSONObject.has("productId")) {
                    strValueOf = "";
                } else if (e(String.class, jSONObject.get("productId")) != null) {
                    strValueOf = String.valueOf(jSONObject.get("productId"));
                } else {
                    Integer num = (Integer) e(Integer.class, jSONObject.get("productId"));
                    if (num != null) {
                        strValueOf = "P" + num;
                    } else {
                        strValueOf = "";
                    }
                }
                if (jSONObject.has("skuId")) {
                    if (e(String.class, jSONObject.get("skuId")) != null) {
                        strValueOf2 = String.valueOf(jSONObject.get("skuId"));
                    } else {
                        Integer num2 = (Integer) e(Integer.class, jSONObject.get("skuId"));
                        if (num2 != null) {
                            strValueOf2 = String.valueOf(num2);
                        }
                    }
                }
                if (!strValueOf2.isEmpty() && !strValueOf2.equalsIgnoreCase(ContentTree.ROOT_ID)) {
                    this.f43297k.c(strValueOf, strValueOf2);
                    return;
                }
                this.f43297k.c(strValueOf, null);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
