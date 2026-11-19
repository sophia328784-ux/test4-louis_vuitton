package androidx.compose.ui.layout;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/MeasureResult;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface MeasureResult {
    int getHeight();

    int getWidth();

    Map j();

    void k();

    default Function1 l() {
        return null;
    }
}
