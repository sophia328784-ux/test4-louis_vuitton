package com.airbnb.lottie.compose;

import com.airbnb.lottie.LottieComposition;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/airbnb/lottie/compose/LottieAnimatable;", "Lcom/airbnb/lottie/compose/LottieAnimationState;", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LottieAnimatable extends LottieAnimationState {

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:27:0x0048  */
        public static Object a(LottieAnimatable lottieAnimatable, LottieComposition lottieComposition, int i2, boolean z, float f2, LottieClipSpec lottieClipSpec, float f3, LottieCancellationBehavior lottieCancellationBehavior, SuspendLambda suspendLambda, int i3) {
            float f4;
            int iY = lottieAnimatable.y();
            if ((i3 & 4) != 0) {
                i2 = lottieAnimatable.u();
            }
            int i4 = i2;
            if ((i3 & 8) != 0) {
                z = lottieAnimatable.t();
            }
            boolean z2 = z;
            float fV = (i3 & 16) != 0 ? lottieAnimatable.v() : f2;
            LottieClipSpec lottieClipSpecC = (i3 & 32) != 0 ? lottieAnimatable.C() : lottieClipSpec;
            if ((i3 & 64) != 0) {
                float fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (fV < Call.Parameters.DEFAULT_CAMERA_ZOOM && lottieComposition == null) {
                    fB = 1.0f;
                } else if (lottieComposition != null) {
                    if (fV < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        if (lottieClipSpecC != null) {
                            fB = lottieClipSpecC.a(lottieComposition);
                        } else {
                            fB = 1.0f;
                        }
                    } else if (lottieClipSpecC != null) {
                        fB = lottieClipSpecC.b(lottieComposition);
                    }
                }
                f4 = fB;
            } else {
                f4 = f3;
            }
            return lottieAnimatable.B(lottieComposition, iY, i4, z2, fV, lottieClipSpecC, f4, false, (i3 & 256) != 0 ? LottieCancellationBehavior.Immediately : lottieCancellationBehavior, false, suspendLambda);
        }

        public static /* synthetic */ Object b(LottieAnimatable lottieAnimatable, LottieComposition lottieComposition, float f2, SuspendLambda suspendLambda, int i2) {
            if ((i2 & 1) != 0) {
                lottieComposition = lottieAnimatable.A();
            }
            return lottieAnimatable.z(lottieComposition, f2, (i2 & 4) != 0 ? lottieAnimatable.y() : 1, !(f2 == lottieAnimatable.c()), suspendLambda);
        }
    }

    Object B(LottieComposition lottieComposition, int i2, int i3, boolean z, float f2, LottieClipSpec lottieClipSpec, float f3, boolean z2, LottieCancellationBehavior lottieCancellationBehavior, boolean z3, SuspendLambda suspendLambda);

    Object z(LottieComposition lottieComposition, float f2, int i2, boolean z, SuspendLambda suspendLambda);
}
