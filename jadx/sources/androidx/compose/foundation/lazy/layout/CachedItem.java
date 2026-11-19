package androidx.compose.foundation.lazy.layout;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/layout/CachedItem;", "", ConfigurationName.KEY, "", "mainAxisSize", "<init>", "(Ljava/lang/Object;I)V", "NoKey", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CachedItem {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final NoKey f5400c = new NoKey(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f5401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5402b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class NoKey {
        public NoKey(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public CachedItem(Object obj, int i2) {
        this.f5401a = obj;
        this.f5402b = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CachedItem(key=");
        sb.append(this.f5401a);
        sb.append(", mainAxisSize=");
        return tr.k(sb, this.f5402b, ')');
    }
}
