package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BackwardsCompatNodeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function1 f9634a = BackwardsCompatNodeKt$onDrawCacheReadsChanged$1.f9636c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Function1 f9635b = BackwardsCompatNodeKt$updateModifierLocalConsumer$1.f9637c;

    public static final boolean a(BackwardsCompatNode backwardsCompatNode) {
        TailModifierNode tailModifierNode = DelegatableNodeKt.f(backwardsCompatNode).H.f9773e;
        tailModifierNode.getClass();
        return tailModifierNode.p;
    }
}
