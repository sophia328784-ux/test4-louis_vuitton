package com.google.android.gms.internal.location;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzen {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f30257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StringBuilder f30258b;

    static {
        Locale locale = Locale.ROOT;
        f30257a = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", locale);
        new SimpleDateFormat("MM-dd HH:mm:ss", locale);
        f30258b = new StringBuilder(33);
    }

    public static void a(long j2, StringBuilder sb) {
        if (j2 == 0) {
            sb.append("0s");
            return;
        }
        sb.ensureCapacity(sb.length() + 27);
        boolean z = false;
        if (j2 < 0) {
            sb.append("-");
            if (j2 != Long.MIN_VALUE) {
                j2 = -j2;
            } else {
                z = true;
                j2 = Long.MAX_VALUE;
            }
        }
        if (j2 >= 86400000) {
            sb.append(j2 / 86400000);
            sb.append(NBSSpanMetricUnit.Day);
            j2 %= 86400000;
        }
        if (z) {
            j2++;
        }
        if (j2 >= 3600000) {
            sb.append(j2 / 3600000);
            sb.append(NBSSpanMetricUnit.Hour);
            j2 %= 3600000;
        }
        if (j2 >= 60000) {
            sb.append(j2 / 60000);
            sb.append(NBSSpanMetricUnit.Minute);
            j2 %= 60000;
        }
        if (j2 >= 1000) {
            sb.append(j2 / 1000);
            sb.append(NBSSpanMetricUnit.Second);
            j2 %= 1000;
        }
        if (j2 > 0) {
            sb.append(j2);
            sb.append(NBSSpanMetricUnit.Millisecond);
        }
    }
}
