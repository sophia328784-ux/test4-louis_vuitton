package com.vuitton.android.presentation.push;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/push/AppsFlyerFcmService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppsFlyerFcmService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void onMessageReceived(RemoteMessage remoteMessage) {
        remoteMessage.getClass();
        remoteMessage.W1().containsKey("af-uinstall-tracking");
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void onNewToken(String str) {
        str.getClass();
        Context applicationContext = getApplicationContext();
        if (applicationContext != null) {
            this = applicationContext;
        }
        AppsFlyerLib.getInstance().updateServerUninstallToken(this, str);
    }
}
