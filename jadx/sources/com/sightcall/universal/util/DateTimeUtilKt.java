package com.sightcall.universal.util;

import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"FORMAT", "", "getCurrentDateTime", "getDateTime", "timestamp", "", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class DateTimeUtilKt {
    public static final String FORMAT = "yyyy-MM-dd'T'HH:mm:ssZ";

    public static final String getCurrentDateTime() {
        String str = ZonedDateTime.now().format(DateTimeFormatter.ofPattern(FORMAT, Locale.US));
        str.getClass();
        return str;
    }

    public static final String getDateTime(long j2) {
        String str = ZonedDateTime.ofInstant(Instant.ofEpochMilli(j2), ZoneId.systemDefault()).format(DateTimeFormatter.ofPattern(FORMAT, Locale.US));
        str.getClass();
        return str;
    }
}
