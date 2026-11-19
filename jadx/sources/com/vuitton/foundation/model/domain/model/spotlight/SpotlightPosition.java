package com.vuitton.foundation.model.domain.model.spotlight;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;", "", "", "left", "top", "<init>", "(FF)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightPosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f68228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f68229b;

    public SpotlightPosition(float f2, float f3) {
        this.f68228a = f2;
        this.f68229b = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightPosition)) {
            return false;
        }
        SpotlightPosition spotlightPosition = (SpotlightPosition) obj;
        return Float.compare(this.f68228a, spotlightPosition.f68228a) == 0 && Float.compare(this.f68229b, spotlightPosition.f68229b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f68229b) + (Float.hashCode(this.f68228a) * 31);
    }

    public final String toString() {
        return "SpotlightPosition(left=" + this.f68228a + ", top=" + this.f68229b + ")";
    }
}
