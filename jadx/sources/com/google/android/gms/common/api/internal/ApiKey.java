package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiKey<O extends Api.ApiOptions> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Api f29013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Api.ApiOptions f29014c;
    public final String d;

    public ApiKey(Api api, Api.ApiOptions apiOptions, String str) {
        this.f29013b = api;
        this.f29014c = apiOptions;
        this.d = str;
        this.f29012a = Arrays.hashCode(new Object[]{api, apiOptions, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.a(this.f29013b, apiKey.f29013b) && Objects.a(this.f29014c, apiKey.f29014c) && Objects.a(this.d, apiKey.d);
    }

    public final int hashCode() {
        return this.f29012a;
    }
}
