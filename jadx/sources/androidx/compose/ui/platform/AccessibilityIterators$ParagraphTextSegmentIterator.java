package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator", "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AccessibilityIterators$ParagraphTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f9856c = new Companion(null);
    public static AccessibilityIterators$ParagraphTextSegmentIterator d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator$Companion;", "", "Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;", "instance", "Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AccessibilityIterators$ParagraphTextSegmentIterator(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i2) {
        int length = d().length();
        if (length <= 0 || i2 >= length) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < length && d().charAt(i2) == '\n' && (d().charAt(i2) == '\n' || (i2 != 0 && d().charAt(i2 - 1) != '\n'))) {
            i2++;
        }
        if (i2 >= length) {
            return null;
        }
        int i3 = i2 + 1;
        while (i3 < length && !e(i3)) {
            i3++;
        }
        return c(i2, i3);
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i2) {
        int length = d().length();
        if (length <= 0 || i2 <= 0) {
            return null;
        }
        if (i2 > length) {
            i2 = length;
        }
        while (i2 > 0 && d().charAt(i2 - 1) == '\n' && !e(i2)) {
            i2--;
        }
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        while (i3 > 0 && (d().charAt(i3) == '\n' || (i3 != 0 && d().charAt(i3 - 1) != '\n'))) {
            i3--;
        }
        return c(i3, i2);
    }

    public final boolean e(int i2) {
        if (i2 <= 0 || d().charAt(i2 - 1) == '\n') {
            return false;
        }
        return i2 == d().length() || d().charAt(i2) == '\n';
    }
}
