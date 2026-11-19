package com.dynatrace.android.agent.crash;

import com.dynatrace.android.agent.util.Utility;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class XamarinStacktraceProcessor implements StacktraceProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27455b;

    public XamarinStacktraceProcessor(String str, int i2) {
        this.f27454a = str;
        this.f27455b = i2;
    }

    @Override // com.dynatrace.android.agent.crash.StacktraceProcessor
    public final StacktraceData a() {
        String string = this.f27454a;
        String[] strArrSplit = string.split("\n");
        if (strArrSplit.length < 1) {
            md.n("no lines");
            return null;
        }
        if (strArrSplit[0].startsWith("  at ")) {
            md.n("no reason message available");
            return null;
        }
        int iIndexOf = strArrSplit[0].indexOf(":");
        if (iIndexOf < 0) {
            md.n("no exception name available");
            return null;
        }
        String strK = Utility.k(250, strArrSplit[0].substring(0, iIndexOf));
        StringBuilder sb = new StringBuilder();
        int iIndexOf2 = strArrSplit[0].indexOf(" ---> ");
        if (iIndexOf2 < 0) {
            sb.append(strArrSplit[0]);
            for (int i2 = 1; i2 < strArrSplit.length && !strArrSplit[i2].startsWith("  at ") && sb.length() < 1000; i2++) {
                sb.append("\n");
                int iIndexOf3 = strArrSplit[i2].indexOf(" ---> ");
                if (iIndexOf3 >= 0) {
                    sb.append(strArrSplit[i2].substring(0, iIndexOf3));
                    break;
                }
                sb.append(strArrSplit[i2]);
            }
        } else {
            sb.append(strArrSplit[0].substring(0, iIndexOf2));
        }
        String strSubstring = sb.length() > 1000 ? sb.substring(0, 1000) : sb.toString();
        int length = strArrSplit.length;
        int i3 = this.f27455b;
        if (length > i3 || string.length() > 128000) {
            StringBuilder sb2 = new StringBuilder();
            int i4 = 0;
            int length2 = 0;
            while (i4 < Math.min(strArrSplit.length, i3)) {
                int i5 = i4 == 0 ? 0 : 1;
                if (strArrSplit[i4].length() + length2 + i5 > 128000) {
                    break;
                }
                if (i5 > 0) {
                    sb2.append("\n");
                }
                sb2.append(strArrSplit[i4]);
                length2 += strArrSplit[i4].length() + i5;
                i4++;
            }
            string = sb2.toString();
        }
        return new StacktraceData(strK, strSubstring, string, PlatformType.XAMARIN);
    }
}
