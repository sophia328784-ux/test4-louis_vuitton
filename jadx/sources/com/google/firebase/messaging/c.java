package com.google.firebase.messaging;

import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.tasks.OnSuccessListener;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements OnSuccessListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f35319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FirebaseMessaging f35320c;

    public /* synthetic */ c(FirebaseMessaging firebaseMessaging, int i2) {
        this.f35319b = i2;
        this.f35320c = firebaseMessaging;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        boolean z;
        int i2 = this.f35319b;
        FirebaseMessaging firebaseMessaging = this.f35320c;
        switch (i2) {
            case 0:
                TopicsSubscriber topicsSubscriber = (TopicsSubscriber) obj;
                if (!firebaseMessaging.g.b() || topicsSubscriber.g.a() == null) {
                    return;
                }
                synchronized (topicsSubscriber) {
                    z = topicsSubscriber.f35302f;
                }
                if (z) {
                    return;
                }
                topicsSubscriber.c(0L);
                return;
            default:
                CloudMessage cloudMessage = (CloudMessage) obj;
                if (cloudMessage != null) {
                    MessagingAnalytics.b(cloudMessage.f28900b);
                    firebaseMessaging.d.f35261c.a().f(firebaseMessaging.f35247h, new c(firebaseMessaging, 1));
                    return;
                }
                return;
        }
    }
}
