package com.vuitton.android.designkit.ui.theme.molecules;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControls;", "", "Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;", "default", "invert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlConfiguration;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVSegmentedControls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SegmentedControlConfiguration f48663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SegmentedControlConfiguration f48664b;

    public LVSegmentedControls(SegmentedControlConfiguration segmentedControlConfiguration, SegmentedControlConfiguration segmentedControlConfiguration2) {
        segmentedControlConfiguration.getClass();
        segmentedControlConfiguration2.getClass();
        this.f48663a = segmentedControlConfiguration;
        this.f48664b = segmentedControlConfiguration2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVSegmentedControls)) {
            return false;
        }
        LVSegmentedControls lVSegmentedControls = (LVSegmentedControls) obj;
        return Intrinsics.c(this.f48663a, lVSegmentedControls.f48663a) && Intrinsics.c(this.f48664b, lVSegmentedControls.f48664b);
    }

    public final int hashCode() {
        return this.f48664b.hashCode() + (this.f48663a.hashCode() * 31);
    }

    public final String toString() {
        return "LVSegmentedControls(default=" + this.f48663a + ", invert=" + this.f48664b + ")";
    }
}
