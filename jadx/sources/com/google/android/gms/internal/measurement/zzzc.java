package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zzzc implements zzyk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashSet f31113c = new HashSet(Arrays.asList(Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f31114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31115b = false;

    public zzzc(String str, String str2, StringBuilder sb) {
        this.f31114a = sb;
    }

    public static int b(int i2, String str) {
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < ' ' || cCharAt == '\"' || cCharAt == '\\') {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzyk
    public final void a(Object obj, String str) {
        boolean z = this.f31115b;
        StringBuilder sb = this.f31114a;
        if (z) {
            sb.append(' ');
        } else {
            if (sb.length() > 0) {
                sb.append((sb.length() > 1000 || sb.indexOf("\n") != -1) ? '\n' : ' ');
            }
            sb.append("[CONTEXT ");
            this.f31115b = true;
        }
        sb.append(str);
        sb.append('=');
        if (obj == null) {
            sb.append(true);
            return;
        }
        if (f31113c.contains(obj.getClass())) {
            sb.append(obj);
            return;
        }
        sb.append('\"');
        String string = obj.toString();
        int i2 = 0;
        while (true) {
            int iB = b(i2, string);
            if (iB == -1) {
                sb.append((CharSequence) string, i2, string.length());
                sb.append('\"');
                return;
            }
            sb.append((CharSequence) string, i2, iB);
            i2 = iB + 1;
            char cCharAt = string.charAt(iB);
            if (cCharAt == '\t') {
                cCharAt = 't';
            } else if (cCharAt == '\n') {
                cCharAt = 'n';
            } else if (cCharAt == '\r') {
                cCharAt = 'r';
            } else if (cCharAt != '\"' && cCharAt != '\\') {
                sb.append((char) 65533);
            }
            sb.append("\\");
            sb.append(cCharAt);
        }
    }
}
