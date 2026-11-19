package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;", "", "", "groupKey", "Landroidx/compose/runtime/tooling/SourceInformation;", "sourceInfo", "groupOffset", "<init>", "(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ComposeStackTraceFrame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SourceInformation f8555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f8556c;

    public ComposeStackTraceFrame(int i2, SourceInformation sourceInformation, Integer num) {
        this.f8554a = i2;
        this.f8555b = sourceInformation;
        this.f8556c = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposeStackTraceFrame)) {
            return false;
        }
        ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) obj;
        return this.f8554a == composeStackTraceFrame.f8554a && Intrinsics.c(this.f8555b, composeStackTraceFrame.f8555b) && Intrinsics.c(this.f8556c, composeStackTraceFrame.f8556c);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f8554a) * 31;
        SourceInformation sourceInformation = this.f8555b;
        int iHashCode2 = (iHashCode + (sourceInformation == null ? 0 : sourceInformation.hashCode())) * 31;
        Integer num = this.f8556c;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        return "ComposeStackTraceFrame(groupKey=" + this.f8554a + ", sourceInfo=" + this.f8555b + ", groupOffset=" + this.f8556c + ')';
    }
}
