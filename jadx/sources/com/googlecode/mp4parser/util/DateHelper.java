package com.googlecode.mp4parser.util;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class DateHelper {
    public static long a(Date date) {
        return (date.getTime() / 1000) + 2082844800;
    }

    public static Date b(long j2) {
        return new Date((j2 - 2082844800) * 1000);
    }
}
