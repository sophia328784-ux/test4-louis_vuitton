package com.vuitton.foundation.model.domain.model.common.editorial;

import defpackage.a;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/Geolocation;", "", "", "latitude", "longitude", "", "radius", "<init>", "(FFI)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Geolocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f67214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f67215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f67216c;

    public Geolocation(float f2, float f3, int i2) {
        this.f67214a = f2;
        this.f67215b = f3;
        this.f67216c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Geolocation)) {
            return false;
        }
        Geolocation geolocation = (Geolocation) obj;
        return Float.compare(this.f67214a, geolocation.f67214a) == 0 && Float.compare(this.f67215b, geolocation.f67215b) == 0 && this.f67216c == geolocation.f67216c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f67216c) + pq0.b(Float.hashCode(this.f67214a) * 31, 31, this.f67215b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Geolocation(latitude=");
        sb.append(this.f67214a);
        sb.append(", longitude=");
        sb.append(this.f67215b);
        sb.append(", radius=");
        return a.i(this.f67216c, ")", sb);
    }
}
