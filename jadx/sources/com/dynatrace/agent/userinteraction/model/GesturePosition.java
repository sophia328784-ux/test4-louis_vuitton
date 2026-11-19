package com.dynatrace.agent.userinteraction.model;

import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GesturePosition;", "", "", "x", "y", "", "pointerId", "", "relativeStartTimeMs", "", "released", "<init>", "(FFIJZ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class GesturePosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f27158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f27159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27160c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27161e;

    public GesturePosition(float f2, float f3, int i2, long j2, boolean z) {
        this.f27158a = f2;
        this.f27159b = f3;
        this.f27160c = i2;
        this.d = j2;
        this.f27161e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GesturePosition)) {
            return false;
        }
        GesturePosition gesturePosition = (GesturePosition) obj;
        return Float.compare(this.f27158a, gesturePosition.f27158a) == 0 && Float.compare(this.f27159b, gesturePosition.f27159b) == 0 && this.f27160c == gesturePosition.f27160c && this.d == gesturePosition.d && this.f27161e == gesturePosition.f27161e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f27161e) + fc.a(tr.b(this.f27160c, pq0.b(Float.hashCode(this.f27158a) * 31, 31, this.f27159b), 31), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GesturePosition(x=");
        sb.append(this.f27158a);
        sb.append(", y=");
        sb.append(this.f27159b);
        sb.append(", pointerId=");
        sb.append(this.f27160c);
        sb.append(", relativeStartTimeMs=");
        sb.append(this.d);
        sb.append(", released=");
        return d21.q(sb, this.f27161e, ')');
    }
}
