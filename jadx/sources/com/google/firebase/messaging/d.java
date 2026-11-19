package com.google.firebase.messaging;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import defpackage.l8;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements RequestDeduplicator.GetTokenRequest, SuccessContinuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FirebaseMessaging f35321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f35322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Store.Token f35323c;

    public /* synthetic */ d(FirebaseMessaging firebaseMessaging, String str, Store.Token token) {
        this.f35321a = firebaseMessaging;
        this.f35322b = str;
        this.f35323c = token;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task a(Object obj) {
        String string;
        FirebaseMessaging firebaseMessaging = this.f35321a;
        String str = this.f35322b;
        Store.Token token = this.f35323c;
        String str2 = (String) obj;
        Store storeD = FirebaseMessaging.d(firebaseMessaging.f35244c);
        FirebaseApp firebaseApp = firebaseMessaging.f35242a;
        firebaseApp.a();
        String strE = "[DEFAULT]".equals(firebaseApp.f34331b) ? "" : firebaseApp.e();
        String strA = firebaseMessaging.f35249j.a();
        synchronized (storeD) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("token", str2);
                    jSONObject.put("appVersion", strA);
                    jSONObject.put("timestamp", jCurrentTimeMillis);
                    string = jSONObject.toString();
                } catch (JSONException e2) {
                    e2.toString();
                    string = null;
                }
                if (string != null) {
                    SharedPreferences.Editor editorEdit = storeD.f35284a.edit();
                    editorEdit.putString(strE + "|T|" + str + "|*", string);
                    editorEdit.commit();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (firebaseMessaging.f35245e.a() || token == null || !str2.equals(token.f35285a)) {
            FirebaseApp firebaseApp2 = firebaseMessaging.f35242a;
            firebaseApp2.a();
            if ("[DEFAULT]".equals(firebaseApp2.f34331b)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    firebaseApp2.a();
                }
                boolean zA = firebaseMessaging.f35245e.a();
                Intent intent = new Intent();
                intent.putExtra("token", str2);
                if (zA) {
                    intent.setAction("com.google.firebase.messaging.FCM_REGISTERED");
                } else {
                    intent.setAction("com.google.firebase.messaging.NEW_TOKEN");
                }
                new FcmBroadcastProcessor(firebaseMessaging.f35244c).b(intent);
            }
        }
        return Tasks.f(str2);
    }

    public Task b() {
        Task taskE;
        Task taskG;
        FirebaseMessaging firebaseMessaging = this.f35321a;
        GmsRegistrationClient gmsRegistrationClient = firebaseMessaging.f35245e;
        boolean zA = gmsRegistrationClient.a();
        int i2 = 0;
        if (!zA || gmsRegistrationClient.f35258e.c() < 261200000) {
            GmsRpc gmsRpc = gmsRegistrationClient.d;
            String strB = Metadata.b(gmsRpc.f35259a);
            Bundle bundle = new Bundle();
            try {
                gmsRpc.a(strB, bundle, zA);
                taskE = gmsRpc.f35261c.b(bundle);
            } catch (InterruptedException | ExecutionException e2) {
                taskE = Tasks.e(e2);
            }
            taskG = taskE.g(new l8(1), new g(gmsRpc, i2));
        } else {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Network-Io"));
            taskG = gmsRegistrationClient.f35257c.getId().h(executorServiceNewSingleThreadExecutor, new f(gmsRegistrationClient, executorServiceNewSingleThreadExecutor, i2));
        }
        return taskG.m(firebaseMessaging.f35248i, new d(firebaseMessaging, this.f35322b, this.f35323c));
    }
}
