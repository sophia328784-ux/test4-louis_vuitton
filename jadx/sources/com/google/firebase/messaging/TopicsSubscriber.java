package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class TopicsSubscriber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f35298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Metadata f35299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TopicSubscriptionClient f35300c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f35301e;
    public final TopicsStore g;
    public final ArrayMap d = new ArrayMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f35302f = false;

    public TopicsSubscriber(Metadata metadata, TopicsStore topicsStore, TopicSubscriptionClient topicSubscriptionClient, Context context, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.f35299b = metadata;
        this.g = topicsStore;
        this.f35300c = topicSubscriptionClient;
        this.f35298a = context;
        this.f35301e = scheduledThreadPoolExecutor;
    }

    public final synchronized void a(boolean z) {
        this.f35302f = z;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0091 A[Catch: IOException -> 0x005c, TRY_LEAVE, TryCatch #4 {IOException -> 0x005c, blocks: (B:12:0x0019, B:25:0x0091, B:17:0x002a, B:19:0x0032, B:22:0x005f, B:24:0x0067), top: B:80:0x0019 }] */
    public final boolean b() throws IOException {
        TopicOperation topicOperationA;
        while (true) {
            synchronized (this) {
                try {
                    topicOperationA = this.g.a();
                    if (topicOperationA == null) {
                        Log.isLoggable("FirebaseMessaging", 3);
                        return true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            TopicSubscriptionClient topicSubscriptionClient = this.f35300c;
            try {
                String str = topicOperationA.f35291b;
                String str2 = topicOperationA.f35290a;
                int iHashCode = str.hashCode();
                if (iHashCode != 83) {
                    if (iHashCode == 85 && str.equals("U")) {
                        FirebaseInstallationsApi firebaseInstallationsApi = topicSubscriptionClient.f35293a;
                        String strA = ((InstallationTokenResult) TopicSubscriptionClient.a(firebaseInstallationsApi.a())).a();
                        topicSubscriptionClient.f35295c.a();
                        topicSubscriptionClient.b(str2, strA, (String) TopicSubscriptionClient.a(firebaseInstallationsApi.getId()), "unsubscribe");
                        Log.isLoggable("FirebaseMessaging", 3);
                    } else {
                        Log.isLoggable("FirebaseMessaging", 3);
                    }
                } else if (str.equals("S")) {
                    FirebaseInstallationsApi firebaseInstallationsApi2 = topicSubscriptionClient.f35293a;
                    String strA2 = ((InstallationTokenResult) TopicSubscriptionClient.a(firebaseInstallationsApi2.a())).a();
                    topicSubscriptionClient.f35295c.a();
                    topicSubscriptionClient.b(str2, strA2, (String) TopicSubscriptionClient.a(firebaseInstallationsApi2.getId()), "subscribe");
                    Log.isLoggable("FirebaseMessaging", 3);
                } else {
                    Log.isLoggable("FirebaseMessaging", 3);
                }
                TopicsStore topicsStore = this.g;
                synchronized (topicsStore) {
                    SharedPreferencesQueue sharedPreferencesQueue = topicsStore.f35297a;
                    String str3 = topicOperationA.f35292c;
                    synchronized (sharedPreferencesQueue.d) {
                        if (sharedPreferencesQueue.d.remove(str3)) {
                            sharedPreferencesQueue.f35283e.execute(new j(sharedPreferencesQueue, 0));
                        }
                    }
                }
                synchronized (this.d) {
                    try {
                        String str4 = topicOperationA.f35292c;
                        if (this.d.containsKey(str4)) {
                            ArrayDeque arrayDeque = (ArrayDeque) this.d.get(str4);
                            TaskCompletionSource taskCompletionSource = (TaskCompletionSource) arrayDeque.poll();
                            if (taskCompletionSource != null) {
                                taskCompletionSource.b(null);
                            }
                            if (arrayDeque.isEmpty()) {
                                this.d.remove(str4);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (IOException e2) {
                if ("SERVICE_NOT_AVAILABLE".equals(e2.getMessage()) || "INTERNAL_SERVER_ERROR".equals(e2.getMessage())) {
                    e2.getMessage();
                } else if (e2.getMessage() != null) {
                    throw e2;
                }
                return false;
            }
        }
    }

    public final void c(long j2) {
        this.f35301e.schedule(new TopicsSyncTask(this, this.f35298a, this.f35299b, Math.min(Math.max(30L, 2 * j2), 28800L)), j2, TimeUnit.SECONDS);
        a(true);
    }
}
