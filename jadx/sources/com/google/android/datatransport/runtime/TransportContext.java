package com.google.android.datatransport.runtime;

import android.util.Base64;
import com.google.android.datatransport.Priority;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TransportContext {

    public static abstract class Builder {
        public abstract TransportContext a();

        public abstract Builder b(String str);

        public abstract Builder c(byte[] bArr);

        public abstract Builder d(Priority priority);
    }

    public static Builder a() {
        AutoValue_TransportContext.Builder builder = new AutoValue_TransportContext.Builder();
        builder.d(Priority.DEFAULT);
        return builder;
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract Priority d();

    public final TransportContext e(Priority priority) {
        Builder builderA = a();
        builderA.b(b());
        builderA.d(priority);
        ((AutoValue_TransportContext.Builder) builderA).f27959b = c();
        return builderA.a();
    }

    public final String toString() {
        String strB = b();
        Priority priorityD = d();
        String strEncodeToString = c() == null ? "" : Base64.encodeToString(c(), 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(strB);
        sb.append(", ");
        sb.append(priorityD);
        sb.append(", ");
        return n00.r(strEncodeToString, ")", sb);
    }
}
