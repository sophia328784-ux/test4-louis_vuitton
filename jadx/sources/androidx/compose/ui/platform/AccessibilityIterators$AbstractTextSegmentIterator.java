package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"androidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator", "Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AccessibilityIterators$AbstractTextSegmentIterator implements AccessibilityIterators$TextSegmentIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f9845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f9846b = new int[2];

    public final int[] c(int i2, int i3) {
        if (i2 < 0 || i3 < 0 || i2 == i3) {
            return null;
        }
        int[] iArr = this.f9846b;
        iArr[0] = i2;
        iArr[1] = i3;
        return iArr;
    }

    public final String d() {
        String str = this.f9845a;
        if (str != null) {
            return str;
        }
        Intrinsics.h("text");
        throw null;
    }
}
