package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import defpackage.j70;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "currentRawLine", "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;", "anchorSnappedToWordBoundary", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionAdjustmentKt {
    public static final Selection a(SelectionLayout selectionLayout, BoundaryFunction boundaryFunction) {
        SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
        SelectableInfo selectableInfo = singleSelectionLayout.f6447e;
        boolean z = singleSelectionLayout.a() == CrossStatus.CROSSED;
        return new Selection(c(selectableInfo, z, true, singleSelectionLayout.f6445b, boundaryFunction), c(selectableInfo, z, false, singleSelectionLayout.f6446c, boundaryFunction), z);
    }

    public static final Selection.AnchorInfo b(final SelectionLayout selectionLayout, final SelectableInfo selectableInfo, Selection.AnchorInfo anchorInfo) {
        CrossStatus crossStatus;
        SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
        boolean z = singleSelectionLayout.f6444a;
        final int i2 = z ? selectableInfo.f6388c : selectableInfo.d;
        int i3 = z ? singleSelectionLayout.f6445b : singleSelectionLayout.f6446c;
        int i4 = selectableInfo.f6387b;
        int i5 = selectableInfo.f6388c;
        int i6 = selectableInfo.d;
        TextLayoutResult textLayoutResult = selectableInfo.f6390f;
        int i7 = selectableInfo.f6389e;
        if (i3 != i4) {
            return selectableInfo.a(i2);
        }
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new j70(selectableInfo, i2, 2));
        final int i8 = z ? i6 : i5;
        Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: androidx.compose.foundation.text.selection.b
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int iIntValue = ((Number) lazyA.getF71699b()).intValue();
                SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                boolean z2 = singleSelectionLayout2.f6444a;
                boolean z3 = singleSelectionLayout2.a() == CrossStatus.CROSSED;
                SelectableInfo selectableInfo2 = selectableInfo;
                TextLayoutResult textLayoutResult2 = selectableInfo2.f6390f;
                int i9 = i2;
                long jK = textLayoutResult2.k(i9);
                TextLayoutResult textLayoutResult3 = selectableInfo2.f6390f;
                TextRange.Companion companion = TextRange.f10564b;
                int iH = (int) (jK >> 32);
                MultiParagraph multiParagraph = textLayoutResult3.f10553b;
                int iD = multiParagraph.d(iH);
                int i10 = multiParagraph.f10465f;
                if (iD != iIntValue) {
                    iH = iIntValue >= i10 ? textLayoutResult3.h(i10 - 1) : textLayoutResult3.h(iIntValue);
                }
                int iC = (int) (jK & BodyPartID.bodyIdMax);
                if (multiParagraph.d(iC) != iIntValue) {
                    MultiParagraph multiParagraph2 = textLayoutResult3.f10553b;
                    iC = iIntValue >= i10 ? multiParagraph2.c(i10 - 1, false) : multiParagraph2.c(iIntValue, false);
                }
                int i11 = i8;
                if (iH == i11) {
                    return selectableInfo2.a(iC);
                }
                if (iC == i11) {
                    return selectableInfo2.a(iH);
                }
                if (!(z2 ^ z3) ? i9 >= iH : i9 > iC) {
                    iH = iC;
                }
                return selectableInfo2.a(iH);
            }
        });
        if (selectableInfo.f6386a != anchorInfo.f6396c) {
            return (Selection.AnchorInfo) lazyA2.getF71699b();
        }
        if (i2 == i7) {
            return anchorInfo;
        }
        if (((Number) lazyA.getF71699b()).intValue() != textLayoutResult.f10553b.d(i7)) {
            return (Selection.AnchorInfo) lazyA2.getF71699b();
        }
        int i9 = anchorInfo.f6395b;
        long jK = textLayoutResult.k(i9);
        if (i7 != -1) {
            if (i2 != i7) {
                if (i5 < i6) {
                    crossStatus = CrossStatus.NOT_CROSSED;
                } else {
                    crossStatus = i5 > i6 ? CrossStatus.CROSSED : CrossStatus.COLLAPSED;
                }
                if (!((crossStatus == CrossStatus.CROSSED) ^ z)) {
                }
            }
            return selectableInfo.a(i2);
        }
        TextRange.Companion companion = TextRange.f10564b;
        return (i9 == ((int) (jK >> 32)) || i9 == ((int) (BodyPartID.bodyIdMax & jK))) ? (Selection.AnchorInfo) lazyA2.getF71699b() : selectableInfo.a(i2);
    }

    public static final Selection.AnchorInfo c(SelectableInfo selectableInfo, boolean z, boolean z2, int i2, BoundaryFunction boundaryFunction) {
        long j2;
        int i3 = z2 ? selectableInfo.f6388c : selectableInfo.d;
        if (i2 != selectableInfo.f6387b) {
            return selectableInfo.a(i3);
        }
        long jA = boundaryFunction.a(selectableInfo, i3);
        if (z ^ z2) {
            TextRange.Companion companion = TextRange.f10564b;
            j2 = jA >> 32;
        } else {
            TextRange.Companion companion2 = TextRange.f10564b;
            j2 = BodyPartID.bodyIdMax & jA;
        }
        return selectableInfo.a((int) j2);
    }

    public static final Selection.AnchorInfo d(Selection.AnchorInfo anchorInfo, SelectableInfo selectableInfo, int i2) {
        return new Selection.AnchorInfo(selectableInfo.f6390f.a(i2), i2, anchorInfo.f6396c);
    }
}
