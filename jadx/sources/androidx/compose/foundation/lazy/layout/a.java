package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5571c;

    public /* synthetic */ a(Object obj, int i2) {
        this.f5570b = i2;
        this.f5571c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f5570b;
        Object obj2 = this.f5571c;
        switch (i2) {
            case 0:
                final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$lambda$0$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        cachedItemContent.d = null;
                    }
                };
            case 1:
                final LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        lazyLayoutPinnableItem.f5499f = true;
                    }
                };
            case 2:
                SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) obj2;
                LazySaveableStateHolder.Companion companion = LazySaveableStateHolder.f5533e;
                return Boolean.valueOf(saveableStateRegistry != null ? saveableStateRegistry.a(obj) : true);
            default:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                LazyLayoutPrefetchState lazyLayoutPrefetchState = ((TraversablePrefetchStateNode) traversableNode).p;
                List listU = (List) ref$ObjectRef.f71921b;
                if (listU != null) {
                    listU.add(lazyLayoutPrefetchState);
                } else {
                    listU = CollectionsKt.U(lazyLayoutPrefetchState);
                }
                ref$ObjectRef.f71921b = listU;
                return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
        }
    }
}
