package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/MatchGroup;", "", "", "value", "Lkotlin/ranges/IntRange;", "range", "<init>", "(Ljava/lang/String;Lkotlin/ranges/IntRange;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class MatchGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f74543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IntRange f74544b;

    public MatchGroup(String str, IntRange intRange) {
        str.getClass();
        intRange.getClass();
        this.f74543a = str;
        this.f74544b = intRange;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MatchGroup)) {
            return false;
        }
        MatchGroup matchGroup = (MatchGroup) obj;
        return Intrinsics.c(this.f74543a, matchGroup.f74543a) && Intrinsics.c(this.f74544b, matchGroup.f74544b);
    }

    public final int hashCode() {
        return this.f74544b.hashCode() + (this.f74543a.hashCode() * 31);
    }

    public final String toString() {
        return "MatchGroup(value=" + this.f74543a + ", range=" + this.f74544b + ')';
    }
}
