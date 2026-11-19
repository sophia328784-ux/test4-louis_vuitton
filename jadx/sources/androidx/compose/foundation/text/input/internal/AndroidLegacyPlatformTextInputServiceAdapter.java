package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.cl0;
import defpackage.d1;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;", "Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidLegacyPlatformTextInputServiceAdapter extends LegacyPlatformTextInputServiceAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Job f6178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LegacyTextInputMethodRequest f6179c;
    public SharedFlowImpl d;

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void a() {
        LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode = this.f6223a;
        if (legacyPlatformTextInputNode == null) {
            return;
        }
        this.f6178b = legacyPlatformTextInputNode.W0(new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(null, this, legacyPlatformTextInputNode, null));
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void b() throws Throwable {
        Job job = this.f6178b;
        if (job != null) {
            job.cancel(null);
        }
        this.f6178b = null;
        MutableSharedFlow mutableSharedFlowK = k();
        if (mutableSharedFlowK != null) {
            ((SharedFlowImpl) mutableSharedFlowK).j();
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void c(TextFieldValue textFieldValue, ImeOptions imeOptions, cl0 cl0Var, Function1 function1) {
        d1 d1Var = new d1(textFieldValue, this, imeOptions, cl0Var, function1, 3);
        LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode = this.f6223a;
        if (legacyPlatformTextInputNode == null) {
            return;
        }
        this.f6178b = legacyPlatformTextInputNode.W0(new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(d1Var, this, legacyPlatformTextInputNode, null));
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void e(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.f6179c;
        if (legacyTextInputMethodRequest != null) {
            boolean z = (TextRange.b(legacyTextInputMethodRequest.f6231h.f10841b, textFieldValue2.f10841b) && Intrinsics.c(legacyTextInputMethodRequest.f6231h.f10842c, textFieldValue2.f10842c)) ? false : true;
            legacyTextInputMethodRequest.f6231h = textFieldValue2;
            int size = legacyTextInputMethodRequest.f6233j.size();
            for (int i2 = 0; i2 < size; i2++) {
                RecordingInputConnection recordingInputConnection = (RecordingInputConnection) ((WeakReference) legacyTextInputMethodRequest.f6233j.get(i2)).get();
                if (recordingInputConnection != null) {
                    recordingInputConnection.g = textFieldValue2;
                }
            }
            LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = legacyTextInputMethodRequest.m;
            synchronized (legacyCursorAnchorInfoController.f6216c) {
                legacyCursorAnchorInfoController.f6221j = null;
                legacyCursorAnchorInfoController.l = null;
                legacyCursorAnchorInfoController.f6222k = null;
                legacyCursorAnchorInfoController.m = null;
                legacyCursorAnchorInfoController.n = null;
            }
            if (Intrinsics.c(textFieldValue, textFieldValue2)) {
                if (z) {
                    InputMethodManager inputMethodManager = legacyTextInputMethodRequest.f6227b;
                    int iF = TextRange.f(textFieldValue2.f10841b);
                    int iE = TextRange.e(textFieldValue2.f10841b);
                    TextRange textRange = legacyTextInputMethodRequest.f6231h.f10842c;
                    int iF2 = textRange != null ? TextRange.f(textRange.f10566a) : -1;
                    TextRange textRange2 = legacyTextInputMethodRequest.f6231h.f10842c;
                    inputMethodManager.a(iF, iE, iF2, textRange2 != null ? TextRange.e(textRange2.f10566a) : -1);
                    return;
                }
                return;
            }
            if (textFieldValue != null && (!Intrinsics.c(textFieldValue.f10840a.f10420c, textFieldValue2.f10840a.f10420c) || (TextRange.b(textFieldValue.f10841b, textFieldValue2.f10841b) && !Intrinsics.c(textFieldValue.f10842c, textFieldValue2.f10842c)))) {
                legacyTextInputMethodRequest.f6227b.b();
                return;
            }
            int size2 = legacyTextInputMethodRequest.f6233j.size();
            for (int i3 = 0; i3 < size2; i3++) {
                RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) legacyTextInputMethodRequest.f6233j.get(i3)).get();
                if (recordingInputConnection2 != null) {
                    TextFieldValue textFieldValue3 = legacyTextInputMethodRequest.f6231h;
                    InputMethodManager inputMethodManager2 = legacyTextInputMethodRequest.f6227b;
                    if (recordingInputConnection2.f6244k) {
                        recordingInputConnection2.g = textFieldValue3;
                        if (recordingInputConnection2.f6242i) {
                            inputMethodManager2.updateExtractedText(recordingInputConnection2.f6241h, RecordingInputConnection_androidKt.a(textFieldValue3));
                        }
                        TextRange textRange3 = textFieldValue3.f10842c;
                        long j2 = textFieldValue3.f10841b;
                        int iF3 = textRange3 != null ? TextRange.f(textRange3.f10566a) : -1;
                        TextRange textRange4 = textFieldValue3.f10842c;
                        inputMethodManager2.a(TextRange.f(j2), TextRange.e(j2), iF3, textRange4 != null ? TextRange.e(textRange4.f10566a) : -1);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void g(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Function1 function1, Rect rect, Rect rect2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.f6179c;
        if (legacyTextInputMethodRequest != null) {
            LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = legacyTextInputMethodRequest.m;
            synchronized (legacyCursorAnchorInfoController.f6216c) {
                try {
                    legacyCursorAnchorInfoController.f6221j = textFieldValue;
                    legacyCursorAnchorInfoController.l = offsetMapping;
                    legacyCursorAnchorInfoController.f6222k = textLayoutResult;
                    legacyCursorAnchorInfoController.m = rect;
                    legacyCursorAnchorInfoController.n = rect2;
                    if (legacyCursorAnchorInfoController.f6217e || legacyCursorAnchorInfoController.d) {
                        legacyCursorAnchorInfoController.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void h(Rect rect) {
        android.graphics.Rect rect2;
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.f6179c;
        if (legacyTextInputMethodRequest != null) {
            legacyTextInputMethodRequest.l = new android.graphics.Rect(MathKt.c(rect.f8811a), MathKt.c(rect.f8812b), MathKt.c(rect.f8813c), MathKt.c(rect.d));
            if (!legacyTextInputMethodRequest.f6233j.isEmpty() || (rect2 = legacyTextInputMethodRequest.l) == null) {
                return;
            }
            legacyTextInputMethodRequest.f6226a.requestRectangleOnScreen(new android.graphics.Rect(rect2));
        }
    }

    @Override // androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter
    public final void i() {
        MutableSharedFlow mutableSharedFlowK = k();
        if (mutableSharedFlowK != null) {
            ((SharedFlowImpl) mutableSharedFlowK).a(Unit.f71739a);
        }
    }

    public final MutableSharedFlow k() {
        SharedFlowImpl sharedFlowImpl = this.d;
        if (sharedFlowImpl != null) {
            return sharedFlowImpl;
        }
        if (!StylusHandwriting_androidKt.f6175a) {
            return null;
        }
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, BufferOverflow.DROP_LATEST, 2);
        this.d = sharedFlowImplB;
        return sharedFlowImplB;
    }
}
