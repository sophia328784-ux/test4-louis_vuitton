package com.dynatrace.agent.lifecycle.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;", "", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppStartupLogger {
    public static String a(long j2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss:SSS", Locale.getDefault());
        Date date = new Date();
        date.setTime(j2);
        String str = simpleDateFormat.format(date);
        str.getClass();
        return str;
    }
}
