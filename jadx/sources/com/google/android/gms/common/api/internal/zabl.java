package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Objects;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zabl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ApiKey f29078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Feature f29079b;

    public /* synthetic */ zabl(ApiKey apiKey, Feature feature) {
        this.f29078a = apiKey;
        this.f29079b = feature;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zabl)) {
            return false;
        }
        zabl zablVar = (zabl) obj;
        return Objects.a(this.f29078a, zablVar.f29078a) && Objects.a(this.f29079b, zablVar.f29079b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29078a, this.f29079b});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f29078a, ConfigurationName.KEY);
        toStringHelper.a(this.f29079b, "feature");
        return toStringHelper.toString();
    }
}
