package com.google.firebase.sessions;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.FirebaseApp;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/firebase/sessions/SessionEvents;", "", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionEvents {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SessionEvents f35473a = new SessionEvents();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DataEncoder f35474b;

    static {
        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
        jsonDataEncoderBuilder.b(SessionEvent.class, AutoSessionEventEncoder$SessionEventEncoder.f35397a);
        jsonDataEncoderBuilder.b(SessionInfo.class, AutoSessionEventEncoder$SessionInfoEncoder.f35400a);
        jsonDataEncoderBuilder.b(DataCollectionStatus.class, AutoSessionEventEncoder$DataCollectionStatusEncoder.f35390a);
        jsonDataEncoderBuilder.b(ApplicationInfo.class, AutoSessionEventEncoder$ApplicationInfoEncoder.f35385a);
        jsonDataEncoderBuilder.b(AndroidApplicationInfo.class, AutoSessionEventEncoder$AndroidApplicationInfoEncoder.f35380a);
        jsonDataEncoderBuilder.b(ProcessDetails.class, AutoSessionEventEncoder$ProcessDetailsEncoder.f35393a);
        jsonDataEncoderBuilder.d = true;
        f35474b = jsonDataEncoderBuilder.a();
    }

    public static ApplicationInfo a(FirebaseApp firebaseApp) throws PackageManager.NameNotFoundException {
        firebaseApp.a();
        Context context = firebaseApp.f34330a;
        context.getClass();
        String packageName = context.getPackageName();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String strValueOf = String.valueOf(packageInfo.getLongVersionCode());
        firebaseApp.a();
        String str = firebaseApp.f34332c.f34346b;
        str.getClass();
        String str2 = Build.MODEL;
        str2.getClass();
        String str3 = Build.VERSION.RELEASE;
        str3.getClass();
        LogEnvironment logEnvironment = LogEnvironment.LOG_ENVIRONMENT_PROD;
        packageName.getClass();
        String str4 = packageInfo.versionName;
        if (str4 == null) {
            str4 = strValueOf;
        }
        String str5 = Build.MANUFACTURER;
        str5.getClass();
        firebaseApp.a();
        ProcessDetails processDetailsB = ProcessDetailsProvider.b(context);
        firebaseApp.a();
        return new ApplicationInfo(str, str2, "3.0.7", str3, logEnvironment, new AndroidApplicationInfo(packageName, str4, strValueOf, str5, processDetailsB, ProcessDetailsProvider.a(context)));
    }
}
