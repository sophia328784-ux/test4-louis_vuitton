package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Landroidx/lifecycle/viewmodel/CreationExtras;", "", "<init>", "()V", "Key", "Empty", "Companion", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CreationExtras {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f13576b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f13577a = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/viewmodel/CreationExtras$Companion;", "", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/viewmodel/CreationExtras$Empty;", "Landroidx/lifecycle/viewmodel/CreationExtras;", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Empty extends CreationExtras {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Empty f13578c = new Empty();

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        public final Object a(Key key) {
            key.getClass();
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "T", "", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Key<T> {
    }

    static {
        new Companion(null);
    }

    public abstract Object a(Key key);

    public final boolean equals(Object obj) {
        if (obj instanceof CreationExtras) {
            return Intrinsics.c(this.f13577a, ((CreationExtras) obj).f13577a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13577a.hashCode();
    }

    public final String toString() {
        return "CreationExtras(extras=" + this.f13577a + ")";
    }
}
