package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    public interface Types {
    }

    public abstract long W1();

    public abstract int X1();

    public abstract String Y1();

    public final String toString() {
        long jW1 = W1();
        int iX1 = X1();
        String strY1 = Y1();
        int length = String.valueOf(jW1).length();
        StringBuilder sb = new StringBuilder(length + 1 + String.valueOf(iX1).length() + 3 + strY1.length());
        sb.append(jW1);
        sb.append("\t");
        sb.append(iX1);
        return n00.r("\t-1", strY1, sb);
    }
}
