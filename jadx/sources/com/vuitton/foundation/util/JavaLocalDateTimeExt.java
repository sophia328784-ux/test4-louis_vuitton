package com.vuitton.foundation.util;

import com.networkbench.nbslens.nbsnativecrashlib.n;
import com.sightcall.universal.util.DateTimeUtilKt;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/util/JavaLocalDateTimeExt;", "", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class JavaLocalDateTimeExt {
    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    public static LocalDateTime a(boolean z, String str, boolean z2, boolean z3, int i2) {
        DateTimeFormatter dateTimeFormatterOfPattern;
        if (z3 || z2) {
            if (z3) {
                if (!z) {
                    dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mmZ");
                } else if (i2 == 0) {
                    dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern(DateTimeUtilKt.FORMAT);
                } else if (i2 == 3) {
                    dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern(n.g);
                } else if (i2 == 6) {
                    dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ");
                } else if (i2 != 9) {
                    dateTimeFormatterOfPattern = null;
                } else {
                    dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSSZ");
                }
            } else if (!z) {
                dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm'Z'");
            } else if (i2 == 0) {
                dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss'Z'");
            } else if (i2 == 3) {
                dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            } else if (i2 == 6) {
                dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSS'Z'");
            } else if (i2 != 9) {
                dateTimeFormatterOfPattern = null;
            } else {
                dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS'Z'");
            }
        } else if (!z) {
            dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        } else if (i2 == 0) {
            dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");
        } else if (i2 == 3) {
            dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS");
        } else if (i2 == 6) {
            dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSS");
        } else if (i2 != 9) {
            dateTimeFormatterOfPattern = null;
        } else {
            dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS");
        }
        if (dateTimeFormatterOfPattern != null) {
            return LocalDateTime.parse(str, dateTimeFormatterOfPattern);
        }
        return null;
    }
}
