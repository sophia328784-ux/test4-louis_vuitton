package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphKt;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.vd;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextFieldSelectionManagerKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6494a;

        static {
            int[] iArr = new int[Handle.values().length];
            try {
                iArr[Handle.Cursor.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Handle.SelectionStart.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Handle.SelectionEnd.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f6494a = iArr;
        }
    }

    public static final void a(final boolean z, ResolvedTextDirection resolvedTextDirection, final TextFieldSelectionManager textFieldSelectionManager, Composer composer, int i2) {
        int i3;
        TextLayoutResultProxy textLayoutResultProxyD;
        TextLayoutResult textLayoutResult;
        GapComposer gapComposerH = composer.h(-1344558920);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(resolvedTextDirection.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(textFieldSelectionManager) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = i3 & 14;
            boolean zK = (i4 == 4) | gapComposerH.K(textFieldSelectionManager);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void a() {
                        TextLayoutResultProxy textLayoutResultProxyD2;
                        boolean z2 = z;
                        Handle handle = z2 ? Handle.SelectionStart : Handle.SelectionEnd;
                        TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.s).setValue(handle);
                        long jA = SelectionHandlesKt.a(textFieldSelectionManager2.m(z2));
                        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager2.d;
                        if (legacyTextFieldState == null || (textLayoutResultProxyD2 = legacyTextFieldState.d()) == null) {
                            return;
                        }
                        long jE = textLayoutResultProxyD2.e(jA);
                        textFieldSelectionManager2.p = jE;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.t).setValue(new Offset(jE));
                        Offset.f8806b.getClass();
                        textFieldSelectionManager2.r = 0L;
                        textFieldSelectionManager2.u = -1;
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.d;
                        if (legacyTextFieldState2 != null) {
                            ((SnapshotMutableStateImpl) legacyTextFieldState2.q).setValue(Boolean.TRUE);
                        }
                        textFieldSelectionManager2.w(false);
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void b(long j2, SelectionAdjustment selectionAdjustment) {
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void c() {
                        TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.s).setValue(null);
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.t).setValue(null);
                        textFieldSelectionManager2.w(true);
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void d(long j2) {
                        TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                        long jF = Offset.f(textFieldSelectionManager2.r, j2);
                        textFieldSelectionManager2.r = jF;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.t).setValue(new Offset(Offset.f(textFieldSelectionManager2.p, jF)));
                        TextFieldValue textFieldValueO = textFieldSelectionManager2.o();
                        Offset offsetJ = textFieldSelectionManager2.j();
                        offsetJ.getClass();
                        long j3 = offsetJ.f8808a;
                        HapticFeedbackType.f9193b.getClass();
                        TextFieldSelectionManager.c(textFieldSelectionManager2, textFieldValueO, j3, false, z, SelectionAdjustment.Companion.d, true, new HapticFeedbackType(PlatformHapticFeedbackType.f9202i));
                        textFieldSelectionManager2.w(false);
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void onCancel() {
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void onStop() {
                        TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.s).setValue(null);
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.t).setValue(null);
                        textFieldSelectionManager2.w(true);
                    }
                };
                gapComposerH.q(objX);
            }
            final TextDragObserver textDragObserver = (TextDragObserver) objX;
            boolean zY = (i4 == 4) | gapComposerH.y(textFieldSelectionManager);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1
                    @Override // androidx.compose.foundation.text.selection.OffsetProvider
                    public final long a() {
                        return textFieldSelectionManager.m(z);
                    }
                };
                gapComposerH.q(objX2);
            }
            OffsetProvider offsetProvider = (OffsetProvider) objX2;
            boolean zG = TextRange.g(textFieldSelectionManager.o().f10841b);
            int i5 = (int) (z ? textFieldSelectionManager.o().f10841b >> 32 : textFieldSelectionManager.o().f10841b & BodyPartID.bodyIdMax);
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
            float fK = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (legacyTextFieldState != null && (textLayoutResultProxyD = legacyTextFieldState.d()) != null && (textLayoutResult = textLayoutResultProxyD.f6011a) != null && i5 >= 0) {
                TextLayoutInput textLayoutInput = textLayoutResult.f10552a;
                MultiParagraph multiParagraph = textLayoutResult.f10553b;
                if (textLayoutInput.f10543a.f10420c.length() != 0) {
                    int iMin = Math.min(multiParagraph.d(i5), Math.min(multiParagraph.f10462b - 1, multiParagraph.f10465f - 1));
                    if (i5 <= multiParagraph.c(iMin, false)) {
                        multiParagraph.m(iMin);
                        ArrayList arrayList = multiParagraph.f10466h;
                        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(iMin, arrayList));
                        fK = paragraphInfo.f10471a.k(iMin - paragraphInfo.d);
                    }
                }
            }
            float f2 = fK;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TextFieldSelectionHandle");
            boolean zY2 = gapComposerH.y(textDragObserver);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$2$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objA = LongPressTextDragObserverKt.a(pointerInputScope, textDragObserver, continuation);
                        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            }
            AndroidSelectionHandles_androidKt.b(offsetProvider, z, resolvedTextDirection, zG, 0L, f2, SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, textDragObserver, (PointerInputEventHandler) objX3), gapComposerH, (i3 << 3) & 1008);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(z, resolvedTextDirection, textFieldSelectionManager, i2);
        }
    }
}
