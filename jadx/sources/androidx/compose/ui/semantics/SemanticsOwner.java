package androidx.compose.ui.semantics;

import androidx.collection.IntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsOwner;", "", "Landroidx/compose/ui/node/LayoutNode;", "rootNode", "Landroidx/compose/ui/semantics/EmptySemanticsModifier;", "outerSemanticsNode", "Landroidx/collection/IntObjectMap;", "nodes", "<init>", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/EmptySemanticsModifier;Landroidx/collection/IntObjectMap;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SemanticsOwner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutNode f10327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EmptySemanticsModifier f10328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IntObjectMap f10329c;
    public final MutableObjectList d = new MutableObjectList(2);

    public SemanticsOwner(LayoutNode layoutNode, EmptySemanticsModifier emptySemanticsModifier, IntObjectMap<LayoutNode> intObjectMap) {
        this.f10327a = layoutNode;
        this.f10328b = emptySemanticsModifier;
        this.f10329c = intObjectMap;
    }

    public final SemanticsNode a() {
        return new SemanticsNode(this.f10328b, false, this.f10327a, new SemanticsConfiguration());
    }
}
