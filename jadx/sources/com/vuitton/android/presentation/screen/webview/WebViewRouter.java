package com.vuitton.android.presentation.screen.webview;

import android.app.Activity;
import com.vuitton.android.domain.usecase.config.GetUrlCatchingListUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.link.builder.DeepLinkBuilder;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.config.UrlCatchingConfig;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;", "getUrlCatchingListUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;", "deepLinkBuilder", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebViewRouter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f65506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetUrlCatchingListUseCase f65507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f65508c;
    public final DeepLinkBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f65509e;

    @Inject
    public WebViewRouter(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, GetUrlCatchingListUseCase getUrlCatchingListUseCase, Logger logger, DeepLinkBuilder deepLinkBuilder) {
        requireCachedAppConfigUseCase.getClass();
        getUrlCatchingListUseCase.getClass();
        logger.getClass();
        deepLinkBuilder.getClass();
        this.f65506a = requireCachedAppConfigUseCase;
        this.f65507b = getUrlCatchingListUseCase;
        this.f65508c = logger;
        this.d = deepLinkBuilder;
        this.f65509e = CollectionsKt.P("www.weibo.com", "wa.me", "bcrw.apple.com", "api.whatsapp.com", "line.me", "www.facebook.com", "www.messenger.com", "m.me");
    }

    public static void b(WebViewRouter webViewRouter, Activity activity, String str, boolean z, int i2) {
        boolean z2 = (i2 & 4) != 0 ? false : z;
        webViewRouter.getClass();
        activity.getClass();
        String str2 = StringExtKt.a(str) ? str : null;
        if (str2 != null) {
            activity.startActivity(WebViewActivity.Companion.a(WebViewActivity.v, activity, str2, z2, false, "", null, null, false, false, null, 1856));
        } else {
            defpackage.a.y("Invalid URL : ", str, webViewRouter.f65508c, "WebViewRouter", null);
        }
    }

    public final UrlCatchingConfig a(String str) {
        Object next;
        Iterator it = this.f65507b.f49684a.a().X.iterator();
        while (it.hasNext()) {
            next = it.next();
            String str2 = ((UrlCatchingConfig) next).f67280a;
            if (str2 != null && StringsKt.k(str, str2, false)) {
                return (UrlCatchingConfig) next;
            }
        }
        next = null;
        return (UrlCatchingConfig) next;
    }
}
