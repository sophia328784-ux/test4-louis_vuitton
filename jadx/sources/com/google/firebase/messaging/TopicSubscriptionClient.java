package com.google.firebase.messaging;

import android.util.Log;
import com.dynatrace.android.callback.Callback;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.az;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
class TopicSubscriptionClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FirebaseInstallationsApi f35293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseApp f35294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FirebaseMessaging f35295c;

    public TopicSubscriptionClient(FirebaseApp firebaseApp, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.f35293a = firebaseInstallationsApi;
        this.f35294b = firebaseApp;
        this.f35295c = firebaseMessaging;
    }

    public static Object a(Task task) throws IOException {
        try {
            return Tasks.b(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e2) {
            throw new IOException("SERVICE_NOT_AVAILABLE", e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e3);
        }
    }

    public final void b(String str, String str2, String str3, String str4) throws IOException {
        if (str2 == null || str3 == null) {
            az.o("FIS auth token or FIS ID is empty");
            return;
        }
        FirebaseApp firebaseApp = this.f35294b;
        firebaseApp.a();
        FirebaseOptions firebaseOptions = firebaseApp.f34332c;
        String str5 = firebaseOptions.f34350h;
        firebaseApp.a();
        String str6 = firebaseOptions.f34345a;
        if (str5 == null) {
            az.o("Project ID or API Key is missing");
            return;
        }
        URL url = new URL(d21.p(fc.s("https://fcmregistrations.googleapis.com/v1/projects/", str5, "/registrations/", str3, "/topicSubscriptions/"), str, ":", str4));
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            url.toString();
        }
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("x-goog-api-key", str6);
        httpURLConnection.setRequestProperty("x-goog-firebase-installations-auth", str2);
        httpURLConnection.setDoOutput(false);
        try {
            try {
                int iK = Callback.k(httpURLConnection);
                httpURLConnection.disconnect();
                if (iK >= 200 && iK < 300) {
                    Log.isLoggable("FirebaseMessaging", 3);
                    return;
                }
                if (iK == 404 || iK == 403) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Callback.l(httpURLConnection);
                    }
                    StringBuilder sbR = pq0.r("Topic ", str4, " failed: ");
                    sbR.append(Callback.l(httpURLConnection));
                    throw new IOException(sbR.toString());
                }
                if (iK >= 500) {
                    az.o("INTERNAL_SERVER_ERROR");
                    return;
                }
                throw new IOException("Topic " + str4 + " failed with status: " + iK);
            } catch (IOException e2) {
                throw new IOException("SERVICE_NOT_AVAILABLE", e2);
            }
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }
}
