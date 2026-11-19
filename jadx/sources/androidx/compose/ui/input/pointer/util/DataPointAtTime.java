package androidx.compose.ui.input.pointer.util;

import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/input/pointer/util/DataPointAtTime;", "", "", "time", "", "dataPoint", "<init>", "(JF)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DataPointAtTime {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f9396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f9397b;

    public DataPointAtTime(long j2, float f2) {
        this.f9396a = j2;
        this.f9397b = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DataPointAtTime)) {
            return false;
        }
        DataPointAtTime dataPointAtTime = (DataPointAtTime) obj;
        return this.f9396a == dataPointAtTime.f9396a && Float.compare(this.f9397b, dataPointAtTime.f9397b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f9397b) + (Long.hashCode(this.f9396a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DataPointAtTime(time=");
        sb.append(this.f9396a);
        sb.append(", dataPoint=");
        return a.m(sb, this.f9397b, ')');
    }
}
