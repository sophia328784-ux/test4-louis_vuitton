package androidx.compose.ui.node;

import androidx.compose.ui.layout.Measurable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/AlignmentLinesOwner;", "Landroidx/compose/ui/layout/Measurable;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface AlignmentLinesOwner extends Measurable {
    void F();

    InnerNodeCoordinator J();

    /* JADX INFO: renamed from: P */
    int getF9757j();

    void e0(Function1 function1);

    void i0();

    AlignmentLines j();

    void requestLayout();

    AlignmentLinesOwner z();
}
