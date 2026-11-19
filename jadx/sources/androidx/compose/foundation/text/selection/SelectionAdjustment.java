package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpers_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bà\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionAdjustment;", "", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface SelectionAdjustment {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f6397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f6398b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f6399c;
        public static final a d;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.selection.a] */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.text.selection.a] */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.text.selection.a] */
        /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.foundation.text.selection.a] */
        static {
            final int i2 = 0;
            f6397a = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo anchorInfoB;
                    Selection.AnchorInfo anchorInfoB2;
                    boolean z;
                    Selection selectionA;
                    int i3 = i2;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.f6401a;
                    boolean z2 = false;
                    switch (i3) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.f6447e;
                            return new Selection(selectableInfo.a(selectableInfo.f6388c), selectableInfo.a(selectableInfo.d), singleSelectionLayout.a() == CrossStatus.CROSSED);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case 2:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.f6400a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.d;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo = selection.f6392b;
                            Selection.AnchorInfo anchorInfo2 = selection.f6391a;
                            boolean z3 = singleSelectionLayout2.f6444a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.f6447e;
                            if (z3) {
                                anchorInfoB2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo2);
                                anchorInfoB = anchorInfo;
                                anchorInfo = anchorInfo2;
                                anchorInfo2 = anchorInfoB2;
                            } else {
                                anchorInfoB = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo);
                                anchorInfoB2 = anchorInfoB;
                            }
                            if (Intrinsics.c(anchorInfoB2, anchorInfo)) {
                                return selection;
                            }
                            Selection selection2 = new Selection(anchorInfo2, anchorInfoB, singleSelectionLayout2.a() == CrossStatus.CROSSED || (singleSelectionLayout2.a() == CrossStatus.COLLAPSED && anchorInfo2.f6395b > anchorInfoB.f6395b));
                            Selection.AnchorInfo anchorInfo3 = selection2.f6391a;
                            long j2 = anchorInfo3.f6396c;
                            Selection.AnchorInfo anchorInfo4 = selection2.f6392b;
                            if (j2 == anchorInfo4.f6396c) {
                                z = anchorInfo3.f6395b == anchorInfo4.f6395b;
                            } else {
                                boolean z4 = selection2.f6393c;
                                if ((z4 ? anchorInfo3 : anchorInfo4).f6395b == 0) {
                                    if (((SingleSelectionLayout) selectionLayout).f6447e.f6390f.f10552a.f10543a.f10420c.length() == (z4 ? anchorInfo4 : anchorInfo3).f6395b) {
                                        new Ref$BooleanRef().f71917b = true;
                                    }
                                }
                            }
                            if (z) {
                                SingleSelectionLayout singleSelectionLayout3 = (SingleSelectionLayout) selectionLayout;
                                Selection selection3 = singleSelectionLayout3.d;
                                SelectableInfo selectableInfo3 = singleSelectionLayout3.f6447e;
                                boolean z5 = singleSelectionLayout3.f6444a;
                                String str = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                if (selection3 != null && str.length() != 0) {
                                    String str2 = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                    int i4 = selectableInfo3.f6388c;
                                    int length = str2.length();
                                    if (i4 == 0) {
                                        int iA = StringHelpers_androidKt.a(0, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iA), null, true, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iA), false, 1);
                                    } else if (i4 == length) {
                                        int iB = StringHelpers_androidKt.b(length, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB), null, false, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB), true, 1);
                                    } else {
                                        if (selection3 != null && selection3.f6393c) {
                                            z2 = true;
                                        }
                                        int iB2 = z5 ^ z2 ? StringHelpers_androidKt.b(i4, str2) : StringHelpers_androidKt.a(i4, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB2), null, z2, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB2), z2, 1);
                                    }
                                    return selectionA;
                                }
                            }
                            return selection2;
                    }
                }
            };
            final int i3 = 1;
            f6398b = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo anchorInfoB;
                    Selection.AnchorInfo anchorInfoB2;
                    boolean z;
                    Selection selectionA;
                    int i4 = i3;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.f6401a;
                    boolean z2 = false;
                    switch (i4) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.f6447e;
                            return new Selection(selectableInfo.a(selectableInfo.f6388c), selectableInfo.a(selectableInfo.d), singleSelectionLayout.a() == CrossStatus.CROSSED);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case 2:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.f6400a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.d;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo = selection.f6392b;
                            Selection.AnchorInfo anchorInfo2 = selection.f6391a;
                            boolean z3 = singleSelectionLayout2.f6444a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.f6447e;
                            if (z3) {
                                anchorInfoB2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo2);
                                anchorInfoB = anchorInfo;
                                anchorInfo = anchorInfo2;
                                anchorInfo2 = anchorInfoB2;
                            } else {
                                anchorInfoB = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo);
                                anchorInfoB2 = anchorInfoB;
                            }
                            if (Intrinsics.c(anchorInfoB2, anchorInfo)) {
                                return selection;
                            }
                            Selection selection2 = new Selection(anchorInfo2, anchorInfoB, singleSelectionLayout2.a() == CrossStatus.CROSSED || (singleSelectionLayout2.a() == CrossStatus.COLLAPSED && anchorInfo2.f6395b > anchorInfoB.f6395b));
                            Selection.AnchorInfo anchorInfo3 = selection2.f6391a;
                            long j2 = anchorInfo3.f6396c;
                            Selection.AnchorInfo anchorInfo4 = selection2.f6392b;
                            if (j2 == anchorInfo4.f6396c) {
                                z = anchorInfo3.f6395b == anchorInfo4.f6395b;
                            } else {
                                boolean z4 = selection2.f6393c;
                                if ((z4 ? anchorInfo3 : anchorInfo4).f6395b == 0) {
                                    if (((SingleSelectionLayout) selectionLayout).f6447e.f6390f.f10552a.f10543a.f10420c.length() == (z4 ? anchorInfo4 : anchorInfo3).f6395b) {
                                        new Ref$BooleanRef().f71917b = true;
                                    }
                                }
                            }
                            if (z) {
                                SingleSelectionLayout singleSelectionLayout3 = (SingleSelectionLayout) selectionLayout;
                                Selection selection3 = singleSelectionLayout3.d;
                                SelectableInfo selectableInfo3 = singleSelectionLayout3.f6447e;
                                boolean z5 = singleSelectionLayout3.f6444a;
                                String str = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                if (selection3 != null && str.length() != 0) {
                                    String str2 = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                    int i5 = selectableInfo3.f6388c;
                                    int length = str2.length();
                                    if (i5 == 0) {
                                        int iA = StringHelpers_androidKt.a(0, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iA), null, true, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iA), false, 1);
                                    } else if (i5 == length) {
                                        int iB = StringHelpers_androidKt.b(length, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB), null, false, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB), true, 1);
                                    } else {
                                        if (selection3 != null && selection3.f6393c) {
                                            z2 = true;
                                        }
                                        int iB2 = z5 ^ z2 ? StringHelpers_androidKt.b(i5, str2) : StringHelpers_androidKt.a(i5, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB2), null, z2, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB2), z2, 1);
                                    }
                                    return selectionA;
                                }
                            }
                            return selection2;
                    }
                }
            };
            final int i4 = 2;
            f6399c = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo anchorInfoB;
                    Selection.AnchorInfo anchorInfoB2;
                    boolean z;
                    Selection selectionA;
                    int i5 = i4;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.f6401a;
                    boolean z2 = false;
                    switch (i5) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.f6447e;
                            return new Selection(selectableInfo.a(selectableInfo.f6388c), selectableInfo.a(selectableInfo.d), singleSelectionLayout.a() == CrossStatus.CROSSED);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case 2:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.f6400a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.d;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo = selection.f6392b;
                            Selection.AnchorInfo anchorInfo2 = selection.f6391a;
                            boolean z3 = singleSelectionLayout2.f6444a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.f6447e;
                            if (z3) {
                                anchorInfoB2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo2);
                                anchorInfoB = anchorInfo;
                                anchorInfo = anchorInfo2;
                                anchorInfo2 = anchorInfoB2;
                            } else {
                                anchorInfoB = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo);
                                anchorInfoB2 = anchorInfoB;
                            }
                            if (Intrinsics.c(anchorInfoB2, anchorInfo)) {
                                return selection;
                            }
                            Selection selection2 = new Selection(anchorInfo2, anchorInfoB, singleSelectionLayout2.a() == CrossStatus.CROSSED || (singleSelectionLayout2.a() == CrossStatus.COLLAPSED && anchorInfo2.f6395b > anchorInfoB.f6395b));
                            Selection.AnchorInfo anchorInfo3 = selection2.f6391a;
                            long j2 = anchorInfo3.f6396c;
                            Selection.AnchorInfo anchorInfo4 = selection2.f6392b;
                            if (j2 == anchorInfo4.f6396c) {
                                z = anchorInfo3.f6395b == anchorInfo4.f6395b;
                            } else {
                                boolean z4 = selection2.f6393c;
                                if ((z4 ? anchorInfo3 : anchorInfo4).f6395b == 0) {
                                    if (((SingleSelectionLayout) selectionLayout).f6447e.f6390f.f10552a.f10543a.f10420c.length() == (z4 ? anchorInfo4 : anchorInfo3).f6395b) {
                                        new Ref$BooleanRef().f71917b = true;
                                    }
                                }
                            }
                            if (z) {
                                SingleSelectionLayout singleSelectionLayout3 = (SingleSelectionLayout) selectionLayout;
                                Selection selection3 = singleSelectionLayout3.d;
                                SelectableInfo selectableInfo3 = singleSelectionLayout3.f6447e;
                                boolean z5 = singleSelectionLayout3.f6444a;
                                String str = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                if (selection3 != null && str.length() != 0) {
                                    String str2 = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                    int i6 = selectableInfo3.f6388c;
                                    int length = str2.length();
                                    if (i6 == 0) {
                                        int iA = StringHelpers_androidKt.a(0, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iA), null, true, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iA), false, 1);
                                    } else if (i6 == length) {
                                        int iB = StringHelpers_androidKt.b(length, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB), null, false, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB), true, 1);
                                    } else {
                                        if (selection3 != null && selection3.f6393c) {
                                            z2 = true;
                                        }
                                        int iB2 = z5 ^ z2 ? StringHelpers_androidKt.b(i6, str2) : StringHelpers_androidKt.a(i6, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB2), null, z2, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB2), z2, 1);
                                    }
                                    return selectionA;
                                }
                            }
                            return selection2;
                    }
                }
            };
            final int i5 = 3;
            d = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.a
                @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
                public final Selection a(SelectionLayout selectionLayout) {
                    Selection.AnchorInfo anchorInfoB;
                    Selection.AnchorInfo anchorInfoB2;
                    boolean z;
                    Selection selectionA;
                    int i6 = i5;
                    SelectionAdjustment$Companion$Word$1$1 selectionAdjustment$Companion$Word$1$1 = SelectionAdjustment$Companion$Word$1$1.f6401a;
                    boolean z2 = false;
                    switch (i6) {
                        case 0:
                            SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                            SelectableInfo selectableInfo = singleSelectionLayout.f6447e;
                            return new Selection(selectableInfo.a(selectableInfo.f6388c), selectableInfo.a(selectableInfo.d), singleSelectionLayout.a() == CrossStatus.CROSSED);
                        case 1:
                            return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                        case 2:
                            return SelectionAdjustmentKt.a(selectionLayout, SelectionAdjustment$Companion$Paragraph$1$1.f6400a);
                        default:
                            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                            Selection selection = singleSelectionLayout2.d;
                            if (selection == null) {
                                return SelectionAdjustmentKt.a(selectionLayout, selectionAdjustment$Companion$Word$1$1);
                            }
                            Selection.AnchorInfo anchorInfo = selection.f6392b;
                            Selection.AnchorInfo anchorInfo2 = selection.f6391a;
                            boolean z3 = singleSelectionLayout2.f6444a;
                            SelectableInfo selectableInfo2 = singleSelectionLayout2.f6447e;
                            if (z3) {
                                anchorInfoB2 = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo2);
                                anchorInfoB = anchorInfo;
                                anchorInfo = anchorInfo2;
                                anchorInfo2 = anchorInfoB2;
                            } else {
                                anchorInfoB = SelectionAdjustmentKt.b(selectionLayout, selectableInfo2, anchorInfo);
                                anchorInfoB2 = anchorInfoB;
                            }
                            if (Intrinsics.c(anchorInfoB2, anchorInfo)) {
                                return selection;
                            }
                            Selection selection2 = new Selection(anchorInfo2, anchorInfoB, singleSelectionLayout2.a() == CrossStatus.CROSSED || (singleSelectionLayout2.a() == CrossStatus.COLLAPSED && anchorInfo2.f6395b > anchorInfoB.f6395b));
                            Selection.AnchorInfo anchorInfo3 = selection2.f6391a;
                            long j2 = anchorInfo3.f6396c;
                            Selection.AnchorInfo anchorInfo4 = selection2.f6392b;
                            if (j2 == anchorInfo4.f6396c) {
                                z = anchorInfo3.f6395b == anchorInfo4.f6395b;
                            } else {
                                boolean z4 = selection2.f6393c;
                                if ((z4 ? anchorInfo3 : anchorInfo4).f6395b == 0) {
                                    if (((SingleSelectionLayout) selectionLayout).f6447e.f6390f.f10552a.f10543a.f10420c.length() == (z4 ? anchorInfo4 : anchorInfo3).f6395b) {
                                        new Ref$BooleanRef().f71917b = true;
                                    }
                                }
                            }
                            if (z) {
                                SingleSelectionLayout singleSelectionLayout3 = (SingleSelectionLayout) selectionLayout;
                                Selection selection3 = singleSelectionLayout3.d;
                                SelectableInfo selectableInfo3 = singleSelectionLayout3.f6447e;
                                boolean z5 = singleSelectionLayout3.f6444a;
                                String str = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                if (selection3 != null && str.length() != 0) {
                                    String str2 = selectableInfo3.f6390f.f10552a.f10543a.f10420c;
                                    int i7 = selectableInfo3.f6388c;
                                    int length = str2.length();
                                    if (i7 == 0) {
                                        int iA = StringHelpers_androidKt.a(0, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iA), null, true, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iA), false, 1);
                                    } else if (i7 == length) {
                                        int iB = StringHelpers_androidKt.b(length, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB), null, false, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB), true, 1);
                                    } else {
                                        if (selection3 != null && selection3.f6393c) {
                                            z2 = true;
                                        }
                                        int iB2 = z5 ^ z2 ? StringHelpers_androidKt.b(i7, str2) : StringHelpers_androidKt.a(i7, str2);
                                        selectionA = z5 ? Selection.a(selection2, SelectionAdjustmentKt.d(anchorInfo3, selectableInfo3, iB2), null, z2, 2) : Selection.a(selection2, null, SelectionAdjustmentKt.d(anchorInfo4, selectableInfo3, iB2), z2, 1);
                                    }
                                    return selectionA;
                                }
                            }
                            return selection2;
                    }
                }
            };
        }
    }

    Selection a(SelectionLayout selectionLayout);
}
