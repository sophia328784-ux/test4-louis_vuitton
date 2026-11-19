package androidx.compose.foundation.text.input.internal;

import android.view.autofill.AutofillValue;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import defpackage.d3;
import defpackage.lq;
import defpackage.pq;
import defpackage.vg;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002BW\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/text/input/TransformedText;", "transformedText", "Landroidx/compose/ui/text/input/TextFieldValue;", "value", "Landroidx/compose/foundation/text/LegacyTextFieldState;", "state", "", "readOnly", "enabled", "isPassword", "Landroidx/compose/ui/text/input/OffsetMapping;", "offsetMapping", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "manager", "Landroidx/compose/ui/text/input/ImeOptions;", "imeOptions", "Landroidx/compose/ui/focus/FocusRequester;", "focusRequester", "<init>", "(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/focus/FocusRequester;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CoreTextFieldSemanticsModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public FocusRequester A;
    public TransformedText r;
    public TextFieldValue s;
    public LegacyTextFieldState t;
    public boolean u;
    public boolean v;
    public final boolean w;
    public OffsetMapping x;
    public TextFieldSelectionManager y;
    public ImeOptions z;

    public CoreTextFieldSemanticsModifierNode(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, boolean z3, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        this.r = transformedText;
        this.s = textFieldValue;
        this.t = legacyTextFieldState;
        this.u = z;
        this.v = z2;
        this.w = z3;
        this.x = offsetMapping;
        this.y = textFieldSelectionManager;
        this.z = imeOptions;
        this.A = focusRequester;
        textFieldSelectionManager.g = new pq(this, 4);
    }

    public static void k2(LegacyTextFieldState legacyTextFieldState, String str, boolean z, boolean z2) {
        if (z || !z2) {
            return;
        }
        androidx.compose.ui.text.input.TextInputSession textInputSession = legacyTextFieldState.f5928e;
        lq lqVar = legacyTextFieldState.v;
        if (textInputSession == null) {
            int length = str.length();
            lqVar.invoke(new TextFieldValue(str, TextRangeKt.a(length, length), (TextRange) null, 4, (DefaultConstructorMarker) null));
            return;
        }
        TextFieldDelegate.Companion companion = TextFieldDelegate.f5962a;
        List listP = CollectionsKt.P(new DeleteAllCommand(), new CommitTextCommand(str, 1));
        EditProcessor editProcessor = legacyTextFieldState.d;
        companion.getClass();
        TextFieldValue textFieldValueA = editProcessor.a(listP);
        if (Intrinsics.c((androidx.compose.ui.text.input.TextInputSession) textInputSession.f10861a.f10844b.get(), textInputSession)) {
            textInputSession.f10862b.e(null, textFieldValueA);
        }
        lqVar.invoke(textFieldValueA);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        AnnotatedString annotatedString = this.s.f10840a;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.F;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.f10359a;
        KProperty kProperty = kPropertyArr2[18];
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey, annotatedString);
        AnnotatedString annotatedString2 = this.r.f10863a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.G;
        KProperty kProperty2 = kPropertyArr2[19];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey2, annotatedString2);
        long j2 = this.s.f10841b;
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.H;
        KProperty kProperty3 = kPropertyArr2[20];
        TextRange textRange = new TextRange(j2);
        semanticsPropertyKey3.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey3, textRange);
        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.s;
        KProperty kProperty4 = kPropertyArr2[9];
        semanticsPropertyKey4.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey4, ContentDataType.Companion.f8647a);
        AndroidFillableData androidFillableData = new AndroidFillableData(AutofillValue.forText(this.s.f10840a));
        SemanticsPropertyKey semanticsPropertyKey5 = SemanticsProperties.t;
        KProperty kProperty5 = kPropertyArr2[10];
        semanticsPropertyKey5.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey5, androidFillableData);
        boolean z = false;
        z = false;
        final int i2 = z ? 1 : 0;
        semanticsPropertyReceiver.a(SemanticsActions.f10307h, new AccessibilityAction(null, new Function1(this) { // from class: qq

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CoreTextFieldSemanticsModifierNode f79138c;

            {
                this.f79138c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z2;
                int i3 = i2;
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.f79138c;
                switch (i3) {
                    case 0:
                        MutableState mutableState = coreTextFieldSemanticsModifierNode.t.t;
                        Boolean bool = Boolean.TRUE;
                        ((SnapshotMutableStateImpl) mutableState).setValue(bool);
                        ((SnapshotMutableStateImpl) coreTextFieldSemanticsModifierNode.t.s).setValue(bool);
                        LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.t;
                        CharSequence charSequenceA = ((FillableData) obj).a();
                        charSequenceA.getClass();
                        CoreTextFieldSemanticsModifierNode.k2(legacyTextFieldState, (String) charSequenceA, coreTextFieldSemanticsModifierNode.u, coreTextFieldSemanticsModifierNode.v);
                        return bool;
                    case 1:
                        List list = (List) obj;
                        if (coreTextFieldSemanticsModifierNode.t.d() != null) {
                            TextLayoutResultProxy textLayoutResultProxyD = coreTextFieldSemanticsModifierNode.t.d();
                            textLayoutResultProxyD.getClass();
                            list.add(textLayoutResultProxyD.f6011a);
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    default:
                        CoreTextFieldSemanticsModifierNode.k2(coreTextFieldSemanticsModifierNode.t, ((AnnotatedString) obj).f10420c, coreTextFieldSemanticsModifierNode.u, coreTextFieldSemanticsModifierNode.v);
                        return Boolean.TRUE;
                }
            }
        }));
        int i3 = this.z.d;
        KeyboardType.f10809b.getClass();
        if (i3 == KeyboardType.f10813h) {
            ContentType.f8649a.getClass();
            SemanticsPropertiesKt.j(semanticsPropertyReceiver, ContentType.Companion.d);
        } else if (i3 == KeyboardType.f10814i || i3 == KeyboardType.f10815j) {
            ContentType.f8649a.getClass();
            SemanticsPropertiesKt.j(semanticsPropertyReceiver, ContentType.Companion.f8652c);
        } else if (i3 == KeyboardType.f10812f) {
            ContentType.f8649a.getClass();
            SemanticsPropertiesKt.j(semanticsPropertyReceiver, ContentType.Companion.B);
        }
        if (!this.v) {
            SemanticsPropertiesKt.a(semanticsPropertyReceiver);
        }
        boolean z2 = this.w;
        if (z2) {
            semanticsPropertyReceiver.a(SemanticsProperties.L, Unit.f71739a);
        }
        final int i4 = 1;
        if (this.v && !this.u) {
            z = true;
        }
        SemanticsPropertyKey semanticsPropertyKey6 = SemanticsProperties.O;
        KProperty kProperty6 = kPropertyArr2[28];
        Boolean boolValueOf = Boolean.valueOf(z);
        semanticsPropertyKey6.getClass();
        semanticsPropertyReceiver.a(semanticsPropertyKey6, boolValueOf);
        SemanticsPropertiesKt.c(semanticsPropertyReceiver, new Function1(this) { // from class: qq

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CoreTextFieldSemanticsModifierNode f79138c;

            {
                this.f79138c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z3;
                int i5 = i4;
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.f79138c;
                switch (i5) {
                    case 0:
                        MutableState mutableState = coreTextFieldSemanticsModifierNode.t.t;
                        Boolean bool = Boolean.TRUE;
                        ((SnapshotMutableStateImpl) mutableState).setValue(bool);
                        ((SnapshotMutableStateImpl) coreTextFieldSemanticsModifierNode.t.s).setValue(bool);
                        LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.t;
                        CharSequence charSequenceA = ((FillableData) obj).a();
                        charSequenceA.getClass();
                        CoreTextFieldSemanticsModifierNode.k2(legacyTextFieldState, (String) charSequenceA, coreTextFieldSemanticsModifierNode.u, coreTextFieldSemanticsModifierNode.v);
                        return bool;
                    case 1:
                        List list = (List) obj;
                        if (coreTextFieldSemanticsModifierNode.t.d() != null) {
                            TextLayoutResultProxy textLayoutResultProxyD = coreTextFieldSemanticsModifierNode.t.d();
                            textLayoutResultProxyD.getClass();
                            list.add(textLayoutResultProxyD.f6011a);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    default:
                        CoreTextFieldSemanticsModifierNode.k2(coreTextFieldSemanticsModifierNode.t, ((AnnotatedString) obj).f10420c, coreTextFieldSemanticsModifierNode.u, coreTextFieldSemanticsModifierNode.v);
                        return Boolean.TRUE;
                }
            }
        });
        final int i5 = 2;
        if (z) {
            semanticsPropertyReceiver.a(SemanticsActions.f10310k, new AccessibilityAction(null, new Function1(this) { // from class: qq

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CoreTextFieldSemanticsModifierNode f79138c;

                {
                    this.f79138c = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean z3;
                    int i6 = i5;
                    CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.f79138c;
                    switch (i6) {
                        case 0:
                            MutableState mutableState = coreTextFieldSemanticsModifierNode.t.t;
                            Boolean bool = Boolean.TRUE;
                            ((SnapshotMutableStateImpl) mutableState).setValue(bool);
                            ((SnapshotMutableStateImpl) coreTextFieldSemanticsModifierNode.t.s).setValue(bool);
                            LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.t;
                            CharSequence charSequenceA = ((FillableData) obj).a();
                            charSequenceA.getClass();
                            CoreTextFieldSemanticsModifierNode.k2(legacyTextFieldState, (String) charSequenceA, coreTextFieldSemanticsModifierNode.u, coreTextFieldSemanticsModifierNode.v);
                            return bool;
                        case 1:
                            List list = (List) obj;
                            if (coreTextFieldSemanticsModifierNode.t.d() != null) {
                                TextLayoutResultProxy textLayoutResultProxyD = coreTextFieldSemanticsModifierNode.t.d();
                                textLayoutResultProxyD.getClass();
                                list.add(textLayoutResultProxyD.f6011a);
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            return Boolean.valueOf(z3);
                        default:
                            CoreTextFieldSemanticsModifierNode.k2(coreTextFieldSemanticsModifierNode.t, ((AnnotatedString) obj).f10420c, coreTextFieldSemanticsModifierNode.u, coreTextFieldSemanticsModifierNode.v);
                            return Boolean.TRUE;
                    }
                }
            }));
            semanticsPropertyReceiver.a(SemanticsActions.o, new AccessibilityAction(null, new vg(this, semanticsPropertyReceiver, 21)));
        }
        semanticsPropertyReceiver.a(SemanticsActions.f10309j, new AccessibilityAction(null, new d3(this, 13)));
        int i6 = this.z.f10798e;
        pq pqVar = new pq(this, 6);
        semanticsPropertyReceiver.a(SemanticsProperties.I, new ImeAction(i6));
        semanticsPropertyReceiver.a(SemanticsActions.p, new AccessibilityAction(null, pqVar));
        SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new pq(this, 7));
        semanticsPropertyReceiver.a(SemanticsActions.f10304c, new AccessibilityAction(null, new pq(this, 1)));
        if (!TextRange.c(this.s.f10841b) && !z2) {
            semanticsPropertyReceiver.a(SemanticsActions.q, new AccessibilityAction(null, new pq(this, 2)));
            if (this.v && !this.u) {
                semanticsPropertyReceiver.a(SemanticsActions.r, new AccessibilityAction(null, new pq(this, 3)));
            }
        }
        if (!this.v || this.u) {
            return;
        }
        semanticsPropertyReceiver.a(SemanticsActions.s, new AccessibilityAction(null, new pq(this, 5)));
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    /* JADX INFO: renamed from: Q1 */
    public final boolean getP() {
        return true;
    }
}
