package androidx.activity.compose;

import androidx.navigationevent.NavigationEventInfo;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/activity/compose/BackHandlerInfo;", "Landroidx/navigationevent/NavigationEventInfo;", "", "owner", "", "compositeKey", "<init>", "(Ljava/lang/Object;J)V", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class BackHandlerInfo extends NavigationEventInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f697b;

    public BackHandlerInfo(Object obj, long j2) {
        this.f696a = obj;
        this.f697b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackHandlerInfo)) {
            return false;
        }
        BackHandlerInfo backHandlerInfo = (BackHandlerInfo) obj;
        return Intrinsics.c(this.f696a, backHandlerInfo.f696a) && this.f697b == backHandlerInfo.f697b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f697b) + (this.f696a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackHandlerInfo(owner=");
        sb.append(this.f696a);
        sb.append(", compositeKey=");
        return fc.k(sb, this.f697b, ')');
    }
}
