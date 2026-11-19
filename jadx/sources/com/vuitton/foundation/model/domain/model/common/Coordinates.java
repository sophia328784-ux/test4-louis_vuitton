package com.vuitton.foundation.model.domain.model.common;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/Coordinates;", "", "", "latitude", "longitude", "<init>", "(DD)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Coordinates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f67116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f67117b;

    public Coordinates(double d, double d2) {
        this.f67116a = d;
        this.f67117b = d2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Coordinates)) {
            return false;
        }
        Coordinates coordinates = (Coordinates) obj;
        return Double.compare(this.f67116a, coordinates.f67116a) == 0 && Double.compare(this.f67117b, coordinates.f67117b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.f67117b) + (Double.hashCode(this.f67116a) * 31);
    }

    public final String toString() {
        return "Coordinates(latitude=" + this.f67116a + ", longitude=" + this.f67117b + ")";
    }
}
