package androidx.compose.foundation.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutData;", "", "", "fillCrossAxisFraction", "<init>", "(F)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class FlowLayoutData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4977a;

    public FlowLayoutData(float f2) {
        this.f4977a = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FlowLayoutData) && Float.compare(this.f4977a, ((FlowLayoutData) obj).f4977a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f4977a);
    }

    public final String toString() {
        return defpackage.a.m(new StringBuilder("FlowLayoutData(fillCrossAxisFraction="), this.f4977a, ')');
    }
}
