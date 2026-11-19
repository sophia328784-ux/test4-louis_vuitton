package androidx.compose.ui.text.android;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/android/HorizontalPositionCache;", "", "Landroidx/compose/ui/text/android/TextLayout;", "layout", "<init>", "(Landroidx/compose/ui/text/android/TextLayout;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class HorizontalPositionCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextLayout f10578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10579b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f10580c;

    public HorizontalPositionCache(TextLayout textLayout) {
        this.f10578a = textLayout;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001b  */
    public final float a(int i2, boolean z, boolean z2, boolean z3) {
        boolean z4;
        int i3 = 1;
        TextLayout textLayout = this.f10578a;
        if (z) {
            int iA = LayoutCompat_androidKt.a(textLayout.g, i2, z);
            int lineStart = textLayout.g.getLineStart(iA);
            int iG = textLayout.g(iA);
            if (i2 == lineStart || i2 == iG) {
                z4 = true;
            } else {
                z4 = false;
            }
        } else {
            z4 = false;
        }
        int i4 = i2 * 4;
        if (!z3) {
            i3 = z4 ? 2 : 3;
        } else if (z4) {
            i3 = 0;
        }
        int i5 = i4 + i3;
        if (this.f10579b == i5) {
            return this.f10580c;
        }
        float fI = z3 ? textLayout.i(i2, z) : textLayout.j(i2, z);
        if (z2) {
            this.f10579b = i5;
            this.f10580c = fI;
        }
        return fI;
    }
}
