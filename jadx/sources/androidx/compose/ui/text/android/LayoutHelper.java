package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.TextUtils;
import defpackage.d21;
import defpackage.tr;
import java.text.Bidi;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/android/LayoutHelper;", "", "Landroid/text/Layout;", "layout", "<init>", "(Landroid/text/Layout;)V", "BidiRun", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Layout f10582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f10583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f10584c;
    public final boolean[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public char[] f10585e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;", "", "", "start", "end", "", "isRtl", "<init>", "(IIZ)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class BidiRun {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10587b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10588c;

        public BidiRun(int i2, int i3, boolean z) {
            this.f10586a = i2;
            this.f10587b = i3;
            this.f10588c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BidiRun)) {
                return false;
            }
            BidiRun bidiRun = (BidiRun) obj;
            return this.f10586a == bidiRun.f10586a && this.f10587b == bidiRun.f10587b && this.f10588c == bidiRun.f10588c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f10588c) + tr.b(this.f10587b, Integer.hashCode(this.f10586a) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BidiRun(start=");
            sb.append(this.f10586a);
            sb.append(", end=");
            sb.append(this.f10587b);
            sb.append(", isRtl=");
            return d21.q(sb, this.f10588c, ')');
        }
    }

    public LayoutHelper(Layout layout) {
        this.f10582a = layout;
        ArrayList arrayList = new ArrayList();
        int length = 0;
        do {
            int iU = StringsKt.u(this.f10582a.getText(), '\n', length, 4);
            length = iU < 0 ? this.f10582a.getText().length() : iU + 1;
            arrayList.add(Integer.valueOf(length));
        } while (length < this.f10582a.getText().length());
        this.f10583b = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(null);
        }
        this.f10584c = arrayList2;
        this.d = new boolean[this.f10583b.size()];
        this.f10583b.size();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
    public final Bidi a(int i2) {
        Bidi bidi;
        boolean[] zArr = this.d;
        boolean z = zArr[i2];
        ArrayList arrayList = this.f10584c;
        if (z) {
            return (Bidi) arrayList.get(i2);
        }
        ArrayList arrayList2 = this.f10583b;
        int iIntValue = i2 == 0 ? 0 : ((Number) arrayList2.get(i2 - 1)).intValue();
        int iIntValue2 = ((Number) arrayList2.get(i2)).intValue();
        int i3 = iIntValue2 - iIntValue;
        char[] cArr = this.f10585e;
        if (cArr == null || cArr.length < i3) {
            cArr = new char[i3];
        }
        char[] cArr2 = cArr;
        Layout layout = this.f10582a;
        TextUtils.getChars(layout.getText(), iIntValue, iIntValue2, cArr2, 0);
        if (Bidi.requiresBidi(cArr2, 0, i3)) {
            bidi = new Bidi(cArr2, 0, null, 0, i3, layout.getParagraphDirection(layout.getLineForOffset(e(i2))) == -1 ? 1 : 0);
            if (bidi.getRunCount() == 1) {
                bidi = null;
            }
        } else {
            bidi = null;
        }
        arrayList.set(i2, bidi);
        zArr[i2] = true;
        if (bidi != null) {
            char[] cArr3 = this.f10585e;
            cArr2 = cArr2 == cArr3 ? null : cArr3;
        }
        this.f10585e = cArr2;
        return bidi;
    }

    public final float b(int i2, boolean z) {
        Layout layout = this.f10582a;
        int lineEnd = layout.getLineEnd(layout.getLineForOffset(i2));
        if (i2 > lineEnd) {
            i2 = lineEnd;
        }
        return z ? layout.getPrimaryHorizontal(i2) : layout.getSecondaryHorizontal(i2);
    }

    public final float c(int i2, boolean z, boolean z2) {
        int i3;
        int i4;
        if (!z2) {
            return b(i2, z);
        }
        Layout layout = this.f10582a;
        int iA = LayoutCompat_androidKt.a(layout, i2, z2);
        int lineStart = layout.getLineStart(iA);
        int lineEnd = layout.getLineEnd(iA);
        if (i2 != lineStart && i2 != lineEnd) {
            return b(i2, z);
        }
        if (i2 == 0 || i2 == layout.getText().length()) {
            return b(i2, z);
        }
        int iD = d(i2, z2);
        boolean z3 = layout.getParagraphDirection(layout.getLineForOffset(e(iD))) == -1;
        int iF = f(lineEnd, lineStart);
        int iE = e(iD);
        int i5 = lineStart - iE;
        int i6 = iF - iE;
        Bidi bidiA = a(iD);
        Bidi bidiCreateLineBidi = bidiA != null ? bidiA.createLineBidi(i5, i6) : null;
        if (bidiCreateLineBidi == null || bidiCreateLineBidi.getRunCount() == 1) {
            boolean zIsRtlCharAt = layout.isRtlCharAt(lineStart);
            if (z || z3 == zIsRtlCharAt) {
                z3 = !z3;
            }
            return i2 == lineStart ? z3 : !z3 ? layout.getLineLeft(iA) : layout.getLineRight(iA);
        }
        int runCount = bidiCreateLineBidi.getRunCount();
        BidiRun[] bidiRunArr = new BidiRun[runCount];
        for (int i7 = 0; i7 < runCount; i7++) {
            bidiRunArr[i7] = new BidiRun(bidiCreateLineBidi.getRunStart(i7) + lineStart, bidiCreateLineBidi.getRunLimit(i7) + lineStart, bidiCreateLineBidi.getRunLevel(i7) % 2 == 1);
        }
        int runCount2 = bidiCreateLineBidi.getRunCount();
        byte[] bArr = new byte[runCount2];
        for (int i8 = 0; i8 < runCount2; i8++) {
            bArr[i8] = (byte) bidiCreateLineBidi.getRunLevel(i8);
        }
        Bidi.reorderVisually(bArr, 0, bidiRunArr, 0, runCount);
        if (i2 == lineStart) {
            int i9 = 0;
            while (true) {
                if (i9 >= runCount) {
                    i4 = -1;
                    break;
                }
                if (bidiRunArr[i9].f10586a == i2) {
                    i4 = i9;
                    break;
                }
                i9++;
            }
            boolean z4 = (z || z3 == bidiRunArr[i4].f10588c) ? !z3 : z3;
            if (i4 == 0 && z4) {
                return layout.getLineLeft(iA);
            }
            if (i4 != runCount - 1 || z4) {
                return z4 ? layout.getPrimaryHorizontal(bidiRunArr[i4 - 1].f10586a) : layout.getPrimaryHorizontal(bidiRunArr[i4 + 1].f10586a);
            }
            return layout.getLineRight(iA);
        }
        int iF2 = i2 > iF ? f(i2, lineStart) : i2;
        int i10 = 0;
        while (true) {
            if (i10 >= runCount) {
                i3 = -1;
                break;
            }
            if (bidiRunArr[i10].f10587b == iF2) {
                i3 = i10;
                break;
            }
            i10++;
        }
        boolean z5 = (z || z3 == bidiRunArr[i3].f10588c) ? z3 : !z3;
        if (i3 == 0 && z5) {
            return layout.getLineLeft(iA);
        }
        if (i3 != runCount - 1 || z5) {
            return z5 ? layout.getPrimaryHorizontal(bidiRunArr[i3 - 1].f10587b) : layout.getPrimaryHorizontal(bidiRunArr[i3 + 1].f10587b);
        }
        return layout.getLineRight(iA);
    }

    public final int d(int i2, boolean z) {
        Integer numValueOf = Integer.valueOf(i2);
        ArrayList arrayList = this.f10583b;
        int iQ = CollectionsKt.q(arrayList, numValueOf);
        int i3 = iQ < 0 ? -(iQ + 1) : iQ + 1;
        if (z && i3 > 0) {
            int i4 = i3 - 1;
            if (i2 == ((Number) arrayList.get(i4)).intValue()) {
                return i4;
            }
        }
        return i3;
    }

    public final int e(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return ((Number) this.f10583b.get(i2 - 1)).intValue();
    }

    public final int f(int i2, int i3) {
        while (i2 > i3) {
            char cCharAt = this.f10582a.getText().charAt(i2 - 1);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != 5760 && ((Intrinsics.d(cCharAt, 8192) < 0 || Intrinsics.d(cCharAt, 8202) > 0 || cCharAt == 8199) && cCharAt != 8287 && cCharAt != 12288)) {
                return i2;
            }
            i2--;
        }
        return i2;
    }
}
