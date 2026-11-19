package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyLayoutSemanticsModifierNode f5588c;

    public /* synthetic */ f(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i2) {
        this.f5587b = i2;
        this.f5588c = lazyLayoutSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f5587b;
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = this.f5588c;
        switch (i2) {
            case 0:
                return Float.valueOf(lazyLayoutSemanticsModifierNode.q.f());
            case 1:
                return Float.valueOf(lazyLayoutSemanticsModifierNode.q.b());
            default:
                return Float.valueOf(lazyLayoutSemanticsModifierNode.q.e() - lazyLayoutSemanticsModifierNode.q.a());
        }
    }
}
