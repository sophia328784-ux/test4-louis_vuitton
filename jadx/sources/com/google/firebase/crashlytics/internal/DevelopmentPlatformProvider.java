package com.google.firebase.crashlytics.internal;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class DevelopmentPlatformProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f34479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DevelopmentPlatform f34480b = null;

    public class DevelopmentPlatform {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f34481a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f34482b;

        public DevelopmentPlatform(DevelopmentPlatformProvider developmentPlatformProvider) {
            Context context = developmentPlatformProvider.f34479a;
            int iE = CommonUtils.e(context, "com.google.firebase.crashlytics.unity_version", "string");
            if (iE != 0) {
                this.f34481a = "Unity";
                this.f34482b = context.getResources().getString(iE);
                Logger.f34483b.a(2);
                return;
            }
            if (context.getAssets() != null) {
                try {
                    InputStream inputStreamOpen = context.getAssets().open("flutter_assets/NOTICES.Z");
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    this.f34481a = "Flutter";
                    this.f34482b = null;
                    Logger.f34483b.a(2);
                    return;
                } catch (IOException unused) {
                }
            }
            this.f34481a = null;
            this.f34482b = null;
        }
    }

    public DevelopmentPlatformProvider(Context context) {
        this.f34479a = context;
    }

    public final String a() {
        if (this.f34480b == null) {
            this.f34480b = new DevelopmentPlatform(this);
        }
        return this.f34480b.f34481a;
    }

    public final String b() {
        if (this.f34480b == null) {
            this.f34480b = new DevelopmentPlatform(this);
        }
        return this.f34480b.f34482b;
    }
}
