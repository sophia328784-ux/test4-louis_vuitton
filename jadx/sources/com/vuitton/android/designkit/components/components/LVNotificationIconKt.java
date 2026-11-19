package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVNotificationIconKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVNotificationIconKt {
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    /* JADX WARN: Code duplicated, block: B:23:0x0045  */
    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x0064  */
    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:41:0x0095  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, float f2, long j2, Composer composer, final int i2, final int i3) {
        int i4;
        float f3;
        int i5;
        boolean z;
        final long j3;
        final float f4;
        final Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        float f5;
        long j4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVNotificationIcon-9IZ8Weo");
        }
        GapComposer gapComposerH = composer.h(-956052657);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        if ((i3 & 2) == 0) {
            f3 = f2;
            int i7 = gapComposerH.c(f3) ? 32 : 16;
            i5 = i4 | i7 | 128;
            if ((i5 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i6 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVNotificationIcon-9IZ8Weo");
                    }
                    if ((i3 & 2) != 0) {
                        f5 = LVAppDesignKitTheme.d(gapComposerH).f48390j;
                    } else {
                        f5 = f3;
                    }
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.v;
                } else {
                    gapComposerH.D();
                    j4 = j2;
                    f5 = f3;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                BoxKt.a(BackgroundKt.b(SizeKt.o(dTFunctionNameModifier, f5), j4, RoundedCornerShapeKt.a(f5)), gapComposerH, 0);
                f4 = f5;
                j3 = j4;
            } else {
                gapComposerH.D();
                j3 = j2;
                f4 = f3;
            }
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2(f4, j3, i2, i3) { // from class: r60

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ float f79258c;
                    public final /* synthetic */ long d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ int f79259e;

                    {
                        this.f79259e = i3;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(1);
                        LVNotificationIconKt.a(this.f79257b, this.f79258c, this.d, (Composer) obj, iA, this.f79259e);
                        return Unit.f71739a;
                    }
                };
            }
        }
        f3 = f2;
        i5 = i4 | i7 | 128;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVNotificationIcon-9IZ8Weo");
                }
                if ((i3 & 2) != 0) {
                    f5 = LVAppDesignKitTheme.d(gapComposerH).f48390j;
                } else {
                    f5 = f3;
                }
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.v;
            } else {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVNotificationIcon-9IZ8Weo");
                }
                if ((i3 & 2) != 0) {
                    f5 = LVAppDesignKitTheme.d(gapComposerH).f48390j;
                } else {
                    f5 = f3;
                }
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.v;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            BoxKt.a(BackgroundKt.b(SizeKt.o(dTFunctionNameModifier, f5), j4, RoundedCornerShapeKt.a(f5)), gapComposerH, 0);
            f4 = f5;
            j3 = j4;
        } else {
            gapComposerH.D();
            j3 = j2;
            f4 = f3;
        }
        modifier2 = dTFunctionNameModifier;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(f4, j3, i2, i3) { // from class: r60

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f79258c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ int f79259e;

                {
                    this.f79259e = i3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    LVNotificationIconKt.a(this.f79257b, this.f79258c, this.d, (Composer) obj, iA, this.f79259e);
                    return Unit.f71739a;
                }
            };
        }
    }
}
