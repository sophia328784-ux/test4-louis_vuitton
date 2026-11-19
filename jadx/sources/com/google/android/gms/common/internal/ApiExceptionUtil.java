package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes2.dex */
public class ApiExceptionUtil {
    public static ApiException a(Status status) {
        return status.d != null ? new ResolvableApiException(status) : new ApiException(status);
    }
}
