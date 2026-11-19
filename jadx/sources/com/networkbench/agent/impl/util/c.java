package com.networkbench.agent.impl.util;

import android.content.Context;
import android.content.pm.PackageInfo;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38354a = "ContextProxy";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f38355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38356c = 0;
    private String d;

    public c(Context context) {
        this.f38355b = context;
    }

    public String a() {
        return this.d;
    }

    public int b() {
        int i2 = this.f38356c;
        if (i2 == 0) {
            i2 = 0;
            try {
                PackageInfo packageInfo = this.f38355b.getPackageManager().getPackageInfo(this.f38355b.getPackageName(), 0);
                int i3 = packageInfo.versionCode;
                this.f38356c = i3;
                this.d = packageInfo.versionName;
                return i3;
            } catch (Throwable th) {
                Logger.error(f38354a, "error get version code", th);
            }
        }
        return i2;
    }

    public boolean c() {
        return ak.c(this.f38355b);
    }

    public boolean d() {
        return ak.b(this.f38355b);
    }

    public String e() {
        String absolutePath = this.f38355b.getFilesDir().getAbsolutePath();
        Logger.debug(f38354a, "getFilesDirPath path:" + absolutePath);
        return absolutePath;
    }

    public String f() {
        String absolutePath = this.f38355b.getExternalFilesDir(null).getAbsolutePath();
        Logger.debug(f38354a, "getExternalFilesDirPath path:" + absolutePath);
        return absolutePath;
    }
}
