package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.model.Session;
import javax.inject.Inject;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.ScreenshareProducer;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class MyScreenshareProducerWebView extends WebView implements ScreenshareProducer {
    public static final String BLANK = "about:blank";
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREENSHARE_PRODUCER);

    @Inject
    AdvancedAnnotationsWrapper advancedAnnotationsWrapper;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private ScreenshareProducerHandler handler;
    private boolean isStarted;
    private View progressBar;
    private ScreenshareModule screenshare;
    private Session session;
    private Sink.Screenshare sink;
    private String who;

    public MyScreenshareProducerWebView(Context context) {
        super(context);
        init();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.who = com.sightcall.universal.util.ViewUtils.whoami(this);
        SDKInjector.getSdkInjector().getCallComponent().inject(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restore$0() {
        erase();
        this.advancedAnnotationsWrapper.processDeleteAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUrl(String str) {
        if (this.session != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            Session session = this.session;
            if (zIsEmpty) {
                session.parameters.screenshareWebUrl = null;
            } else {
                session.parameters.screenshareWebUrl = str;
            }
        }
    }

    public void configure(Session session) {
        this.session = session;
    }

    public void erase() {
        this.advancedAnnotationsWrapper.processDeleteAll();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public boolean isStarted() {
        return this.isStarted;
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        erase();
        updateUrl(str);
        super.loadUrl(str);
    }

    public void onBackPressed() {
        if (canGoBack()) {
            try {
                WebBackForwardList webBackForwardListCopyBackForwardList = copyBackForwardList();
                int currentIndex = webBackForwardListCopyBackForwardList.getCurrentIndex() - 1;
                if (currentIndex < webBackForwardListCopyBackForwardList.getSize()) {
                    updateUrl(webBackForwardListCopyBackForwardList.getItemAtIndex(currentIndex).getUrl());
                    erase();
                }
            } catch (Exception unused) {
            }
            goBack();
        }
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onBind(Call call, Sink.Screenshare screenshare) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onBind() %s", this.who);
        }
        this.screenshare = call.screenshare();
        this.sink = screenshare;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.advancedAnnotationsWrapper.layoutOver(this, this);
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onStart() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStart() %s", this.who);
        }
        this.isStarted = true;
        this.advancedAnnotationsWrapper.setAnchor(this);
        this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.DrawDrop);
        this.advancedAnnotationsWrapper.layoutOver(this, this);
        this.advancedAnnotationsWrapper.resumeAnnotations(this);
        this.capabilitiesRepository.activateCoBrowsing();
        this.handler = new ScreenshareProducerHandler(this, this.sink);
        DataChannelAction.STARTED_SHARE.send();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onStop() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStop() %s", this.who);
        }
        this.isStarted = false;
        this.capabilitiesRepository.stopCoBrowsing();
        this.handler.teardown();
        this.handler = null;
        DataChannelAction.STOPPED_SHARE.send();
        postInvalidate();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onUnbind() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onUnbind() %s", this.who);
        }
        this.sink = null;
        this.screenshare = null;
        postInvalidate();
    }

    public void restore(Bundle bundle) {
        if (bundle != null) {
            restoreState(bundle);
        }
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setDomStorageEnabled(true);
        settings.setSupportMultipleWindows(false);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        setWebChromeClient(new WebChromeClient() { // from class: com.sightcall.universal.internal.view.MyScreenshareProducerWebView.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i2) {
                super.onProgressChanged(webView, i2);
                if (MyScreenshareProducerWebView.this.progressBar != null) {
                    int visibility = MyScreenshareProducerWebView.this.getVisibility();
                    MyScreenshareProducerWebView myScreenshareProducerWebView = MyScreenshareProducerWebView.this;
                    if (visibility == 0) {
                        myScreenshareProducerWebView.progressBar.setVisibility(i2 != 100 ? 0 : 8);
                    } else {
                        myScreenshareProducerWebView.progressBar.setVisibility(8);
                    }
                }
            }
        });
        setWebViewClient(new WebViewClient() { // from class: com.sightcall.universal.internal.view.MyScreenshareProducerWebView.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                MyScreenshareProducerWebView.this.erase();
                boolean zEqualsIgnoreCase = MyScreenshareProducerWebView.BLANK.equalsIgnoreCase(str);
                MyScreenshareProducerWebView myScreenshareProducerWebView = MyScreenshareProducerWebView.this;
                if (!zEqualsIgnoreCase) {
                    myScreenshareProducerWebView.updateUrl(str);
                    return false;
                }
                myScreenshareProducerWebView.updateUrl(null);
                MyScreenshareProducerWebView.this.clearHistory();
                return false;
            }
        });
        getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: ge0
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f69383b.lambda$restore$0();
            }
        });
        Session session = this.session;
        String str = session != null ? session.parameters.screenshareWebUrl : null;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSHookAop.loadUrl(this, str);
        loadUrl(str);
    }

    public void setProgressBar(View view) {
        this.progressBar = view;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        View view;
        super.setVisibility(i2);
        if (i2 != 8 || (view = this.progressBar) == null) {
            return;
        }
        view.setVisibility(8);
    }

    public Bitmap snapshot() {
        return SnapshotKt.getSnapshot(this);
    }

    public void unloadUrl() {
        erase();
        JSHookAop.loadUrl(this, BLANK);
        loadUrl(BLANK);
        clearHistory();
        updateUrl(null);
    }

    public MyScreenshareProducerWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public MyScreenshareProducerWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init();
    }
}
