package androidx.compose.foundation.layout;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/layout/RowColumnParentData;", "", "", "weight", "", "fill", "Landroidx/compose/foundation/layout/CrossAxisAlignment;", "crossAxisAlignment", "Landroidx/compose/foundation/layout/FlowLayoutData;", "flowLayoutData", "<init>", "(FZLandroidx/compose/foundation/layout/CrossAxisAlignment;Landroidx/compose/foundation/layout/FlowLayoutData;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class RowColumnParentData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CrossAxisAlignment f5036c;
    public final FlowLayoutData d;

    public /* synthetic */ RowColumnParentData(float f2, boolean z, CrossAxisAlignment crossAxisAlignment, FlowLayoutData flowLayoutData, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? null : crossAxisAlignment, (i2 & 8) != 0 ? null : flowLayoutData);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowColumnParentData)) {
            return false;
        }
        RowColumnParentData rowColumnParentData = (RowColumnParentData) obj;
        return Float.compare(this.f5034a, rowColumnParentData.f5034a) == 0 && this.f5035b == rowColumnParentData.f5035b && Intrinsics.c(this.f5036c, rowColumnParentData.f5036c) && Intrinsics.c(this.d, rowColumnParentData.d);
    }

    public final int hashCode() {
        int iB = o60.b(Float.hashCode(this.f5034a) * 31, 31, this.f5035b);
        CrossAxisAlignment crossAxisAlignment = this.f5036c;
        int iHashCode = (iB + (crossAxisAlignment == null ? 0 : crossAxisAlignment.hashCode())) * 31;
        FlowLayoutData flowLayoutData = this.d;
        return iHashCode + (flowLayoutData != null ? Float.hashCode(flowLayoutData.f4977a) : 0);
    }

    public final String toString() {
        return "RowColumnParentData(weight=" + this.f5034a + ", fill=" + this.f5035b + ", crossAxisAlignment=" + this.f5036c + ", flowLayoutData=" + this.d + ')';
    }

    public RowColumnParentData(float f2, boolean z, CrossAxisAlignment crossAxisAlignment, FlowLayoutData flowLayoutData) {
        this.f5034a = f2;
        this.f5035b = z;
        this.f5036c = crossAxisAlignment;
        this.d = flowLayoutData;
    }

    public RowColumnParentData() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, false, null, null, 15, null);
    }
}
