package androidx.compose.foundation.text.input.internal;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.platform.PlatformTextInputMethodRequest;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import defpackage.md;
import defpackage.n60;
import defpackage.x60;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;", "Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;", "Landroid/view/View;", "view", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Matrix;", "", "localToScreen", "Landroidx/compose/foundation/text/input/internal/InputMethodManager;", "inputMethodManager", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegacyTextInputMethodRequest implements PlatformTextInputMethodRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f6226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputMethodManager f6227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function1 f6228c = new n60(27);
    public Function1 d = new n60(28);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LegacyTextFieldState f6229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextFieldSelectionManager f6230f;
    public ViewConfiguration g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextFieldValue f6231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImeOptions f6232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f6233j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f6234k;
    public Rect l;
    public final LegacyCursorAnchorInfoController m;

    public LegacyTextInputMethodRequest(View view, Function1<? super Matrix, Unit> function1, InputMethodManager inputMethodManager) {
        this.f6226a = view;
        this.f6227b = inputMethodManager;
        TextRange.f10564b.getClass();
        this.f6231h = new TextFieldValue("", TextRange.f10565c, (TextRange) null, 4, (DefaultConstructorMarker) null);
        ImeOptions.f10793h.getClass();
        this.f6232i = ImeOptions.f10794i;
        this.f6233j = new ArrayList();
        this.f6234k = LazyKt.a(LazyThreadSafetyMode.NONE, new x60(this, 2));
        this.m = new LegacyCursorAnchorInfoController(function1, inputMethodManager);
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputMethodRequest
    public final RecordingInputConnection a(EditorInfo editorInfo) {
        String str;
        TextFieldValue textFieldValue = this.f6231h;
        String str2 = textFieldValue.f10840a.f10420c;
        long j2 = textFieldValue.f10841b;
        ImeOptions imeOptions = this.f6232i;
        int i2 = imeOptions.f10798e;
        boolean z = imeOptions.f10795a;
        int i3 = imeOptions.d;
        ImeAction.f10785b.getClass();
        int i4 = 3;
        int i5 = 6;
        if (i2 == ImeAction.d) {
            if (!z) {
                i5 = 0;
            }
        } else if (i2 == 0) {
            i5 = 1;
        } else if (i2 == ImeAction.f10787e) {
            i5 = 2;
        } else if (i2 == ImeAction.f10790i) {
            i5 = 5;
        } else if (i2 == ImeAction.f10789h) {
            i5 = 7;
        } else if (i2 == ImeAction.f10788f) {
            i5 = 3;
        } else if (i2 == ImeAction.g) {
            i5 = 4;
        } else if (i2 != ImeAction.f10791j) {
            md.k("invalid ImeAction");
            return null;
        }
        editorInfo.imeOptions = i5;
        PlatformImeOptions platformImeOptions = imeOptions.f10799f;
        if (platformImeOptions != null && (str = platformImeOptions.f10826a) != null) {
            editorInfo.privateImeOptions = str;
        }
        LocaleList localeList = imeOptions.g;
        LocaleList.d.getClass();
        if (Intrinsics.c(localeList, LocaleList.f10872e)) {
            editorInfo.hintLocales = null;
        } else {
            ArrayList arrayList = new ArrayList(CollectionsKt.t(localeList, 10));
            Iterator it = localeList.f10873b.iterator();
            while (it.hasNext()) {
                arrayList.add(((Locale) it.next()).f10871a);
            }
            java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
            editorInfo.hintLocales = new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length));
        }
        KeyboardType.f10809b.getClass();
        if (i3 == KeyboardType.f10810c) {
            i4 = 1;
        } else if (i3 == KeyboardType.d) {
            editorInfo.imeOptions |= Integer.MIN_VALUE;
            i4 = 1;
        } else if (i3 == KeyboardType.f10811e) {
            i4 = 2;
        } else if (i3 != KeyboardType.f10812f) {
            if (i3 == KeyboardType.g) {
                i4 = 17;
            } else if (i3 == KeyboardType.f10813h) {
                i4 = 33;
            } else if (i3 == KeyboardType.f10814i) {
                i4 = 129;
            } else if (i3 == KeyboardType.f10815j) {
                i4 = 18;
            } else {
                if (i3 != KeyboardType.f10816k) {
                    md.k("Invalid Keyboard Type");
                    return null;
                }
                i4 = 8194;
            }
        }
        editorInfo.inputType = i4;
        if (!z && (i4 & 1) == 1) {
            editorInfo.inputType = 131072 | i4;
            int i6 = imeOptions.f10798e;
            ImeAction.f10785b.getClass();
            if (i6 == ImeAction.d) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if ((editorInfo.inputType & 1) == 1) {
            int i7 = imeOptions.f10796b;
            KeyboardCapitalization.f10804b.getClass();
            if (i7 == KeyboardCapitalization.d) {
                editorInfo.inputType |= 4096;
            } else if (i7 == KeyboardCapitalization.f10806e) {
                editorInfo.inputType |= 8192;
            } else if (i7 == KeyboardCapitalization.f10807f) {
                editorInfo.inputType |= 16384;
            }
            if (imeOptions.f10797c) {
                editorInfo.inputType |= 32768;
            }
        }
        TextRange.Companion companion = TextRange.f10564b;
        editorInfo.initialSelStart = (int) (j2 >> 32);
        editorInfo.initialSelEnd = (int) (j2 & BodyPartID.bodyIdMax);
        EditorInfoCompat.a(editorInfo, str2);
        editorInfo.imeOptions |= 33554432;
        if (!StylusHandwriting_androidKt.f6175a || i3 == KeyboardType.f10814i || i3 == KeyboardType.f10815j) {
            EditorInfoCompat.b(editorInfo, false);
        } else {
            EditorInfoCompat.b(editorInfo, true);
            EditorInfoApi34.a(editorInfo);
        }
        Function1 function1 = LegacyPlatformTextInputServiceAdapter_androidKt.f6224a;
        if (EmojiCompat.g()) {
            EmojiCompat.a().l(editorInfo);
        }
        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.f6231h, new InputEventCallback2() { // from class: androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest$createInputConnection$1
            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public final void a(KeyEvent keyEvent) {
                ((BaseInputConnection) this.f6235a.f6234k.getF71699b()).sendKeyEvent(keyEvent);
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public final void b(ArrayList arrayList2) {
                this.f6235a.f6228c.invoke(arrayList2);
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public final void c(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
                LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = this.f6235a.m;
                synchronized (legacyCursorAnchorInfoController.f6216c) {
                    try {
                        legacyCursorAnchorInfoController.f6218f = z4;
                        legacyCursorAnchorInfoController.g = z5;
                        legacyCursorAnchorInfoController.f6219h = z6;
                        legacyCursorAnchorInfoController.f6220i = z7;
                        if (z2) {
                            legacyCursorAnchorInfoController.f6217e = true;
                            if (legacyCursorAnchorInfoController.f6221j != null) {
                                legacyCursorAnchorInfoController.a();
                            }
                        }
                        legacyCursorAnchorInfoController.d = z3;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public final void d(int i8) {
                this.f6235a.d.invoke(new ImeAction(i8));
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public final void e(RecordingInputConnection recordingInputConnection2) {
                ArrayList arrayList2 = this.f6235a.f6233j;
                int size = arrayList2.size();
                for (int i8 = 0; i8 < size; i8++) {
                    if (Intrinsics.c(((WeakReference) arrayList2.get(i8)).get(), recordingInputConnection2)) {
                        arrayList2.remove(i8);
                        return;
                    }
                }
            }
        }, this.f6232i.f10797c, this.f6229e, this.f6230f, this.g);
        this.f6233j.add(new WeakReference(recordingInputConnection));
        return recordingInputConnection;
    }
}
