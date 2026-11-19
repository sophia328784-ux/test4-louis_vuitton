package androidx.compose.foundation.text.selection;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SelectionAdjustment$Companion$Word$1$1 implements BoundaryFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SelectionAdjustment$Companion$Word$1$1 f6401a = new SelectionAdjustment$Companion$Word$1$1();

    @Override // androidx.compose.foundation.text.selection.BoundaryFunction
    public final long a(SelectableInfo selectableInfo, int i2) {
        return selectableInfo.f6390f.k(i2);
    }
}
