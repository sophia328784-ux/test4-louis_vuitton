package androidx.constraintlayout.compose;

import com.batch.android.s.b;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/constraintlayout/compose/LayoutReference;", "", b.a.f24015b, "<init>", "(Ljava/lang/Object;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class LayoutReference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f11267a;

    public LayoutReference(Object obj) {
        this.f11267a = obj;
        new LinkedHashMap();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public Object getF11267a() {
        return this.f11267a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LayoutReference) && Intrinsics.c(getF11267a(), ((LayoutReference) obj).getF11267a());
    }

    public final int hashCode() {
        return getF11267a().hashCode();
    }
}
