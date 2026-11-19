package androidx.navigation3.scene;

import androidx.navigation3.runtime.NavEntry;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001BS\b\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0003¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/navigation3/scene/SceneState;", "", "T", "", "Landroidx/navigation3/runtime/NavEntry;", "entries", "Landroidx/navigation3/scene/OverlayScene;", "overlayScenes", "Landroidx/navigation3/scene/Scene;", "currentScene", "previousScenes", "<init>", "(Ljava/util/List;Ljava/util/List;Landroidx/navigation3/scene/Scene;Ljava/util/List;)V", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SceneState<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f18412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f18413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scene f18414c;
    public final List d;

    public SceneState(List<NavEntry<T>> list, List<? extends OverlayScene<T>> list2, Scene<T> scene, List<? extends Scene<T>> list3) {
        this.f18412a = list;
        this.f18413b = list2;
        this.f18414c = scene;
        this.d = list3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SceneState.class == obj.getClass()) {
            SceneState sceneState = (SceneState) obj;
            if (Intrinsics.c(this.f18412a, sceneState.f18412a) && Intrinsics.c(this.f18413b, sceneState.f18413b) && Intrinsics.c(this.f18414c, sceneState.f18414c) && Intrinsics.c(this.d, sceneState.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.d.hashCode() * 31) + (this.f18414c.hashCode() * 31) + (this.f18413b.hashCode() * 31) + (this.f18412a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SceneState(entries=");
        sb.append(this.f18412a);
        sb.append(", overlayScenes=");
        sb.append(this.f18413b);
        sb.append(", currentScene=");
        sb.append(this.f18414c);
        sb.append(", previousScenes=");
        return tr.m(sb, this.d, ')');
    }
}
