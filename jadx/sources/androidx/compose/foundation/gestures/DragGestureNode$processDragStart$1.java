package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.DragInteraction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", l = {616, 619}, m = "processDragStart", v = 1)
final class DragGestureNode$processDragStart$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DragEvent.DragStarted f4541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DragInteraction.Start f4542c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DragGestureNode f4543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4544f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureNode$processDragStart$1(DragGestureNode dragGestureNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f4543e = dragGestureNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f4544f |= Integer.MIN_VALUE;
        return DragGestureNode.l2(this.f4543e, null, this);
    }
}
