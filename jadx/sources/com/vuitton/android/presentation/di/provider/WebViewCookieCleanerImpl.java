package com.vuitton.android.presentation.di.provider;

import android.webkit.CookieManager;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.provider.auth.CookieCleaner;
import defpackage.md;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/di/provider/WebViewCookieCleanerImpl;", "Lcom/vuitton/android/domain/provider/auth/CookieCleaner;", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatchersProvider", "Landroid/webkit/CookieManager;", "cookieManager", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/webkit/CookieManager;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebViewCookieCleanerImpl implements CookieCleaner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f51485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CookieManager f51486b;

    @Inject
    public WebViewCookieCleanerImpl(CoroutineDispatchers coroutineDispatchers, CookieManager cookieManager) {
        coroutineDispatchers.getClass();
        cookieManager.getClass();
        this.f51485a = coroutineDispatchers;
        this.f51486b = cookieManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.provider.auth.CookieCleaner
    public final Object a(ContinuationImpl continuationImpl) {
        WebViewCookieCleanerImpl$clearAllCookies$1 webViewCookieCleanerImpl$clearAllCookies$1;
        if (continuationImpl instanceof WebViewCookieCleanerImpl$clearAllCookies$1) {
            webViewCookieCleanerImpl$clearAllCookies$1 = (WebViewCookieCleanerImpl$clearAllCookies$1) continuationImpl;
            int i2 = webViewCookieCleanerImpl$clearAllCookies$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                webViewCookieCleanerImpl$clearAllCookies$1.d = i2 - Integer.MIN_VALUE;
            } else {
                webViewCookieCleanerImpl$clearAllCookies$1 = new WebViewCookieCleanerImpl$clearAllCookies$1(this, continuationImpl);
            }
        } else {
            webViewCookieCleanerImpl$clearAllCookies$1 = new WebViewCookieCleanerImpl$clearAllCookies$1(this, continuationImpl);
        }
        Object objF = webViewCookieCleanerImpl$clearAllCookies$1.f51487b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = webViewCookieCleanerImpl$clearAllCookies$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            MainCoroutineDispatcher f43529a = this.f51485a.getF43529a();
            WebViewCookieCleanerImpl$clearAllCookies$2 webViewCookieCleanerImpl$clearAllCookies$2 = new WebViewCookieCleanerImpl$clearAllCookies$2(this, null);
            webViewCookieCleanerImpl$clearAllCookies$1.d = 1;
            objF = BuildersKt.f(f43529a, webViewCookieCleanerImpl$clearAllCookies$2, webViewCookieCleanerImpl$clearAllCookies$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
