package androidx.navigation3.scene;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002¨\u0006\u0003²\u0006\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lkotlin/Function0;", "", "currentOnBack", "navigation3-ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SceneStateKt {
    public static final Scene a(SceneDecoratorStrategyScope sceneDecoratorStrategyScope, List list, List list2, List list3) {
        Scene sceneA = list2.size() > 0 ? ((SceneStrategy) list2.get(0)).a(list) : null;
        if (sceneA == null) {
            sceneA = new SinglePaneSceneStrategy().a(list);
        }
        int size = list3.size();
        for (int i2 = 0; i2 < size; i2++) {
            SceneDecoratorStrategy sceneDecoratorStrategy = (SceneDecoratorStrategy) list3.get(i2);
            sceneA = sceneA instanceof OverlayScene ? (OverlayScene) sceneA : null;
            if (sceneA == null) {
                sceneA = sceneDecoratorStrategy.a();
            }
        }
        return sceneA;
    }
}
