package com.google.android.gms.common.logging;

import android.util.Log;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f29284c;

    public Logger(String str, String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str2);
            }
            sb.append("] ");
            string = sb.toString();
        }
        this.f29283b = string;
        this.f29282a = str;
        new GmsLogger(str);
        int i2 = 2;
        while (i2 <= 7 && !Log.isLoggable(this.f29282a, i2)) {
            i2++;
        }
        this.f29284c = i2;
    }

    public final void a(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        this.f29283b.concat(str);
    }
}
