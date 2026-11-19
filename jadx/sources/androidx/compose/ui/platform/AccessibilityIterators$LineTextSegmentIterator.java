package androidx.compose.ui.platform;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator", "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AccessibilityIterators$LineTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static AccessibilityIterators$LineTextSegmentIterator f9849e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextLayoutResult f9851c;
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ResolvedTextDirection f9850f = ResolvedTextDirection.Rtl;
    public static final ResolvedTextDirection g = ResolvedTextDirection.Ltr;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator$Companion;", "", "Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;", "lineInstance", "Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "DirectionStart", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "DirectionEnd", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AccessibilityIterators$LineTextSegmentIterator(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i2) {
        int iD;
        if (d().length() <= 0 || i2 >= d().length()) {
            return null;
        }
        TextLayoutResult textLayoutResult = this.f9851c;
        ResolvedTextDirection resolvedTextDirection = f9850f;
        if (i2 < 0) {
            if (textLayoutResult == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            iD = textLayoutResult.f10553b.d(0);
        } else {
            if (textLayoutResult == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            int iD2 = textLayoutResult.f10553b.d(i2);
            iD = e(iD2, resolvedTextDirection) == i2 ? iD2 : iD2 + 1;
        }
        TextLayoutResult textLayoutResult2 = this.f9851c;
        if (textLayoutResult2 == null) {
            Intrinsics.h("layoutResult");
            throw null;
        }
        if (iD >= textLayoutResult2.f10553b.f10465f) {
            return null;
        }
        return c(e(iD, resolvedTextDirection), e(iD, g) + 1);
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i2) {
        int iD;
        if (d().length() <= 0 || i2 <= 0) {
            return null;
        }
        int length = d().length();
        TextLayoutResult textLayoutResult = this.f9851c;
        ResolvedTextDirection resolvedTextDirection = g;
        if (i2 > length) {
            if (textLayoutResult == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            iD = textLayoutResult.f10553b.d(d().length());
        } else {
            if (textLayoutResult == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            int iD2 = textLayoutResult.f10553b.d(i2);
            iD = e(iD2, resolvedTextDirection) + 1 == i2 ? iD2 : iD2 - 1;
        }
        if (iD < 0) {
            return null;
        }
        return c(e(iD, f9850f), e(iD, resolvedTextDirection) + 1);
    }

    public final int e(int i2, ResolvedTextDirection resolvedTextDirection) {
        TextLayoutResult textLayoutResult = this.f9851c;
        if (textLayoutResult == null) {
            Intrinsics.h("layoutResult");
            throw null;
        }
        int iH = textLayoutResult.h(i2);
        TextLayoutResult textLayoutResult2 = this.f9851c;
        if (textLayoutResult2 == null) {
            Intrinsics.h("layoutResult");
            throw null;
        }
        ResolvedTextDirection resolvedTextDirectionI = textLayoutResult2.i(iH);
        TextLayoutResult textLayoutResult3 = this.f9851c;
        if (resolvedTextDirection != resolvedTextDirectionI) {
            if (textLayoutResult3 != null) {
                return textLayoutResult3.h(i2);
            }
            Intrinsics.h("layoutResult");
            throw null;
        }
        if (textLayoutResult3 != null) {
            return textLayoutResult3.f10553b.c(i2, false) - 1;
        }
        Intrinsics.h("layoutResult");
        throw null;
    }
}
