package androidx.constraintlayout.compose;

import androidx.compose.ui.layout.Measurable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"constraintlayout-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class ConstraintLayoutTagKt {
    public static final String a(Measurable measurable) {
        Object objE = measurable.e();
        ConstraintLayoutTagParentData constraintLayoutTagParentData = objE instanceof ConstraintLayoutTagParentData ? (ConstraintLayoutTagParentData) objE : null;
        if (constraintLayoutTagParentData != null) {
            return constraintLayoutTagParentData.a();
        }
        return null;
    }
}
