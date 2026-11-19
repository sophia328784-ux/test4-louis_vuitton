package androidx.navigation3.scene;

import androidx.navigation3.runtime.NavEntry;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation3/scene/SinglePaneSceneStrategy;", "", "T", "Landroidx/navigation3/scene/SceneStrategy;", "<init>", "()V", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SinglePaneSceneStrategy<T> implements SceneStrategy<T> {
    @Override // androidx.navigation3.scene.SceneStrategy
    public final SinglePaneScene a(List list) {
        return new SinglePaneScene(((NavEntry) CollectionsKt.M(list)).f18398b, (NavEntry) CollectionsKt.M(list), CollectionsKt.x(1, list));
    }
}
