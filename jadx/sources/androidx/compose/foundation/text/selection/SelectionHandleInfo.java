package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.ui.geometry.Offset;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionHandleInfo;", "", "Landroidx/compose/foundation/text/Handle;", "handle", "Landroidx/compose/ui/geometry/Offset;", "position", "Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;", "anchor", "", "visible", "<init>", "(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SelectionHandleInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handle f6426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionHandleAnchor f6428c;
    public final boolean d;

    public SelectionHandleInfo(Handle handle, long j2, SelectionHandleAnchor selectionHandleAnchor, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6426a = handle;
        this.f6427b = j2;
        this.f6428c = selectionHandleAnchor;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionHandleInfo)) {
            return false;
        }
        SelectionHandleInfo selectionHandleInfo = (SelectionHandleInfo) obj;
        return this.f6426a == selectionHandleInfo.f6426a && Offset.c(this.f6427b, selectionHandleInfo.f6427b) && this.f6428c == selectionHandleInfo.f6428c && this.d == selectionHandleInfo.d;
    }

    public final int hashCode() {
        int iHashCode = this.f6426a.hashCode() * 31;
        Offset.Companion companion = Offset.f8806b;
        return Boolean.hashCode(this.d) + ((this.f6428c.hashCode() + fc.a(iHashCode, 31, this.f6427b)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionHandleInfo(handle=");
        sb.append(this.f6426a);
        sb.append(", position=");
        sb.append((Object) Offset.h(this.f6427b));
        sb.append(", anchor=");
        sb.append(this.f6428c);
        sb.append(", visible=");
        return d21.q(sb, this.d, ')');
    }
}
