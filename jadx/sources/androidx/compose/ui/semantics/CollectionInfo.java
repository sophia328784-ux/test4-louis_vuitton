package androidx.compose.ui.semantics;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/semantics/CollectionInfo;", "", "", "rowCount", "columnCount", "<init>", "(II)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CollectionInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10275b;

    public CollectionInfo(int i2, int i3) {
        this.f10274a = i2;
        this.f10275b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CollectionInfo)) {
            return false;
        }
        CollectionInfo collectionInfo = (CollectionInfo) obj;
        return this.f10274a == collectionInfo.f10274a && this.f10275b == collectionInfo.f10275b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10275b) + (Integer.hashCode(this.f10274a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CollectionInfo(rowCount=");
        sb.append(this.f10274a);
        sb.append(", columnCount=");
        return tr.k(sb, this.f10275b, ')');
    }
}
