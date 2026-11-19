package androidx.compose.foundation.text.selection;

import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.ViewConfiguration;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/selection/ClicksCounter;", "", "Landroidx/compose/ui/platform/ViewConfiguration;", "viewConfiguration", "<init>", "(Landroidx/compose/ui/platform/ViewConfiguration;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ClicksCounter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewConfiguration f6341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PointerInputChange f6343c;

    public ClicksCounter(ViewConfiguration viewConfiguration) {
        this.f6341a = viewConfiguration;
    }
}
