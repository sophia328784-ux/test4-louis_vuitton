package com.vuitton.android.presentation.common.editorial.models;

import defpackage.a;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/GeolocationUiModel;", "", "", "latitude", "longitude", "", "radius", "<init>", "(FFI)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GeolocationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f50856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f50857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f50858c;

    public GeolocationUiModel(float f2, float f3, int i2) {
        this.f50856a = f2;
        this.f50857b = f3;
        this.f50858c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GeolocationUiModel)) {
            return false;
        }
        GeolocationUiModel geolocationUiModel = (GeolocationUiModel) obj;
        return Float.compare(this.f50856a, geolocationUiModel.f50856a) == 0 && Float.compare(this.f50857b, geolocationUiModel.f50857b) == 0 && this.f50858c == geolocationUiModel.f50858c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f50858c) + pq0.b(Float.hashCode(this.f50856a) * 31, 31, this.f50857b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GeolocationUiModel(latitude=");
        sb.append(this.f50856a);
        sb.append(", longitude=");
        sb.append(this.f50857b);
        sb.append(", radius=");
        return a.i(this.f50858c, ")", sb);
    }
}
