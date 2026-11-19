package kotlinx.coroutines;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/CoroutineName;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "", "name", "<init>", "(Ljava/lang/String;)V", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CoroutineName extends AbstractCoroutineContextElement {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Key f74650c = new Key(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f74651b;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineName$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineName;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Key implements CoroutineContext.Key<CoroutineName> {
        public Key(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public CoroutineName(String str) {
        super(f74650c);
        this.f74651b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CoroutineName) && Intrinsics.c(this.f74651b, ((CoroutineName) obj).f74651b);
    }

    public final int hashCode() {
        return this.f74651b.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("CoroutineName("), this.f74651b, ')');
    }
}
