package com.linecorp.linesdk.internal.nwclient.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import defpackage.n00;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class UserAgentGenerator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PackageInfo f36243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f36245c;

    public UserAgentGenerator(Context context, String str) {
        try {
            this.f36243a = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
            this.f36244b = str;
        } catch (PackageManager.NameNotFoundException unused) {
            throw null;
        }
    }

    public final String a() {
        String str = this.f36245c;
        if (str != null) {
            return str;
        }
        PackageInfo packageInfo = this.f36243a;
        String str2 = packageInfo == null ? "UNK" : packageInfo.packageName;
        String str3 = packageInfo != null ? packageInfo.versionName : "UNK";
        Locale locale = Locale.getDefault();
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("/");
        sb.append(str3);
        sb.append(" ChannelSDK/");
        sb.append(this.f36244b);
        sb.append(" (Linux; U; Android ");
        sb.append(Build.VERSION.RELEASE);
        sb.append("; ");
        sb.append(locale.getLanguage());
        sb.append("-");
        sb.append(locale.getCountry());
        sb.append("; ");
        sb.append(Build.MODEL);
        sb.append(" Build/");
        String strR = n00.r(Build.ID, ")", sb);
        this.f36245c = strR;
        return strR;
    }
}
