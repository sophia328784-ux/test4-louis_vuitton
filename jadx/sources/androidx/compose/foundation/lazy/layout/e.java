package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import defpackage.fc;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyLayoutSemanticsModifierNode f5586c;

    public /* synthetic */ e(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i2) {
        this.f5585b = i2;
        this.f5586c = lazyLayoutSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f5585b;
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = this.f5586c;
        switch (i2) {
            case 0:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutSemanticsModifierNode.p.mo47invoke();
                int iB = lazyLayoutItemProvider.b();
                int i3 = 0;
                while (i3 < iB) {
                    if (lazyLayoutItemProvider.d(i3).equals(obj)) {
                        return Integer.valueOf(i3);
                    }
                    i3++;
                }
                i3 = -1;
                return Integer.valueOf(i3);
            default:
                int iIntValue = ((Integer) obj).intValue();
                LazyLayoutItemProvider lazyLayoutItemProvider2 = (LazyLayoutItemProvider) lazyLayoutSemanticsModifierNode.p.mo47invoke();
                if (iIntValue < 0 || iIntValue >= lazyLayoutItemProvider2.b()) {
                    StringBuilder sbQ = fc.q(iIntValue, "Can't scroll to index ", ", it is out of bounds [0, ");
                    sbQ.append(lazyLayoutItemProvider2.b());
                    sbQ.append(')');
                    InlineClassHelperKt.a(sbQ.toString());
                }
                BuildersKt.c(lazyLayoutSemanticsModifierNode.V1(), null, null, new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(lazyLayoutSemanticsModifierNode, iIntValue, null), 3);
                return Boolean.TRUE;
        }
    }
}
