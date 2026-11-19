package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/text/TextLayoutResultProxy;", "", "Landroidx/compose/ui/text/TextLayoutResult;", "value", "Landroidx/compose/ui/layout/LayoutCoordinates;", "innerTextFieldCoordinates", "decorationBoxCoordinates", "<init>", "(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLayoutResultProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextLayoutResult f6011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LayoutCoordinates f6012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutCoordinates f6013c;

    public /* synthetic */ TextLayoutResultProxy(TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(textLayoutResult, (i2 & 2) != 0 ? null : layoutCoordinates, (i2 & 4) != 0 ? null : layoutCoordinates2);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    public final long a(long j2) {
        Rect rectL;
        LayoutCoordinates layoutCoordinates = this.f6012b;
        if (layoutCoordinates == null) {
            Rect.f8809e.getClass();
            rectL = Rect.f8810f;
        } else {
            if (layoutCoordinates.c()) {
                LayoutCoordinates layoutCoordinates2 = this.f6013c;
                rectL = layoutCoordinates2 != null ? layoutCoordinates2.L(layoutCoordinates, true) : null;
            } else {
                Rect.f8809e.getClass();
                rectL = Rect.f8810f;
            }
            if (rectL == null) {
                Rect.f8809e.getClass();
                rectL = Rect.f8810f;
            }
        }
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        float fIntBitsToFloat2 = rectL.f8811a;
        if (fIntBitsToFloat >= fIntBitsToFloat2) {
            float fIntBitsToFloat3 = Float.intBitsToFloat(i2);
            fIntBitsToFloat2 = rectL.f8813c;
            if (fIntBitsToFloat3 <= fIntBitsToFloat2) {
                fIntBitsToFloat2 = Float.intBitsToFloat(i2);
            }
        }
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat4 = Float.intBitsToFloat(i3);
        float fIntBitsToFloat5 = rectL.f8812b;
        if (fIntBitsToFloat4 >= fIntBitsToFloat5) {
            float fIntBitsToFloat6 = Float.intBitsToFloat(i3);
            fIntBitsToFloat5 = rectL.d;
            if (fIntBitsToFloat6 <= fIntBitsToFloat5) {
                fIntBitsToFloat5 = Float.intBitsToFloat(i3);
            }
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat5)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public final int b(long j2, boolean z) {
        if (z) {
            j2 = a(j2);
        }
        return this.f6011a.f10553b.g(d(j2));
    }

    public final boolean c(long j2) {
        long jD = d(a(j2));
        float fIntBitsToFloat = Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & jD));
        TextLayoutResult textLayoutResult = this.f6011a;
        int iE = textLayoutResult.f10553b.e(fIntBitsToFloat);
        int i2 = (int) (jD >> 32);
        return Float.intBitsToFloat(i2) >= textLayoutResult.f(iE) && Float.intBitsToFloat(i2) <= textLayoutResult.g(iE);
    }

    public final long d(long j2) {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2 = this.f6012b;
        if (layoutCoordinates2 != null) {
            if (!layoutCoordinates2.c()) {
                layoutCoordinates2 = null;
            }
            if (layoutCoordinates2 != null && (layoutCoordinates = this.f6013c) != null) {
                LayoutCoordinates layoutCoordinates3 = layoutCoordinates.c() ? layoutCoordinates : null;
                if (layoutCoordinates3 != null) {
                    return layoutCoordinates2.y(layoutCoordinates3, j2);
                }
            }
        }
        return j2;
    }

    public final long e(long j2) {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2 = this.f6012b;
        if (layoutCoordinates2 != null) {
            if (!layoutCoordinates2.c()) {
                layoutCoordinates2 = null;
            }
            if (layoutCoordinates2 != null && (layoutCoordinates = this.f6013c) != null) {
                LayoutCoordinates layoutCoordinates3 = layoutCoordinates.c() ? layoutCoordinates : null;
                if (layoutCoordinates3 != null) {
                    return layoutCoordinates3.y(layoutCoordinates2, j2);
                }
            }
        }
        return j2;
    }

    public TextLayoutResultProxy(TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        this.f6011a = textLayoutResult;
        this.f6012b = layoutCoordinates;
        this.f6013c = layoutCoordinates2;
    }
}
