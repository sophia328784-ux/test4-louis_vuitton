package com.vuitton.android.presentation.screen.repairs.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;", "", "", "isTutorialEnabled", "isRepairCreationEnabled", "isRepairCancellationReasonEnabled", "isShippedFromEhubEnabled", "isRepairModifyEnabled", "<init>", "(ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f64009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64011c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f64012e;

    public /* synthetic */ RepairFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairFeatureFlags)) {
            return false;
        }
        RepairFeatureFlags repairFeatureFlags = (RepairFeatureFlags) obj;
        return this.f64009a == repairFeatureFlags.f64009a && this.f64010b == repairFeatureFlags.f64010b && this.f64011c == repairFeatureFlags.f64011c && this.d == repairFeatureFlags.d && this.f64012e == repairFeatureFlags.f64012e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f64012e) + o60.b(o60.b(o60.b(Boolean.hashCode(this.f64009a) * 31, 31, this.f64010b), 31, this.f64011c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("RepairFeatureFlags(isTutorialEnabled=", ", isRepairCreationEnabled=", ", isRepairCancellationReasonEnabled=", this.f64009a, this.f64010b);
        fc.y(sbM, this.f64011c, ", isShippedFromEhubEnabled=", this.d, ", isRepairModifyEnabled=");
        return a.p(sbM, this.f64012e, ")");
    }

    public RepairFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f64009a = z;
        this.f64010b = z2;
        this.f64011c = z3;
        this.d = z4;
        this.f64012e = z5;
    }

    public RepairFeatureFlags() {
        this(false, false, false, false, false, 31, null);
    }
}
