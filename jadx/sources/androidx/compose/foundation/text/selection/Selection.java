package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001:\u0001\tB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/selection/Selection;", "", "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;", "start", "end", "", "handlesCrossed", "<init>", "(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V", "AnchorInfo", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Selection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnchorInfo f6391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnchorInfo f6392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6393c;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;", "", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "direction", "", "offset", "", "selectableId", "<init>", "(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class AnchorInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ResolvedTextDirection f6394a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f6395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f6396c;

        public AnchorInfo(ResolvedTextDirection resolvedTextDirection, int i2, long j2) {
            this.f6394a = resolvedTextDirection;
            this.f6395b = i2;
            this.f6396c = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnchorInfo)) {
                return false;
            }
            AnchorInfo anchorInfo = (AnchorInfo) obj;
            return this.f6394a == anchorInfo.f6394a && this.f6395b == anchorInfo.f6395b && this.f6396c == anchorInfo.f6396c;
        }

        public final int hashCode() {
            return Long.hashCode(this.f6396c) + tr.b(this.f6395b, this.f6394a.hashCode() * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AnchorInfo(direction=");
            sb.append(this.f6394a);
            sb.append(", offset=");
            sb.append(this.f6395b);
            sb.append(", selectableId=");
            return fc.k(sb, this.f6396c, ')');
        }
    }

    public Selection(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z) {
        this.f6391a = anchorInfo;
        this.f6392b = anchorInfo2;
        this.f6393c = z;
    }

    public static Selection a(Selection selection, AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z, int i2) {
        if ((i2 & 1) != 0) {
            anchorInfo = selection.f6391a;
        }
        if ((i2 & 2) != 0) {
            anchorInfo2 = selection.f6392b;
        }
        selection.getClass();
        return new Selection(anchorInfo, anchorInfo2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Selection)) {
            return false;
        }
        Selection selection = (Selection) obj;
        return Intrinsics.c(this.f6391a, selection.f6391a) && Intrinsics.c(this.f6392b, selection.f6392b) && this.f6393c == selection.f6393c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f6393c) + ((this.f6392b.hashCode() + (this.f6391a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Selection(start=");
        sb.append(this.f6391a);
        sb.append(", end=");
        sb.append(this.f6392b);
        sb.append(", handlesCrossed=");
        return d21.q(sb, this.f6393c, ')');
    }

    public /* synthetic */ Selection(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(anchorInfo, anchorInfo2, (i2 & 4) != 0 ? false : z);
    }
}
