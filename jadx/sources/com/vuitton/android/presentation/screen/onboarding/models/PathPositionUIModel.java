package com.vuitton.android.presentation.screen.onboarding.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/PathPositionUIModel;", "", "", "startX", "startY", "<init>", "(FF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PathPositionUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f59603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f59604b;

    public /* synthetic */ PathPositionUIModel(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f2, (i2 & 2) != 0 ? 0.0f : f3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathPositionUIModel)) {
            return false;
        }
        PathPositionUIModel pathPositionUIModel = (PathPositionUIModel) obj;
        return Float.compare(this.f59603a, pathPositionUIModel.f59603a) == 0 && Float.compare(this.f59604b, pathPositionUIModel.f59604b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f59604b) + (Float.hashCode(this.f59603a) * 31);
    }

    public final String toString() {
        return "PathPositionUIModel(startX=" + this.f59603a + ", startY=" + this.f59604b + ")";
    }

    public PathPositionUIModel(float f2, float f3) {
        this.f59603a = f2;
        this.f59604b = f3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PathPositionUIModel() {
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this(f2, f2, 3, null);
    }
}
