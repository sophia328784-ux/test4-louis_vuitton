package com.vuitton.android.data.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/HttpResponseBody;", "", "body", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class HttpResponseBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46965a;

    public final boolean equals(Object obj) {
        if (obj instanceof HttpResponseBody) {
            return this.f46965a.equals(((HttpResponseBody) obj).f46965a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f46965a.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF46965a() {
        return this.f46965a;
    }
}
