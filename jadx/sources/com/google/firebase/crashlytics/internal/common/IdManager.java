package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import defpackage.md;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class IdManager implements InstallIdProvider {
    public static final Pattern g = Pattern.compile("[^\\p{Alnum}]");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f34561h = Pattern.quote("/");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InstallerPackageNameProvider f34562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f34563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34564c;
    public final FirebaseInstallationsApi d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DataCollectionArbiter f34565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InstallIdProvider.InstallIds f34566f;

    public IdManager(Context context, String str, FirebaseInstallationsApi firebaseInstallationsApi, DataCollectionArbiter dataCollectionArbiter) {
        if (context == null) {
            md.n("appContext must not be null");
            throw null;
        }
        if (str == null) {
            md.n("appIdentifier must not be null");
            throw null;
        }
        this.f34563b = context;
        this.f34564c = str;
        this.d = firebaseInstallationsApi;
        this.f34565e = dataCollectionArbiter;
        this.f34562a = new InstallerPackageNameProvider();
    }

    @Override // com.google.firebase.crashlytics.internal.common.InstallIdProvider
    public final synchronized InstallIdProvider.InstallIds a() {
        String str;
        InstallIdProvider.InstallIds installIds = this.f34566f;
        if (installIds != null && (((AutoValue_InstallIdProvider_InstallIds) installIds).f34503b != null || !this.f34565e.a())) {
            return this.f34566f;
        }
        Logger logger = Logger.f34483b;
        logger.a(2);
        SharedPreferences sharedPreferences = this.f34563b.getSharedPreferences("com.google.firebase.crashlytics", 0);
        String string = sharedPreferences.getString("firebase.installation.id", null);
        logger.a(2);
        if (this.f34565e.a()) {
            FirebaseInstallationId firebaseInstallationIdC = c(false);
            logger.a(2);
            if (firebaseInstallationIdC.f34559a == null) {
                if (string == null) {
                    str = "SYN_" + UUID.randomUUID().toString();
                } else {
                    str = string;
                }
                firebaseInstallationIdC = new FirebaseInstallationId(str, null);
            }
            if (Objects.equals(firebaseInstallationIdC.f34559a, string)) {
                this.f34566f = new AutoValue_InstallIdProvider_InstallIds(sharedPreferences.getString("crashlytics.installation.id", null), firebaseInstallationIdC.f34559a, firebaseInstallationIdC.f34560b);
            } else {
                this.f34566f = new AutoValue_InstallIdProvider_InstallIds(b(sharedPreferences, firebaseInstallationIdC.f34559a), firebaseInstallationIdC.f34559a, firebaseInstallationIdC.f34560b);
            }
        } else if (string == null || !string.startsWith("SYN_")) {
            this.f34566f = new AutoValue_InstallIdProvider_InstallIds(b(sharedPreferences, "SYN_" + UUID.randomUUID().toString()), null, null);
        } else {
            this.f34566f = new AutoValue_InstallIdProvider_InstallIds(sharedPreferences.getString("crashlytics.installation.id", null), null, null);
        }
        Objects.toString(this.f34566f);
        logger.a(2);
        return this.f34566f;
    }

    public final synchronized String b(SharedPreferences sharedPreferences, String str) {
        String lowerCase;
        lowerCase = g.matcher(UUID.randomUUID().toString()).replaceAll("").toLowerCase(Locale.US);
        Logger.f34483b.a(2);
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }

    public final FirebaseInstallationId c(boolean z) {
        String strA;
        CrashlyticsWorkers.c();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        FirebaseInstallationsApi firebaseInstallationsApi = this.d;
        String str = null;
        if (z) {
            try {
                strA = ((InstallationTokenResult) Tasks.b(firebaseInstallationsApi.a(), 10000L, timeUnit)).a();
            } catch (Exception unused) {
                Logger.f34483b.a(5);
                strA = null;
            }
        } else {
            strA = null;
        }
        try {
            str = (String) Tasks.b(firebaseInstallationsApi.getId(), 10000L, timeUnit);
        } catch (Exception unused2) {
            Logger.f34483b.a(5);
        }
        return new FirebaseInstallationId(str, strA);
    }

    public final String d() {
        String str;
        InstallerPackageNameProvider installerPackageNameProvider = this.f34562a;
        Context context = this.f34563b;
        synchronized (installerPackageNameProvider) {
            try {
                if (installerPackageNameProvider.f34567a == null) {
                    String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                    if (installerPackageName == null) {
                        installerPackageName = "";
                    }
                    installerPackageNameProvider.f34567a = installerPackageName;
                }
                str = "".equals(installerPackageNameProvider.f34567a) ? null : installerPackageNameProvider.f34567a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
