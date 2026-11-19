package com.vuitton.android.presentation.ar.arcore;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/ScreenPosition;", "", "", "x", "y", "<init>", "(FF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ScreenPosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f50573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f50574b;

    public ScreenPosition(float f2, float f3) {
        this.f50573a = f2;
        this.f50574b = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScreenPosition)) {
            return false;
        }
        ScreenPosition screenPosition = (ScreenPosition) obj;
        return Float.compare(this.f50573a, screenPosition.f50573a) == 0 && Float.compare(this.f50574b, screenPosition.f50574b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f50574b) + (Float.hashCode(this.f50573a) * 31);
    }

    public final String toString() {
        return "ScreenPosition(x=" + this.f50573a + ", y=" + this.f50574b + ")";
    }
}
