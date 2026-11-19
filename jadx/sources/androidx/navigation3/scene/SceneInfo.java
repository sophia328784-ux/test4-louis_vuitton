package androidx.navigation3.scene;

import androidx.navigationevent.NavigationEventInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/navigation3/scene/SceneInfo;", "", "T", "Landroidx/navigationevent/NavigationEventInfo;", "Landroidx/navigation3/scene/Scene;", "scene", "<init>", "(Landroidx/navigation3/scene/Scene;)V", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SceneInfo<T> extends NavigationEventInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Scene f18409a;

    public SceneInfo(Scene<T> scene) {
        this.f18409a = scene;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SceneInfo.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.c(this.f18409a, ((SceneInfo) obj).f18409a);
    }

    public final int hashCode() {
        return this.f18409a.hashCode();
    }

    public final String toString() {
        return "SceneInfo(scene=" + this.f18409a + ')';
    }
}
