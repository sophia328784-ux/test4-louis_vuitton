package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectableInfo;", "", "", "selectableId", "", "slot", "rawStartHandleOffset", "rawEndHandleOffset", "rawPreviousHandleOffset", "Landroidx/compose/ui/text/TextLayoutResult;", "textLayoutResult", "<init>", "(JIIIILandroidx/compose/ui/text/TextLayoutResult;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SelectableInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6388c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextLayoutResult f6390f;

    public SelectableInfo(long j2, int i2, int i3, int i4, int i5, TextLayoutResult textLayoutResult) {
        this.f6386a = j2;
        this.f6387b = i2;
        this.f6388c = i3;
        this.d = i4;
        this.f6389e = i5;
        this.f6390f = textLayoutResult;
    }

    public final Selection.AnchorInfo a(int i2) {
        return new Selection.AnchorInfo(SelectionHelpersKt.a(this.f6390f, i2), i2, this.f6386a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionInfo(id=");
        sb.append(this.f6386a);
        sb.append(", range=(");
        int i2 = this.f6388c;
        sb.append(i2);
        sb.append('-');
        TextLayoutResult textLayoutResult = this.f6390f;
        sb.append(SelectionHelpersKt.a(textLayoutResult, i2));
        sb.append(',');
        int i3 = this.d;
        sb.append(i3);
        sb.append('-');
        sb.append(SelectionHelpersKt.a(textLayoutResult, i3));
        sb.append("), prevOffset=");
        return tr.k(sb, this.f6389e, ')');
    }
}
