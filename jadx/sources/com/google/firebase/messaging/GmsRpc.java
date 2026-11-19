package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
class GmsRpc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FirebaseApp f35259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Metadata f35260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rpc f35261c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f35262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FirebaseInstallationsApi f35263f;

    public GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Provider provider, Provider provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        firebaseApp.a();
        Rpc rpc = new Rpc(firebaseApp.f34330a);
        this.f35259a = firebaseApp;
        this.f35260b = metadata;
        this.f35261c = rpc;
        this.d = provider;
        this.f35262e = provider2;
        this.f35263f = firebaseInstallationsApi;
    }

    public final void a(String str, Bundle bundle, boolean z) {
        String str2;
        String strEncodeToString;
        HeartBeatInfo.HeartBeat heartBeatB;
        bundle.putString("scope", Browse.CAPS_WILDCARD);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        FirebaseApp firebaseApp = this.f35259a;
        firebaseApp.a();
        bundle.putString("gmp_app_id", firebaseApp.f34332c.f34346b);
        bundle.putString("gmsv", Integer.toString(this.f35260b.c()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f35260b.a());
        Metadata metadata = this.f35260b;
        synchronized (metadata) {
            try {
                if (metadata.f35268c == null) {
                    metadata.e();
                }
                str2 = metadata.f35268c;
            } catch (Throwable th) {
                throw th;
            }
        }
        bundle.putString("app_ver_name", str2);
        FirebaseApp firebaseApp2 = this.f35259a;
        firebaseApp2.a();
        try {
            strEncodeToString = Base64.encodeToString(MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(firebaseApp2.f34331b.getBytes()), 11);
        } catch (NoSuchAlgorithmException unused) {
            strEncodeToString = "[HASH-ERROR]";
        }
        bundle.putString("firebase-app-name-hash", strEncodeToString);
        if (z) {
            FirebaseApp firebaseApp3 = this.f35259a;
            firebaseApp3.a();
            bundle.putString("Goog-Api-Key", firebaseApp3.f34332c.f34345a);
        }
        try {
            String strA = ((InstallationTokenResult) Tasks.a(this.f35263f.a())).a();
            if (!TextUtils.isEmpty(strA)) {
                bundle.putString("Goog-Firebase-Installations-Auth", strA);
            }
        } catch (InterruptedException | ExecutionException unused2) {
        }
        bundle.putString("appid", (String) Tasks.a(this.f35263f.getId()));
        bundle.putString("cliv", "fcm-25.1.1");
        HeartBeatInfo heartBeatInfo = (HeartBeatInfo) this.f35262e.get();
        UserAgentPublisher userAgentPublisher = (UserAgentPublisher) this.d.get();
        if (heartBeatInfo == null || userAgentPublisher == null || (heartBeatB = heartBeatInfo.b()) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatB.a()));
        bundle.putString("Firebase-Client", userAgentPublisher.a());
    }
}
