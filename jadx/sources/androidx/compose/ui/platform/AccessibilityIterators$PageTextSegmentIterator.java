package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"androidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator", "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AccessibilityIterators$PageTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static AccessibilityIterators$PageTextSegmentIterator f9853f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextLayoutResult f9855c;
    public SemanticsNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f9852e = new Companion(null);
    public static final ResolvedTextDirection g = ResolvedTextDirection.Rtl;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ResolvedTextDirection f9854h = ResolvedTextDirection.Ltr;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;", "", "Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;", "pageInstance", "Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "DirectionStart", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", "DirectionEnd", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AccessibilityIterators$PageTextSegmentIterator(DefaultConstructorMarker defaultConstructorMarker) {
        new Rect();
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i2) {
        int iE;
        if (d().length() <= 0 || i2 >= d().length()) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.d;
            if (semanticsNode == null) {
                Intrinsics.h("node");
                throw null;
            }
            androidx.compose.ui.geometry.Rect rectG = semanticsNode.g();
            int iRound = Math.round(rectG.d - rectG.f8812b);
            if (i2 <= 0) {
                i2 = 0;
            }
            TextLayoutResult textLayoutResult = this.f9855c;
            if (textLayoutResult == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            int iD = textLayoutResult.f10553b.d(i2);
            TextLayoutResult textLayoutResult2 = this.f9855c;
            if (textLayoutResult2 == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            float f2 = textLayoutResult2.f10553b.f(iD) + iRound;
            TextLayoutResult textLayoutResult3 = this.f9855c;
            if (textLayoutResult3 == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            if (textLayoutResult3 == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            MultiParagraph multiParagraph = textLayoutResult3.f10553b;
            float f3 = multiParagraph.f(multiParagraph.f10465f - 1);
            TextLayoutResult textLayoutResult4 = this.f9855c;
            if (f2 < f3) {
                if (textLayoutResult4 == null) {
                    Intrinsics.h("layoutResult");
                    throw null;
                }
                iE = textLayoutResult4.f10553b.e(f2);
            } else {
                if (textLayoutResult4 == null) {
                    Intrinsics.h("layoutResult");
                    throw null;
                }
                iE = textLayoutResult4.f10553b.f10465f;
            }
            return c(i2, e(iE - 1, f9854h) + 1);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i2) {
        int iE;
        if (d().length() <= 0 || i2 <= 0) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.d;
            if (semanticsNode == null) {
                Intrinsics.h("node");
                throw null;
            }
            androidx.compose.ui.geometry.Rect rectG = semanticsNode.g();
            int iRound = Math.round(rectG.d - rectG.f8812b);
            int length = d().length();
            if (length <= i2) {
                i2 = length;
            }
            TextLayoutResult textLayoutResult = this.f9855c;
            if (textLayoutResult == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            int iD = textLayoutResult.f10553b.d(i2);
            TextLayoutResult textLayoutResult2 = this.f9855c;
            if (textLayoutResult2 == null) {
                Intrinsics.h("layoutResult");
                throw null;
            }
            float f2 = textLayoutResult2.f10553b.f(iD) - iRound;
            if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                TextLayoutResult textLayoutResult3 = this.f9855c;
                if (textLayoutResult3 == null) {
                    Intrinsics.h("layoutResult");
                    throw null;
                }
                iE = textLayoutResult3.f10553b.e(f2);
            } else {
                iE = 0;
            }
            if (i2 == d().length() && iE < iD) {
                iE++;
            }
            return c(e(iE, g), i2);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public final int e(int i2, ResolvedTextDirection resolvedTextDirection) {
        TextLayoutResult textLayoutResult = this.f9855c;
        if (textLayoutResult == null) {
            Intrinsics.h("layoutResult");
            throw null;
        }
        int iH = textLayoutResult.h(i2);
        TextLayoutResult textLayoutResult2 = this.f9855c;
        if (textLayoutResult2 == null) {
            Intrinsics.h("layoutResult");
            throw null;
        }
        ResolvedTextDirection resolvedTextDirectionI = textLayoutResult2.i(iH);
        TextLayoutResult textLayoutResult3 = this.f9855c;
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
