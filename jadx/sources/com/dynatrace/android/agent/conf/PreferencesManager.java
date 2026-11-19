package com.dynatrace.android.agent.conf;

import android.content.SharedPreferences;
import com.dynatrace.android.agent.Global;

/* JADX INFO: loaded from: classes2.dex */
public class PreferencesManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f27379c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f27380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServerConfigurationManager f27381b;

    static {
        boolean z = Global.f27307a;
    }

    public PreferencesManager(SharedPreferences sharedPreferences, ServerConfigurationManager serverConfigurationManager) {
        this.f27380a = sharedPreferences;
        this.f27381b = serverConfigurationManager;
    }

    public final void a() {
        this.f27380a.edit().remove("DTXOptInCrashes").remove("DTXDataCollectionLevel").remove("DTXCrashReplayOptedIn").remove("DTXCScreenRecordOptedIn").apply();
    }
}
