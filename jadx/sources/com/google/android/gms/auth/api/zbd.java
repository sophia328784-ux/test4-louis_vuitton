package com.google.android.gms.auth.api;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zbd implements Api.ApiOptions.Optional {
    public static final zbd d = new zbd(new zbc());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f28852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28853c;

    public zbd(zbc zbcVar) {
        this.f28852b = zbcVar.f28850a.booleanValue();
        this.f28853c = zbcVar.f28851b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zbd)) {
            return false;
        }
        zbd zbdVar = (zbd) obj;
        return Objects.a(null, null) && this.f28852b == zbdVar.f28852b && Objects.a(this.f28853c, zbdVar.f28853c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{null, Boolean.valueOf(this.f28852b), this.f28853c});
    }
}
