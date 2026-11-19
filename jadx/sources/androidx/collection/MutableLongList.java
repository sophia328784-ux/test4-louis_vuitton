package androidx.collection;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableLongList;", "Landroidx/collection/LongList;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableLongList extends LongList {
    public /* synthetic */ MutableLongList(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 16 : i2);
    }

    public final void a(long j2) {
        int i2 = this.f3276b + 1;
        long[] jArr = this.f3275a;
        if (jArr.length < i2) {
            this.f3275a = Arrays.copyOf(jArr, Math.max(i2, (jArr.length * 3) / 2));
        }
        long[] jArr2 = this.f3275a;
        int i3 = this.f3276b;
        jArr2[i3] = j2;
        this.f3276b = i3 + 1;
    }

    public MutableLongList(int i2) {
        super(i2, null);
    }

    public MutableLongList() {
        this(0, 1, null);
    }
}
