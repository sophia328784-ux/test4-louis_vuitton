package androidx.paging;

import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B=\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0001\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/paging/PagingState;", "", "Key", "Value", "", "Landroidx/paging/PagingSource$LoadResult$Page;", "pages", "", "anchorPosition", "Landroidx/paging/PagingConfig;", "config", "leadingPlaceholderCount", "<init>", "(Ljava/util/List;Ljava/lang/Integer;Landroidx/paging/PagingConfig;I)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PagingState<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f18902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f18903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PagingConfig f18904c;
    public final int d;

    public PagingState(List<PagingSource.LoadResult.Page<Key, Value>> list, Integer num, PagingConfig pagingConfig, int i2) {
        list.getClass();
        pagingConfig.getClass();
        this.f18902a = list;
        this.f18903b = num;
        this.f18904c = pagingConfig;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingState)) {
            return false;
        }
        PagingState pagingState = (PagingState) obj;
        return Intrinsics.c(this.f18902a, pagingState.f18902a) && Intrinsics.c(this.f18903b, pagingState.f18903b) && Intrinsics.c(this.f18904c, pagingState.f18904c) && this.d == pagingState.d;
    }

    public final int hashCode() {
        int iHashCode = this.f18902a.hashCode();
        Integer num = this.f18903b;
        return Integer.hashCode(this.d) + this.f18904c.hashCode() + iHashCode + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingState(pages=");
        sb.append(this.f18902a);
        sb.append(", anchorPosition=");
        sb.append(this.f18903b);
        sb.append(", config=");
        sb.append(this.f18904c);
        sb.append(", leadingPlaceholderCount=");
        return tr.k(sb, this.d, ')');
    }
}
