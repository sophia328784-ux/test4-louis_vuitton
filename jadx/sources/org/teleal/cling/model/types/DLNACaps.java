package org.teleal.cling.model.types;

import java.util.Arrays;
import org.teleal.cling.model.ModelUtil;

/* JADX INFO: loaded from: classes5.dex */
public class DLNACaps {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f78502a;

    public DLNACaps(String[] strArr) {
        this.f78502a = strArr;
    }

    public static DLNACaps a(String str) {
        if (str == null || str.length() == 0) {
            return new DLNACaps(new String[0]);
        }
        String[] strArrSplit = str.split(",");
        String[] strArr = new String[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            strArr[i2] = strArrSplit[i2].trim();
        }
        return new DLNACaps(strArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.equals(this.f78502a, ((DLNACaps) obj).f78502a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f78502a);
    }

    public final String toString() {
        boolean z = ModelUtil.f78377a;
        String[] strArr = this.f78502a;
        if (strArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str.toString().replaceAll("\\\\", "\\\\\\\\").replaceAll(",", "\\\\,"));
            sb.append(",");
        }
        if (sb.length() > 1) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }
}
