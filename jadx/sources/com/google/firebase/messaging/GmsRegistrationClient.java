package com.google.firebase.messaging;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.internal.cloudmessaging.zzm;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;

/* JADX INFO: loaded from: classes2.dex */
class GmsRegistrationClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzm f35255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseApp f35256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FirebaseInstallationsApi f35257c;
    public final GmsRpc d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Metadata f35258e;

    public GmsRegistrationClient(Context context, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, GmsRpc gmsRpc, Metadata metadata) {
        this.f35255a = new zzm(context);
        this.f35256b = firebaseApp;
        this.f35257c = firebaseInstallationsApi;
        this.d = gmsRpc;
        this.f35258e = metadata;
    }

    public final boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        FirebaseApp firebaseApp = this.f35256b;
        firebaseApp.a();
        Context context = firebaseApp.f34330a;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (bundle = (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)).metaData) == null || !bundle.containsKey("firebase_messaging_installation_id_enabled")) {
                return false;
            }
            return applicationInfo.metaData.getBoolean("firebase_messaging_installation_id_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
