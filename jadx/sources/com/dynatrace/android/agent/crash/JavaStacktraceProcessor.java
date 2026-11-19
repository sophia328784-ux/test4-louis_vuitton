package com.dynatrace.android.agent.crash;

import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class JavaStacktraceProcessor implements StacktraceProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f27446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27447b;

    public JavaStacktraceProcessor(Throwable th, int i2) {
        this.f27446a = th;
        this.f27447b = i2;
    }

    @Override // com.dynatrace.android.agent.crash.StacktraceProcessor
    public final StacktraceData a() {
        int i2;
        Throwable cause = this.f27446a;
        String strK = Utility.k(250, cause.getClass().getName());
        int i3 = 1000;
        String strK2 = Utility.k(1000, cause.toString());
        StringBuilder sb = new StringBuilder();
        int length = 0;
        int length2 = 0;
        int i4 = 0;
        while (cause != null && length < (i2 = this.f27447b) && length2 <= 128000) {
            if (length > 0) {
                sb.append("\nCaused by: ");
                length2 += 12;
            }
            String string = cause.toString();
            boolean z = length > 0;
            if (string == null) {
                string = "";
            } else {
                int iMin = Math.min(Math.max(0, (128000 - i4) - (z ? 12 : 0)), i3);
                if (string.length() > iMin) {
                    string = string.substring(0, iMin);
                }
            }
            String[] strArrSplit = string.split("\n");
            if (strArrSplit.length > i2 - length) {
                int i5 = 0;
                while (length < i2) {
                    if (i5 > 0) {
                        sb.append("\n");
                    }
                    sb.append(strArrSplit[i5]);
                    length2 = sb.length();
                    length++;
                    i5++;
                }
                break;
            }
            sb.append(string);
            int length3 = sb.length();
            length += strArrSplit.length;
            length2 = sb.length();
            StackTraceElement[] stackTrace = cause.getStackTrace();
            if (stackTrace != null) {
                int iMin2 = Math.min(stackTrace.length, i2 - length);
                int i6 = length3;
                int length4 = length2;
                int i7 = length;
                int i8 = 0;
                while (i8 < iMin2 && length4 < 128000) {
                    sb.append("\n");
                    sb.append("\tat ");
                    sb.append(stackTrace[i8]);
                    i7++;
                    i8++;
                    i6 = length4;
                    length4 = sb.length();
                }
                i4 = i6;
                length = i7;
                length2 = length4;
            } else {
                i4 = length3;
            }
            cause = cause.getCause();
            i3 = 1000;
        }
        return new StacktraceData(strK, strK2, length2 > 128000 ? sb.substring(0, i4).trim() : sb.toString().trim(), PlatformType.JAVA);
    }
}
