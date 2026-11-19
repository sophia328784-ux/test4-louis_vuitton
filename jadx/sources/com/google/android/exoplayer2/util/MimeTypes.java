package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class MimeTypes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList f28445a = new ArrayList();

    public static final class CustomMimeType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f28446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f28447b;

        public CustomMimeType(String str, String str2, int i2) {
            this.f28446a = str;
            this.f28447b = i2;
        }
    }

    static {
        Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");
    }

    public static String a(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if ("audio".equals(a(str))) {
            return 1;
        }
        if ("video".equals(a(str))) {
            return 2;
        }
        if ("text".equals(a(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("image".equals(a(str))) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = f28445a;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            CustomMimeType customMimeType = (CustomMimeType) arrayList.get(i2);
            if (str.equals(customMimeType.f28446a)) {
                return customMimeType.f28447b;
            }
        }
        return -1;
    }
}
