package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\rB1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/text/selection/SingleSelectionLayout;", "Landroidx/compose/foundation/text/selection/SelectionLayout;", "", "isStartHandle", "", "startSlot", "endSlot", "Landroidx/compose/foundation/text/selection/Selection;", "previousSelection", "Landroidx/compose/foundation/text/selection/SelectableInfo;", "info", "<init>", "(ZIILandroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SingleSelectionLayout implements SelectionLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6446c;
    public final Selection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SelectableInfo f6447e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/text/selection/SingleSelectionLayout$Companion;", "", "", "DEFAULT_SLOT", "I", "", "DEFAULT_SELECTABLE_ID", "J", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public SingleSelectionLayout(boolean z, int i2, int i3, Selection selection, SelectableInfo selectableInfo) {
        this.f6444a = z;
        this.f6445b = i2;
        this.f6446c = i3;
        this.d = selection;
        this.f6447e = selectableInfo;
    }

    public final CrossStatus a() {
        int i2 = this.f6445b;
        int i3 = this.f6446c;
        if (i2 < i3) {
            return CrossStatus.NOT_CROSSED;
        }
        if (i2 > i3) {
            return CrossStatus.CROSSED;
        }
        SelectableInfo selectableInfo = this.f6447e;
        int i4 = selectableInfo.f6388c;
        int i5 = selectableInfo.d;
        if (i4 < i5) {
            return CrossStatus.NOT_CROSSED;
        }
        return i4 > i5 ? CrossStatus.CROSSED : CrossStatus.COLLAPSED;
    }

    public final String toString() {
        return "SingleSelectionLayout(isStartHandle=" + this.f6444a + ", crossed=" + a() + ", info=\n\t" + this.f6447e + ')';
    }
}
