package defpackage;

import com.appsflyer.share.deeplink.DeepLink;
import com.appsflyer.share.deeplink.DeepLinkListener;
import com.appsflyer.share.deeplink.DeepLinkResult;
import com.google.android.gms.tasks.OnFailureListener;
import com.vuitton.android.data.repository.AppsFlyerRepositoryImpl;
import com.vuitton.foundation.logger.Logger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k8 implements DeepLinkListener, OnFailureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppsFlyerRepositoryImpl f71585b;

    @Override // com.appsflyer.share.deeplink.DeepLinkListener
    public void onDeepLinking(DeepLinkResult deepLinkResult) {
        AppsFlyerRepositoryImpl appsFlyerRepositoryImpl = this.f71585b;
        Logger logger = appsFlyerRepositoryImpl.f47303b;
        deepLinkResult.getClass();
        int i2 = AppsFlyerRepositoryImpl.WhenMappings.f47306a[deepLinkResult.getStatus().ordinal()];
        if (i2 == 1) {
            DeepLink deepLink = deepLinkResult.getDeepLink();
            deepLink.getDeepLinkValue();
            logger.getClass();
            String deepLinkValue = deepLink.getDeepLinkValue();
            if (deepLinkValue != null) {
                appsFlyerRepositoryImpl.f47305e.b(deepLinkValue);
                return;
            }
            return;
        }
        if (i2 == 2) {
            logger.getClass();
            return;
        }
        if (i2 != 3) {
            v40.g();
            return;
        }
        logger.c("AppsFlyer", "Deeplink error : " + deepLinkResult.getError(), null);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        a.y("Failed to retrieve Firebase Cloud Message token for uninstall tracking: ", exc.getMessage(), this.f71585b.f47303b, "AppsFlyer", null);
    }
}
