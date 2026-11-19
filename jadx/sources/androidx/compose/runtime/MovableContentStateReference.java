package androidx.compose.runtime;

import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001Bo\b\u0000\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u001a\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\f0\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000b¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/runtime/MovableContentStateReference;", "", "Landroidx/compose/runtime/MovableContent;", "content", "parameter", "Landroidx/compose/runtime/ControlledComposition;", "composition", "Landroidx/compose/runtime/SlotStorage;", "slotStorage", "Landroidx/compose/runtime/Anchor;", "anchor", "", "Lkotlin/Pair;", "Landroidx/compose/runtime/RecomposeScopeImpl;", "invalidations", "Landroidx/compose/runtime/PersistentCompositionLocalMap;", "locals", "nestedReferences", "<init>", "(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotStorage;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/util/List;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MovableContentStateReference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MovableContent f8024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ControlledComposition f8026c;
    public final SlotStorage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Anchor f8027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f8028f;
    public final PersistentCompositionLocalMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f8029h;

    public MovableContentStateReference(MovableContent<Object> movableContent, Object obj, ControlledComposition controlledComposition, SlotStorage slotStorage, Anchor anchor, List<? extends Pair<RecomposeScopeImpl, ? extends Object>> list, PersistentCompositionLocalMap persistentCompositionLocalMap, List<MovableContentStateReference> list2) {
        this.f8024a = movableContent;
        this.f8025b = obj;
        this.f8026c = controlledComposition;
        this.d = slotStorage;
        this.f8027e = anchor;
        this.f8028f = list;
        this.g = persistentCompositionLocalMap;
        this.f8029h = list2;
    }
}
