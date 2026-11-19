package com.vuitton.android.designkit.components.components;

import android.content.res.Configuration;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import defpackage.rk;
import defpackage.ud;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVFreeCarouselWithHintKt {
    /* JADX WARN: Code duplicated, block: B:104:0x0150  */
    /* JADX WARN: Code duplicated, block: B:108:0x0177  */
    /* JADX WARN: Code duplicated, block: B:111:0x0195  */
    /* JADX WARN: Code duplicated, block: B:112:0x0198  */
    /* JADX WARN: Code duplicated, block: B:115:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:116:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:120:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:124:0x01be  */
    /* JADX WARN: Code duplicated, block: B:92:0x011d  */
    public static final void a(Modifier modifier, LazyListState lazyListState, final List list, final int i2, final float f2, final float f3, final float f4, final Function4 function4, Composer composer, final int i3, final int i4) {
        int i5;
        LazyListState lazyListStateA;
        Object obj;
        GapComposer gapComposer;
        Modifier modifier2;
        int i6;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        float fFloatValue;
        boolean z;
        Object objX2;
        boolean zY;
        Object objX3;
        boolean z2;
        boolean z3;
        boolean z4;
        Object objX4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVFreeCarouselWithHint-1tP8Re8");
        }
        list.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(408050379);
        int i7 = i4 & 1;
        if (i7 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            if ((i4 & 2) == 0) {
                lazyListStateA = lazyListState;
                int i8 = gapComposerH.K(lazyListStateA) ? 32 : 16;
                i5 |= i8;
            } else {
                lazyListStateA = lazyListState;
            }
            i5 |= i8;
        } else {
            lazyListStateA = lazyListState;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.d(i2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.c(f2) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i5 |= gapComposerH.c(f3) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i5 |= gapComposerH.c(f4) ? 1048576 : 524288;
        }
        if ((12582912 & i3) == 0) {
            obj = function4;
            i5 |= gapComposerH.y(obj) ? 8388608 : 4194304;
        } else {
            obj = function4;
        }
        if (gapComposerH.p(i5 & 1, (i5 & 4793491) != 4793490)) {
            gapComposerH.y0();
            if ((i3 & 1) == 0 || gapComposerH.h0()) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVFreeCarouselWithHint-1tP8Re8");
                }
                if ((i4 & 2) != 0) {
                    i5 &= -113;
                    modifier2 = dTFunctionNameModifier;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                i6 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    float f5 = i2;
                    objX = Float.valueOf(((i6 - f3) - (f4 * f5)) / (f5 + f2));
                    gapComposerH.q(objX);
                }
                fFloatValue = ((Number) objX).floatValue();
                int i9 = i5 & 112;
                z = ((i9 ^ 48) <= 32 && gapComposerH.K(lazyListStateA)) || (i5 & 48) == 32;
                objX2 = gapComposerH.x();
                if (z || objX2 == composer$Companion$Empty$1) {
                    final LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 = new LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListStateA, SnapPosition.Start.f4877a);
                    objX2 = new SnapLayoutInfoProvider() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1
                        @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                        public final float a(float f6) {
                            return lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1.a(f6);
                        }

                        @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                        public final float b(float f6, float f7) {
                            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                TargetedFlingBehavior targetedFlingBehaviorE = SnapFlingBehaviorKt.e((LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1) objX2, gapComposerH);
                Modifier modifierD = SizeKt.d(modifier2, 1.0f);
                zY = gapComposerH.y(list);
                objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ud(list, 7);
                    gapComposerH.q(objX3);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierD, false, (Function1) objX3);
                boolean zY2 = gapComposerH.y(list);
                if ((i5 & 3670016) == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean z5 = zY2 | z2;
                if ((458752 & i5) == 131072) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                z4 = z5 | z3 | ((29360128 & i5) == 8388608);
                objX4 = gapComposerH.x();
                if (z4 || objX4 == composer$Companion$Empty$1) {
                    rk rkVar = new rk(list, f4, fFloatValue, f3, obj, 1);
                    gapComposerH.q(rkVar);
                    objX4 = rkVar;
                }
                gapComposer = gapComposerH;
                dTFunctionNameModifier = modifier2;
                LazyDslKt.b(modifierB, lazyListStateA, null, null, null, targetedFlingBehaviorE, false, null, (Function1) objX4, gapComposer, i9, 444);
            } else {
                gapComposerH.D();
                if ((i4 & 2) != 0) {
                    i5 &= -113;
                }
            }
            modifier2 = dTFunctionNameModifier;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            i6 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                float f6 = i2;
                objX = Float.valueOf(((i6 - f3) - (f4 * f6)) / (f6 + f2));
                gapComposerH.q(objX);
            }
            fFloatValue = ((Number) objX).floatValue();
            int i10 = i5 & 112;
            if ((i10 ^ 48) <= 32) {
            }
            objX2 = gapComposerH.x();
            if (z) {
                final LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$2 = new LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListStateA, SnapPosition.Start.f4877a);
                objX2 = new SnapLayoutInfoProvider() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1
                    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                    public final float a(float f7) {
                        return lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$2.a(f7);
                    }

                    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                    public final float b(float f7, float f8) {
                        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                };
                gapComposerH.q(objX2);
            } else {
                final LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$3 = new LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListStateA, SnapPosition.Start.f4877a);
                objX2 = new SnapLayoutInfoProvider() { // from class: com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1
                    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                    public final float a(float f7) {
                        return lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$3.a(f7);
                    }

                    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                    public final float b(float f7, float f8) {
                        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                };
                gapComposerH.q(objX2);
            }
            TargetedFlingBehavior targetedFlingBehaviorE2 = SnapFlingBehaviorKt.e((LVFreeCarouselWithHintKt$LVFreeCarouselWithHint$snappingLayout$1$1) objX2, gapComposerH);
            Modifier modifierD2 = SizeKt.d(modifier2, 1.0f);
            zY = gapComposerH.y(list);
            objX3 = gapComposerH.x();
            if (zY) {
                objX3 = new ud(list, 7);
                gapComposerH.q(objX3);
            } else {
                objX3 = new ud(list, 7);
                gapComposerH.q(objX3);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierD2, false, (Function1) objX3);
            boolean zY3 = gapComposerH.y(list);
            if ((i5 & 3670016) == 1048576) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z6 = zY3 | z2;
            if ((458752 & i5) == 131072) {
                z3 = true;
            } else {
                z3 = false;
            }
            z4 = z6 | z3 | ((29360128 & i5) == 8388608);
            objX4 = gapComposerH.x();
            if (z4) {
                rk rkVar2 = new rk(list, f4, fFloatValue, f3, obj, 1);
                gapComposerH.q(rkVar2);
                objX4 = rkVar2;
            } else {
                rk rkVar3 = new rk(list, f4, fFloatValue, f3, obj, 1);
                gapComposerH.q(rkVar3);
                objX4 = rkVar3;
            }
            gapComposer = gapComposerH;
            dTFunctionNameModifier = modifier2;
            LazyDslKt.b(modifierB2, lazyListStateA, null, null, null, targetedFlingBehaviorE2, false, null, (Function1) objX4, gapComposer, i10, 444);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        final Modifier modifier3 = dTFunctionNameModifier;
        final LazyListState lazyListState2 = lazyListStateA;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: z50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    LVFreeCarouselWithHintKt.a(modifier3, lazyListState2, list, i2, f2, f3, f4, function4, (Composer) obj2, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
