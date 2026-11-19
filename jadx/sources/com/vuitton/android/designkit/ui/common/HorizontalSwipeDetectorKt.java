package com.vuitton.android.designkit.ui.common;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.nz;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HorizontalSwipeDetectorKt {
    public static final Modifier a(Modifier modifier, boolean z, final long j2, final Function0 function0, final Function0 function1, Composer composer) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "horizontalSwipeDetector-JQ-Ljw8");
        }
        modifier.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        final LayoutDirection layoutDirection = (LayoutDirection) composer.k(CompositionLocalsKt.n);
        if (!z) {
            composer.L(1009710290);
            composer.F();
            return modifier;
        }
        composer.L(1007943166);
        IntSize intSize = new IntSize(j2);
        boolean zK = composer.K(function0) | composer.K(function1) | composer.e(j2) | composer.d(layoutDirection.ordinal());
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.ui.common.HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1

                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public static final /* synthetic */ class WhenMappings {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final /* synthetic */ int[] f48303a;

                    static {
                        int[] iArr = new int[HorizontalSwipeDirection.values().length];
                        try {
                            iArr[HorizontalSwipeDirection.StartToEnd.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[HorizontalSwipeDirection.EndToStart.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        f48303a = iArr;
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                    nz nzVar = new nz(2, ref$ObjectRef);
                    final Function0 function2 = function0;
                    final Function0 function3 = function1;
                    Function0 function4 = new Function0() { // from class: com.vuitton.android.designkit.ui.common.a
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            HorizontalSwipeDirection horizontalSwipeDirection = (HorizontalSwipeDirection) ref$ObjectRef2.f71921b;
                            if (horizontalSwipeDirection != null) {
                                int i2 = HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1.WhenMappings.f48303a[horizontalSwipeDirection.ordinal()];
                                if (i2 == 1) {
                                    function2.mo47invoke();
                                } else {
                                    if (i2 != 2) {
                                        v40.g();
                                        return null;
                                    }
                                    function3.mo47invoke();
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    final long j3 = j2;
                    final LayoutDirection layoutDirection2 = layoutDirection;
                    Object objG = DragGestureDetectorKt.g(pointerInputScope, nzVar, function4, new Function2() { // from class: com.vuitton.android.designkit.ui.common.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            HorizontalSwipeDirection horizontalSwipeDirection;
                            PointerInputChange pointerInputChange = (PointerInputChange) obj;
                            ((Float) obj2).getClass();
                            pointerInputChange.getClass();
                            Size.f8820b.getClass();
                            boolean zE = PointerEventKt.e(pointerInputChange, j3, 0L);
                            Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef2;
                            if (zE) {
                                ref$ObjectRef3.f71921b = null;
                            } else {
                                Offset offset = (Offset) ref$ObjectRef.f71921b;
                                if (offset != null) {
                                    long j4 = offset.f8808a;
                                    float fIntBitsToFloat = Float.intBitsToFloat((int) (pointerInputChange.f9330c >> 32));
                                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j4 >> 32));
                                    LayoutDirection layoutDirection3 = layoutDirection2;
                                    if (fIntBitsToFloat > fIntBitsToFloat2) {
                                        horizontalSwipeDirection = layoutDirection3 == LayoutDirection.Ltr ? HorizontalSwipeDirection.StartToEnd : HorizontalSwipeDirection.EndToStart;
                                    } else {
                                        horizontalSwipeDirection = layoutDirection3 == LayoutDirection.Ltr ? HorizontalSwipeDirection.EndToStart : HorizontalSwipeDirection.StartToEnd;
                                    }
                                    ref$ObjectRef3.f71921b = horizontalSwipeDirection;
                                }
                            }
                            return Unit.f71739a;
                        }
                    }, continuation, 4);
                    return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : Unit.f71739a;
                }
            };
            composer.q(objX);
        }
        Modifier modifierA = SuspendingPointerInputFilterKt.a(modifier, intSize, (PointerInputEventHandler) objX);
        composer.F();
        return modifierA;
    }
}
