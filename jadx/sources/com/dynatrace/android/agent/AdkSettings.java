package com.dynatrace.android.agent;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.PreferencesManager;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.conf.ServerConfigurationManager;
import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class AdkSettings {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f27246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f27247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f27248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AdkSettings f27249k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f27250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicBoolean f27251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f27252c;
    public PreferencesManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f27253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Configuration f27254f;
    public volatile ServerConfiguration g;

    static {
        boolean z = Global.f27307a;
        f27246h = "";
        f27247i = "";
        f27248j = "";
        AdkSettings adkSettings = new AdkSettings();
        adkSettings.f27250a = new AtomicBoolean(false);
        adkSettings.f27251b = new AtomicBoolean(true);
        adkSettings.f27252c = 1;
        adkSettings.d = null;
        ServerConfiguration.Builder builder = new ServerConfiguration.Builder();
        builder.l = 1;
        ServerConfiguration serverConfiguration = new ServerConfiguration(builder);
        if (Global.f27307a) {
            Utility.n("switching settings: " + serverConfiguration);
        }
        adkSettings.g = serverConfiguration;
        f27249k = adkSettings;
    }

    public final void a(boolean z) {
        this.f27251b.set(z);
        this.d.f27380a.edit().putBoolean("DTXNewVisitorSent", z).apply();
    }

    public final void b(Configuration configuration, Application application) {
        this.f27254f = configuration;
        configuration.getClass();
        if (application == null || this.f27253e == application.getApplicationContext()) {
            return;
        }
        this.f27253e = application;
        f27247i = Utility.k(250, application.getApplicationInfo().loadLabel(this.f27253e.getPackageManager()).toString());
        f27248j = Utility.k(250, this.f27253e.getPackageName());
        Context context = this.f27253e;
        ServerConfigurationManager serverConfigurationManager = new ServerConfigurationManager(configuration.f27340b);
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.dynatrace.android.dtxPref", 0);
        this.d = new PreferencesManager(sharedPreferences, serverConfigurationManager);
        AtomicBoolean atomicBoolean = this.f27251b;
        boolean z = true;
        try {
            z = sharedPreferences.getBoolean("DTXNewVisitorSent", true);
        } catch (ClassCastException unused) {
            sharedPreferences.edit().remove("DTXNewVisitorSent").apply();
        }
        atomicBoolean.set(z);
    }
}
