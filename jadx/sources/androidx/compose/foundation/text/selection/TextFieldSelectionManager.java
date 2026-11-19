package androidx.compose.foundation.text.selection;

import android.content.ClipDescription;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.ValidatingOffsetMappingKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGesturesModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequesterImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphKt;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import defpackage.md;
import defpackage.oq;
import defpackage.z21;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "", "Landroidx/compose/foundation/text/UndoManager;", "undoManager", "<init>", "(Landroidx/compose/foundation/text/UndoManager;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextFieldSelectionManager {
    public final TextFieldSelectionManager$touchSelectionObserver$1 A;
    public final TextFieldSelectionManager$mouseSelectionObserver$1 B;
    public boolean C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UndoManager f6454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OffsetMapping f6455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function1 f6456c;
    public LegacyTextFieldState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f6457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public VisualTransformation f6458f;
    public Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Clipboard f6459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CoroutineScope f6460i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PlatformSelectionBehaviors f6461j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextToolbar f6462k;
    public HapticFeedback l;
    public FocusRequester m;
    public final MutableState n;
    public final MutableState o;
    public long p;
    public TextRange q;
    public long r;
    public final MutableState s;
    public final MutableState t;
    public int u;
    public TextFieldValue v;
    public SelectionLayout w;
    public TextRange x;
    public final MutableState y;
    public final ToolbarRequesterImpl z;

    /* JADX WARN: Type inference failed for: r9v14, types: [androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1] */
    /* JADX WARN: Type inference failed for: r9v15, types: [androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1] */
    public TextFieldSelectionManager(UndoManager undoManager) {
        this.f6454a = undoManager;
        this.f6455b = ValidatingOffsetMappingKt.f6039a;
        this.f6456c = new z21(7);
        this.f6457e = SnapshotStateKt.g(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null));
        this.f6458f = VisualTransformation.Companion.f10865a;
        Boolean bool = Boolean.TRUE;
        this.n = SnapshotStateKt.g(bool);
        this.o = SnapshotStateKt.g(bool);
        Offset.f8806b.getClass();
        this.p = 0L;
        this.r = 0L;
        this.s = SnapshotStateKt.g(null);
        this.t = SnapshotStateKt.g(null);
        this.u = -1;
        this.v = new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null);
        this.y = SnapshotStateKt.g(Boolean.FALSE);
        this.z = new ToolbarRequesterImpl();
        this.A = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextRange f6486b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f6485a = true;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public SelectionAdjustment f6487c = SelectionAdjustment.Companion.f6397a;

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void a() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void b(long j2, SelectionAdjustment selectionAdjustment) {
                long j3;
                TextLayoutResultProxy textLayoutResultProxyD;
                TextLayoutResultProxy textLayoutResultProxyD2;
                TextFieldSelectionManager textFieldSelectionManager = this.d;
                MutableState mutableState = textFieldSelectionManager.s;
                if (textFieldSelectionManager.l() && ((Handle) ((SnapshotMutableStateImpl) mutableState).getF10755b()) == null) {
                    ((SnapshotMutableStateImpl) mutableState).setValue(Handle.SelectionEnd);
                    textFieldSelectionManager.u = -1;
                    this.f6485a = true;
                    this.f6487c = selectionAdjustment;
                    textFieldSelectionManager.p();
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                    if (legacyTextFieldState == null || (textLayoutResultProxyD2 = legacyTextFieldState.d()) == null || !textLayoutResultProxyD2.c(j2)) {
                        j3 = j2;
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                        if (legacyTextFieldState2 != null && (textLayoutResultProxyD = legacyTextFieldState2.d()) != null) {
                            int iA = textFieldSelectionManager.f6455b.a(textLayoutResultProxyD.b(j3, true));
                            TextFieldValue textFieldValueE = TextFieldSelectionManager.e(textFieldSelectionManager.o().f10840a, TextRangeKt.a(iA, iA));
                            textFieldSelectionManager.h(false);
                            HapticFeedback hapticFeedback = textFieldSelectionManager.l;
                            if (hapticFeedback != null) {
                                HapticFeedbackType.f9193b.getClass();
                                int i2 = PlatformHapticFeedbackType.f9196a;
                                hapticFeedback.a(0);
                            }
                            textFieldSelectionManager.f6456c.invoke(textFieldValueE);
                            textFieldSelectionManager.x = new TextRange(textFieldValueE.f10841b);
                        }
                        this.f6485a = false;
                    } else {
                        if (textFieldSelectionManager.o().f10840a.f10420c.length() == 0) {
                            return;
                        }
                        textFieldSelectionManager.h(false);
                        TextFieldValue textFieldValueO = textFieldSelectionManager.o();
                        TextRange.f10564b.getClass();
                        TextFieldValue textFieldValueA = TextFieldValue.a(textFieldValueO, null, TextRange.f10565c, 5);
                        SelectionAdjustment selectionAdjustment2 = this.f6487c;
                        HapticFeedbackType.f9193b.getClass();
                        int i3 = PlatformHapticFeedbackType.f9196a;
                        long jC = TextFieldSelectionManager.c(textFieldSelectionManager, textFieldValueA, j2, true, false, selectionAdjustment2, true, new HapticFeedbackType(0));
                        j3 = j2;
                        textFieldSelectionManager.q = new TextRange(jC);
                        this.f6486b = new TextRange(jC);
                    }
                    textFieldSelectionManager.s(HandleState.None);
                    textFieldSelectionManager.p = j3;
                    ((SnapshotMutableStateImpl) textFieldSelectionManager.t).setValue(new Offset(j3));
                    Offset.f8806b.getClass();
                    textFieldSelectionManager.r = 0L;
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void c() {
            }

            /* JADX WARN: Code duplicated, block: B:21:0x009c  */
            /* JADX WARN: Code duplicated, block: B:23:0x00a0  */
            /* JADX WARN: Code duplicated, block: B:24:0x00a7  */
            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void d(long j2) {
                TextLayoutResultProxy textLayoutResultProxyD;
                TextRange textRange;
                int iB;
                long jC;
                TextFieldSelectionManager textFieldSelectionManager = this.d;
                if (!textFieldSelectionManager.l() || textFieldSelectionManager.o().f10840a.f10420c.length() == 0) {
                    return;
                }
                textFieldSelectionManager.r = Offset.f(textFieldSelectionManager.r, j2);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState != null && (textLayoutResultProxyD = legacyTextFieldState.d()) != null) {
                    ((SnapshotMutableStateImpl) textFieldSelectionManager.t).setValue(new Offset(Offset.f(textFieldSelectionManager.p, textFieldSelectionManager.r)));
                    if (textFieldSelectionManager.q == null) {
                        Offset offsetJ = textFieldSelectionManager.j();
                        offsetJ.getClass();
                        if (textLayoutResultProxyD.c(offsetJ.f8808a)) {
                            textRange = textFieldSelectionManager.q;
                            if (textRange != null) {
                                iB = (int) (textRange.f10566a >> 32);
                            } else {
                                iB = textLayoutResultProxyD.b(textFieldSelectionManager.p, false);
                            }
                            Offset offsetJ2 = textFieldSelectionManager.j();
                            offsetJ2.getClass();
                            int iB2 = textLayoutResultProxyD.b(offsetJ2.f8808a, false);
                            if (textFieldSelectionManager.q != null && iB == iB2) {
                                return;
                            }
                            TextFieldValue textFieldValueO = textFieldSelectionManager.o();
                            Offset offsetJ3 = textFieldSelectionManager.j();
                            offsetJ3.getClass();
                            long j3 = offsetJ3.f8808a;
                            SelectionAdjustment selectionAdjustment = this.f6487c;
                            HapticFeedbackType.f9193b.getClass();
                            jC = TextFieldSelectionManager.c(textFieldSelectionManager, textFieldValueO, j3, false, false, selectionAdjustment, true, new HapticFeedbackType(PlatformHapticFeedbackType.f9202i));
                        } else {
                            int iA = textFieldSelectionManager.f6455b.a(textLayoutResultProxyD.b(textFieldSelectionManager.p, true));
                            OffsetMapping offsetMapping = textFieldSelectionManager.f6455b;
                            Offset offsetJ4 = textFieldSelectionManager.j();
                            offsetJ4.getClass();
                            a aVar = iA == offsetMapping.a(textLayoutResultProxyD.b(offsetJ4.f8808a, true)) ? SelectionAdjustment.Companion.f6397a : SelectionAdjustment.Companion.f6398b;
                            TextFieldValue textFieldValueO2 = textFieldSelectionManager.o();
                            Offset offsetJ5 = textFieldSelectionManager.j();
                            offsetJ5.getClass();
                            long j4 = offsetJ5.f8808a;
                            HapticFeedbackType.f9193b.getClass();
                            jC = TextFieldSelectionManager.c(textFieldSelectionManager, textFieldValueO2, j4, false, false, aVar, true, new HapticFeedbackType(PlatformHapticFeedbackType.f9202i));
                        }
                    } else {
                        textRange = textFieldSelectionManager.q;
                        if (textRange != null) {
                            iB = (int) (textRange.f10566a >> 32);
                        } else {
                            iB = textLayoutResultProxyD.b(textFieldSelectionManager.p, false);
                        }
                        Offset offsetJ6 = textFieldSelectionManager.j();
                        offsetJ6.getClass();
                        int iB3 = textLayoutResultProxyD.b(offsetJ6.f8808a, false);
                        if (textFieldSelectionManager.q != null) {
                        }
                        TextFieldValue textFieldValueO3 = textFieldSelectionManager.o();
                        Offset offsetJ7 = textFieldSelectionManager.j();
                        offsetJ7.getClass();
                        long j5 = offsetJ7.f8808a;
                        SelectionAdjustment selectionAdjustment2 = this.f6487c;
                        HapticFeedbackType.f9193b.getClass();
                        jC = TextFieldSelectionManager.c(textFieldSelectionManager, textFieldValueO3, j5, false, false, selectionAdjustment2, true, new HapticFeedbackType(PlatformHapticFeedbackType.f9202i));
                    }
                    this.f6486b = new TextRange(jC);
                    if (!TextRange.a(jC, textFieldSelectionManager.q)) {
                        this.f6485a = false;
                    }
                }
                textFieldSelectionManager.w(false);
            }

            public final void e() {
                TextFieldSelectionManager textFieldSelectionManager = this.d;
                ((SnapshotMutableStateImpl) textFieldSelectionManager.s).setValue(null);
                ((SnapshotMutableStateImpl) textFieldSelectionManager.t).setValue(null);
                this.f6487c = SelectionAdjustment.Companion.f6397a;
                textFieldSelectionManager.w(true);
                TextRange textRange = this.f6486b;
                boolean zC = TextRange.c(textRange != null ? textRange.f10566a : textFieldSelectionManager.o().f10841b);
                textFieldSelectionManager.s(zC ? HandleState.Cursor : HandleState.Selection);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState != null) {
                    ((SnapshotMutableStateImpl) legacyTextFieldState.m).setValue(Boolean.valueOf(!zC && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)));
                }
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                if (legacyTextFieldState2 != null) {
                    ((SnapshotMutableStateImpl) legacyTextFieldState2.n).setValue(Boolean.valueOf(!zC && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, false)));
                }
                LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
                if (legacyTextFieldState3 != null) {
                    ((SnapshotMutableStateImpl) legacyTextFieldState3.o).setValue(Boolean.valueOf(zC && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)));
                }
                if (this.f6485a) {
                    TextFieldSelectionManager.b(textFieldSelectionManager, textFieldSelectionManager.q);
                }
                textFieldSelectionManager.q = null;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onCancel() {
                e();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onStop() {
                e();
            }
        };
        this.B = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f6480a = true;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextRange f6481b;

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean a(long j2, SelectionAdjustment selectionAdjustment, int i2) {
                LegacyTextFieldState legacyTextFieldState;
                TextFieldSelectionManager textFieldSelectionManager = this.f6482c;
                if (!textFieldSelectionManager.l() || textFieldSelectionManager.o().f10840a.f10420c.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.d) == null || legacyTextFieldState.d() == null) {
                    return false;
                }
                FocusRequester focusRequester = textFieldSelectionManager.m;
                if (focusRequester != null) {
                    FocusRequester.a(focusRequester);
                }
                textFieldSelectionManager.p = j2;
                textFieldSelectionManager.u = -1;
                textFieldSelectionManager.h(true);
                long jF = f(textFieldSelectionManager.o(), textFieldSelectionManager.p, true, selectionAdjustment);
                if (i2 >= 2) {
                    this.f6480a = true;
                    this.f6481b = new TextRange(jF);
                }
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final void b() {
                if (this.f6480a) {
                    TextFieldSelectionManager.b(this.f6482c, this.f6481b);
                }
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean c(long j2) {
                LegacyTextFieldState legacyTextFieldState;
                TextFieldSelectionManager textFieldSelectionManager = this.f6482c;
                if (!textFieldSelectionManager.l() || textFieldSelectionManager.o().f10840a.f10420c.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.d) == null || legacyTextFieldState.d() == null) {
                    return false;
                }
                f(textFieldSelectionManager.o(), j2, false, SelectionAdjustment.Companion.f6397a);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean d(long j2, SelectionAdjustment selectionAdjustment) {
                LegacyTextFieldState legacyTextFieldState;
                TextFieldSelectionManager textFieldSelectionManager = this.f6482c;
                if (!textFieldSelectionManager.l() || textFieldSelectionManager.o().f10840a.f10420c.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.d) == null || legacyTextFieldState.d() == null) {
                    return false;
                }
                f(textFieldSelectionManager.o(), j2, false, selectionAdjustment);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean e(long j2) {
                TextFieldSelectionManager textFieldSelectionManager = this.f6482c;
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState == null || legacyTextFieldState.d() == null || !textFieldSelectionManager.l()) {
                    return false;
                }
                textFieldSelectionManager.u = -1;
                FocusRequester focusRequester = textFieldSelectionManager.m;
                if (focusRequester != null) {
                    FocusRequester.a(focusRequester);
                }
                f(textFieldSelectionManager.o(), j2, false, SelectionAdjustment.Companion.f6397a);
                return true;
            }

            public final long f(TextFieldValue textFieldValue, long j2, boolean z, SelectionAdjustment selectionAdjustment) {
                TextFieldSelectionManager textFieldSelectionManager = this.f6482c;
                long jC = TextFieldSelectionManager.c(textFieldSelectionManager, textFieldValue, j2, z, false, selectionAdjustment, false, null);
                if (!TextRange.a(jC, this.f6481b)) {
                    this.f6480a = false;
                }
                textFieldSelectionManager.s(TextRange.c(jC) ? HandleState.Cursor : HandleState.Selection);
                return jC;
            }
        };
    }

    public static final Pair a(TextFieldSelectionManager textFieldSelectionManager) {
        String str;
        TextRange textRange;
        AnnotatedString annotatedStringN = textFieldSelectionManager.n();
        if (annotatedStringN == null || (str = annotatedStringN.f10420c) == null || (textRange = textFieldSelectionManager.x) == null) {
            return null;
        }
        long j2 = textRange.f10566a;
        return new Pair(str, new TextRange(TextRangeKt.a(textFieldSelectionManager.f6455b.b((int) (j2 >> 32)), textFieldSelectionManager.f6455b.b((int) (j2 & BodyPartID.bodyIdMax)))));
    }

    public static final void b(TextFieldSelectionManager textFieldSelectionManager, TextRange textRange) {
        AnnotatedString annotatedStringN;
        String str;
        CoroutineScope coroutineScope;
        if (textRange == null) {
            return;
        }
        long j2 = textRange.f10566a;
        PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.f6461j;
        if (platformSelectionBehaviors == null || (annotatedStringN = textFieldSelectionManager.n()) == null || (str = annotatedStringN.f10420c) == null) {
            return;
        }
        OffsetMapping offsetMapping = textFieldSelectionManager.f6455b;
        long jA = TextRangeKt.a(offsetMapping.b((int) (j2 >> 32)), offsetMapping.b((int) (j2 & BodyPartID.bodyIdMax)));
        if (str.length() <= 0 || TextRange.c(jA) || (coroutineScope = textFieldSelectionManager.f6460i) == null) {
            return;
        }
        BuildersKt.c(coroutineScope, null, null, new TextFieldSelectionManager$maybeSuggestSelection$1(platformSelectionBehaviors, str, jA, textRange, textFieldSelectionManager, offsetMapping, null), 3);
    }

    public static final long c(TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, long j2, boolean z, boolean z2, SelectionAdjustment selectionAdjustment, boolean z3, HapticFeedbackType hapticFeedbackType) {
        TextLayoutResultProxy textLayoutResultProxyD;
        long j3;
        Selection selection;
        boolean z4;
        boolean z5;
        HapticFeedback hapticFeedback;
        int i2;
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
        if (legacyTextFieldState == null || (textLayoutResultProxyD = legacyTextFieldState.d()) == null) {
            TextRange.f10564b.getClass();
            return TextRange.f10565c;
        }
        OffsetMapping offsetMapping = textFieldSelectionManager.f6455b;
        long j4 = textFieldValue.f10841b;
        AnnotatedString annotatedString = textFieldValue.f10840a;
        TextRange.Companion companion = TextRange.f10564b;
        long jA = TextRangeKt.a(offsetMapping.b((int) (j4 >> 32)), textFieldSelectionManager.f6455b.b((int) (j4 & BodyPartID.bodyIdMax)));
        int iB = textLayoutResultProxyD.b(j2, false);
        int i3 = (z2 || z) ? iB : (int) (jA >> 32);
        int i4 = (!z2 || z) ? iB : (int) (jA & BodyPartID.bodyIdMax);
        SelectionLayout selectionLayout = textFieldSelectionManager.w;
        int i5 = (z || selectionLayout == null || (i2 = textFieldSelectionManager.u) == -1) ? -1 : i2;
        TextLayoutResult textLayoutResult = textLayoutResultProxyD.f6011a;
        if (z) {
            j3 = 4294967295L;
            selection = null;
        } else {
            j3 = 4294967295L;
            int i6 = (int) (jA >> 32);
            Selection.AnchorInfo anchorInfo = new Selection.AnchorInfo(SelectionHelpersKt.a(textLayoutResult, i6), i6, 1L);
            int i7 = (int) (jA & BodyPartID.bodyIdMax);
            selection = new Selection(anchorInfo, new Selection.AnchorInfo(SelectionHelpersKt.a(textLayoutResult, i7), i7, 1L), TextRange.g(jA));
        }
        SingleSelectionLayout singleSelectionLayout = new SingleSelectionLayout(z2, 1, 1, selection, new SelectableInfo(1L, 1, i3, i4, i5, textLayoutResult));
        if (singleSelectionLayout.d != null && selectionLayout != null) {
            SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
            if (singleSelectionLayout.f6445b == singleSelectionLayout2.f6445b && singleSelectionLayout.f6446c == singleSelectionLayout2.f6446c && singleSelectionLayout.f6444a == singleSelectionLayout2.f6444a) {
                SelectableInfo selectableInfo = singleSelectionLayout2.f6447e;
                SelectableInfo selectableInfo2 = singleSelectionLayout.f6447e;
                if (selectableInfo2.f6386a == selectableInfo.f6386a && selectableInfo2.f6388c == selectableInfo.f6388c && selectableInfo2.d == selectableInfo.d) {
                    return j4;
                }
            }
        }
        textFieldSelectionManager.w = singleSelectionLayout;
        textFieldSelectionManager.u = iB;
        Selection selectionA = selectionAdjustment.a(singleSelectionLayout);
        long jA2 = TextRangeKt.a(textFieldSelectionManager.f6455b.a(selectionA.f6391a.f6395b), textFieldSelectionManager.f6455b.a(selectionA.f6392b.f6395b));
        if (TextRange.b(jA2, j4)) {
            return j4;
        }
        boolean z6 = TextRange.g(jA2) != TextRange.g(j4) && TextRange.b(TextRangeKt.a((int) (jA2 & j3), (int) (jA2 >> 32)), j4);
        boolean z7 = TextRange.c(jA2) && TextRange.c(j4);
        if (z3 && annotatedString.f10420c.length() > 0 && !z6 && !z7 && hapticFeedbackType != null && (hapticFeedback = textFieldSelectionManager.l) != null) {
            hapticFeedback.a(hapticFeedbackType.f9194a);
        }
        textFieldSelectionManager.f6456c.invoke(e(annotatedString, jA2));
        textFieldSelectionManager.x = new TextRange(jA2);
        if (!z3) {
            textFieldSelectionManager.w(!TextRange.c(jA2));
        }
        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
        if (legacyTextFieldState2 != null) {
            ((SnapshotMutableStateImpl) legacyTextFieldState2.q).setValue(Boolean.valueOf(z3));
        }
        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
        if (legacyTextFieldState3 != null) {
            ((SnapshotMutableStateImpl) legacyTextFieldState3.m).setValue(Boolean.valueOf(!TextRange.c(jA2) && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)));
        }
        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.d;
        if (legacyTextFieldState4 != null) {
            if (TextRange.c(jA2)) {
                z4 = false;
            } else {
                z4 = false;
                if (TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, false)) {
                    z5 = true;
                }
                ((SnapshotMutableStateImpl) legacyTextFieldState4.n).setValue(Boolean.valueOf(z5));
            }
            z5 = z4;
            ((SnapshotMutableStateImpl) legacyTextFieldState4.n).setValue(Boolean.valueOf(z5));
        } else {
            z4 = false;
        }
        LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.d;
        if (legacyTextFieldState5 != null) {
            ((SnapshotMutableStateImpl) legacyTextFieldState5.o).setValue(Boolean.valueOf((TextRange.c(jA2) && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)) ? true : z4));
        }
        return jA2;
    }

    public static TextFieldValue e(AnnotatedString annotatedString, long j2) {
        return new TextFieldValue(annotatedString, j2, (TextRange) null, 4, (DefaultConstructorMarker) null);
    }

    public final Job d(boolean z) {
        CoroutineScope coroutineScope = this.f6460i;
        if (coroutineScope != null) {
            return BuildersKt.c(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$copy$1(this, z, null), 1);
        }
        return null;
    }

    public final void f() {
        CoroutineScope coroutineScope = this.f6460i;
        if (coroutineScope != null) {
            BuildersKt.c(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$cut$1(this, null), 1);
        }
    }

    public final void g(Offset offset) {
        if (!TextRange.c(o().f10841b)) {
            LegacyTextFieldState legacyTextFieldState = this.d;
            TextLayoutResultProxy textLayoutResultProxyD = legacyTextFieldState != null ? legacyTextFieldState.d() : null;
            int iE = (offset == null || textLayoutResultProxyD == null) ? TextRange.e(o().f10841b) : this.f6455b.a(textLayoutResultProxyD.b(offset.f8808a, true));
            TextFieldValue textFieldValueA = TextFieldValue.a(o(), null, TextRangeKt.a(iE, iE), 5);
            this.f6456c.invoke(textFieldValueA);
            this.x = new TextRange(textFieldValueA.f10841b);
        }
        s((offset == null || o().f10840a.f10420c.length() <= 0) ? HandleState.None : HandleState.Cursor);
        w(false);
    }

    public final void h(boolean z) {
        FocusRequester focusRequester;
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null && !legacyTextFieldState.b() && (focusRequester = this.m) != null) {
            FocusRequester.a(focusRequester);
        }
        this.v = o();
        w(z);
        s(HandleState.Selection);
    }

    public final Modifier i() {
        if (!l()) {
            return Modifier.Companion.f8607b;
        }
        return TextContextMenuToolbarHandlerModifierKt.a(TextContextMenuGesturesModifierKt.a(new TextFieldSelectionManager$contextMenuAreaModifier$1(this, null)), this.z, new TextFieldSelectionManager$contextMenuAreaModifier$2(this, null), new TextFieldSelectionManager$contextMenuAreaModifier$3(this, null), new oq(this, 2));
    }

    public final Offset j() {
        return (Offset) ((SnapshotMutableStateImpl) this.t).getF10755b();
    }

    public final boolean k() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.n).getF10755b()).booleanValue();
    }

    public final boolean l() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.o).getF10755b()).booleanValue();
    }

    public final long m(boolean z) {
        TextLayoutResultProxy textLayoutResultProxyD;
        TextLayoutResult textLayoutResult;
        long j2;
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState == null || (textLayoutResultProxyD = legacyTextFieldState.d()) == null || (textLayoutResult = textLayoutResultProxyD.f6011a) == null) {
            Offset.f8806b.getClass();
            return Offset.d;
        }
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        AnnotatedString annotatedStringN = n();
        if (annotatedStringN == null) {
            Offset.f8806b.getClass();
            return Offset.d;
        }
        if (!Intrinsics.c(annotatedStringN.f10420c, textLayoutResult.f10552a.f10543a.f10420c)) {
            Offset.f8806b.getClass();
            return Offset.d;
        }
        TextFieldValue textFieldValueO = o();
        if (z) {
            long j3 = textFieldValueO.f10841b;
            TextRange.Companion companion = TextRange.f10564b;
            j2 = j3 >> 32;
        } else {
            long j4 = textFieldValueO.f10841b;
            TextRange.Companion companion2 = TextRange.f10564b;
            j2 = j4 & BodyPartID.bodyIdMax;
        }
        int iB = this.f6455b.b((int) j2);
        boolean zG = TextRange.g(o().f10841b);
        long j5 = textLayoutResult.f10554c;
        int iD = multiParagraph.d(iB);
        if (iD >= multiParagraph.f10465f) {
            Offset.f8806b.getClass();
            return Offset.d;
        }
        boolean z2 = textLayoutResult.a(((!z || zG) && (z || !zG)) ? Math.max(iB + (-1), 0) : iB) == textLayoutResult.i(iB);
        multiParagraph.l(iB);
        int length = multiParagraph.f10461a.f10467a.f10420c.length();
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(iB == length ? CollectionsKt.F(arrayList) : MultiParagraphKt.a(iB, arrayList));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(RangesKt.c(multiParagraph.b(iD), Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (j5 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(RangesKt.c(paragraphInfo.f10471a.n(paragraphInfo.d(iB), z2), Call.Parameters.DEFAULT_CAMERA_ZOOM, (int) (j5 >> 32)))) << 32);
        Offset.Companion companion3 = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public final AnnotatedString n() {
        TextDelegate textDelegate;
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState == null || (textDelegate = legacyTextFieldState.f5925a) == null) {
            return null;
        }
        return textDelegate.f5950a;
    }

    public final TextFieldValue o() {
        return (TextFieldValue) ((SnapshotMutableStateImpl) this.f6457e).getF10755b();
    }

    public final void p() {
        Job job;
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = this.z.f6140a;
        if (textContextMenuToolbarHandlerNode == null || (job = textContextMenuToolbarHandlerNode.v) == null) {
            return;
        }
        job.cancel(null);
        textContextMenuToolbarHandlerNode.v = null;
    }

    public final void q() {
        CoroutineScope coroutineScope = this.f6460i;
        if (coroutineScope != null) {
            BuildersKt.c(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$paste$1(this, null), 1);
        }
    }

    public final void r(long j2) {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.e(j2);
        }
        LegacyTextFieldState legacyTextFieldState2 = this.d;
        if (legacyTextFieldState2 != null) {
            TextRange.f10564b.getClass();
            legacyTextFieldState2.f(TextRange.f10565c);
        }
        if (TextRange.c(j2)) {
            return;
        }
        w(false);
        s(HandleState.None);
    }

    public final void s(HandleState handleState) {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.a() == handleState) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                ((SnapshotMutableStateImpl) legacyTextFieldState.f5933k).setValue(handleState);
            }
        }
    }

    public final void t(long j2) {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.f(j2);
        }
        LegacyTextFieldState legacyTextFieldState2 = this.d;
        if (legacyTextFieldState2 != null) {
            TextRange.f10564b.getClass();
            legacyTextFieldState2.e(TextRange.f10565c);
        }
        if (TextRange.c(j2)) {
            return;
        }
        w(false);
        s(HandleState.None);
    }

    public final void u() {
        LegacyTextFieldState legacyTextFieldState;
        Snapshot.f8462e.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 function1E = snapshotA != null ? snapshotA.getF8547i() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            if (!l() || ((legacyTextFieldState = this.d) != null && !((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState.q).getF10755b()).booleanValue())) {
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            } else {
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                this.z.a();
            }
        } catch (Throwable th) {
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object v(ContinuationImpl continuationImpl) {
        TextFieldSelectionManager$updateClipboardEntry$1 textFieldSelectionManager$updateClipboardEntry$1;
        if (continuationImpl instanceof TextFieldSelectionManager$updateClipboardEntry$1) {
            textFieldSelectionManager$updateClipboardEntry$1 = (TextFieldSelectionManager$updateClipboardEntry$1) continuationImpl;
            int i2 = textFieldSelectionManager$updateClipboardEntry$1.f6490e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                textFieldSelectionManager$updateClipboardEntry$1.f6490e = i2 - Integer.MIN_VALUE;
            } else {
                textFieldSelectionManager$updateClipboardEntry$1 = new TextFieldSelectionManager$updateClipboardEntry$1(this, continuationImpl);
            }
        } else {
            textFieldSelectionManager$updateClipboardEntry$1 = new TextFieldSelectionManager$updateClipboardEntry$1(this, continuationImpl);
        }
        Object objValueOf = textFieldSelectionManager$updateClipboardEntry$1.f6489c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = textFieldSelectionManager$updateClipboardEntry$1.f6490e;
        if (i3 == 0) {
            ResultKt.b(objValueOf);
            Clipboard clipboard = this.f6459h;
            if (clipboard != null) {
                textFieldSelectionManager$updateClipboardEntry$1.f6488b = this;
                textFieldSelectionManager$updateClipboardEntry$1.f6490e = 1;
                ClipDescription primaryClipDescription = clipboard.b().getPrimaryClipDescription();
                objValueOf = Boolean.valueOf(primaryClipDescription != null && primaryClipDescription.hasMimeType("text/*"));
                if (objValueOf == obj) {
                    return obj;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        this = textFieldSelectionManager$updateClipboardEntry$1.f6488b;
        ResultKt.b(objValueOf);
        Boolean bool = (Boolean) objValueOf;
        bool.getClass();
        ((SnapshotMutableStateImpl) this.y).setValue(bool);
        return Unit.f71739a;
    }

    public final void w(boolean z) {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            ((SnapshotMutableStateImpl) legacyTextFieldState.l).setValue(Boolean.valueOf(z));
        }
        if (z) {
            u();
        } else {
            p();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldSelectionManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ TextFieldSelectionManager(UndoManager undoManager, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : undoManager);
    }
}
