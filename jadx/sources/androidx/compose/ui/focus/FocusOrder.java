package androidx.compose.ui.focus;

import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/focus/FocusOrder;", "", "Landroidx/compose/ui/focus/FocusProperties;", "focusProperties", "<init>", "(Landroidx/compose/ui/focus/FocusProperties;)V", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusOrder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FocusProperties f8745a;

    public FocusOrder() {
        this(new FocusPropertiesImpl());
    }

    public FocusOrder(FocusProperties focusProperties) {
        this.f8745a = focusProperties;
    }
}
