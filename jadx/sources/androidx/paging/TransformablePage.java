package androidx.paging;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0080\b\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\u000eB5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bB\u001f\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\n\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/paging/TransformablePage;", "", "T", "", "originalPageOffsets", "", DbParams.KEY_DATA, "", "hintOriginalPageOffset", "hintOriginalIndices", "<init>", "([ILjava/util/List;ILjava/util/List;)V", "originalPageOffset", "(ILjava/util/List;)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class TransformablePage<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f18980e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final TransformablePage f18981f = new TransformablePage(0, EmptyList.f71768b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f18982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f18983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18984c;
    public final List d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/TransformablePage$Companion;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TransformablePage(int[] iArr, List<? extends T> list, int i2, List<Integer> list2) {
        iArr.getClass();
        list.getClass();
        this.f18982a = iArr;
        this.f18983b = list;
        this.f18984c = i2;
        this.d = list2;
        if (iArr.length == 0) {
            md.n("originalPageOffsets cannot be empty when constructing TransformablePage");
            throw null;
        }
        if (list2 == null || list2.size() == list.size()) {
            return;
        }
        list2.getClass();
        throw new IllegalArgumentException(("If originalIndices (size = " + list2.size() + ") is provided, it must be same length as data (size = " + list.size() + ')').toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TransformablePage.class != obj.getClass()) {
            return false;
        }
        TransformablePage transformablePage = (TransformablePage) obj;
        return Arrays.equals(this.f18982a, transformablePage.f18982a) && Intrinsics.c(this.f18983b, transformablePage.f18983b) && this.f18984c == transformablePage.f18984c && Intrinsics.c(this.d, transformablePage.d);
    }

    public final int hashCode() {
        int iA = (n00.a(Arrays.hashCode(this.f18982a) * 31, 31, this.f18983b) + this.f18984c) * 31;
        List list = this.d;
        return iA + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransformablePage(originalPageOffsets=");
        sb.append(Arrays.toString(this.f18982a));
        sb.append(", data=");
        sb.append(this.f18983b);
        sb.append(", hintOriginalPageOffset=");
        sb.append(this.f18984c);
        sb.append(", hintOriginalIndices=");
        return tr.m(sb, this.d, ')');
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransformablePage(int i2, List<? extends T> list) {
        this(new int[]{i2}, list, i2, null);
        list.getClass();
    }
}
