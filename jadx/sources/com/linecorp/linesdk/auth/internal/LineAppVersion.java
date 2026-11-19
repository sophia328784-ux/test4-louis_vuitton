package com.linecorp.linesdk.auth.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class LineAppVersion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f36149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f36150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f36151c;

    public LineAppVersion(int i2, int i3, int i4) {
        this.f36149a = i2;
        this.f36150b = i3;
        this.f36151c = i4;
    }

    public static LineAppVersion a(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo("jp.naver.line.android", 128).versionName;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(str, FileUtils.HIDDEN_PREFIX);
            return new LineAppVersion(Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()));
        } catch (PackageManager.NameNotFoundException | NullPointerException | NumberFormatException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineAppVersion lineAppVersion = (LineAppVersion) obj;
        return this.f36149a == lineAppVersion.f36149a && this.f36150b == lineAppVersion.f36150b && this.f36151c == lineAppVersion.f36151c;
    }

    public final int hashCode() {
        return (((this.f36149a * 31) + this.f36150b) * 31) + this.f36151c;
    }
}
