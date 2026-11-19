package com.vuitton.android.presentation.screen.appsflyer;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.vuitton.foundation.logger.LegacyLogger;
import dagger.hilt.android.qualifiers.ApplicationContext;
import javax.inject.Inject;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppsFlyerTrackerImpl implements AppsFlyerTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f52963a;

    @Inject
    public AppsFlyerTrackerImpl(@ApplicationContext Context context) {
        context.getClass();
        this.f52963a = context;
    }

    @Override // com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker
    public final void a(final String str, AppsFlyerEvent appsFlyerEvent) {
        str.getClass();
        appsFlyerEvent.getClass();
        AppsFlyerLib.getInstance().logEvent(this.f52963a, appsFlyerEvent.getF52938a(), appsFlyerEvent.getF52939b(), new AppsFlyerRequestListener() { // from class: com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTrackerImpl$logEvent$1
            @Override // com.appsflyer.share.attribution.AppsFlyerRequestListener
            public final void onError(int i2, String str2) {
                str2.getClass();
                LegacyLogger.f66205a.c(str, "AppsFlyer - Event not sent : " + i2 + " " + str2, null);
            }

            @Override // com.appsflyer.share.attribution.AppsFlyerRequestListener
            public final void onSuccess() {
            }
        });
    }
}
