package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import defpackage.rp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPSnackBarKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0192  */
    /* JADX WARN: Code duplicated, block: B:101:0x0194  */
    /* JADX WARN: Code duplicated, block: B:105:0x019f  */
    /* JADX WARN: Code duplicated, block: B:107:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:110:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    /* JADX WARN: Code duplicated, block: B:35:0x006f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0072  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:47:0x008c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0094  */
    /* JADX WARN: Code duplicated, block: B:50:0x0097  */
    /* JADX WARN: Code duplicated, block: B:53:0x009c  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:74:0x0109  */
    /* JADX WARN: Code duplicated, block: B:93:0x016c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0186  */
    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    public static final void a(SnackbarHostState snackbarHostState, LazyPagingItems lazyPagingItems, boolean z, Flow flow, Function0 function0, Function0 function1, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        Function0 function2;
        int i5;
        boolean z3;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z4;
        Context context;
        NotificationBuilder notificationBuilderA;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        Object objX;
        boolean z10;
        boolean zY;
        Object objX2;
        int i6;
        int i7;
        int i8;
        snackbarHostState.getClass();
        lazyPagingItems.getClass();
        flow.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1473229131);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= (i2 & 64) == 0 ? gapComposerH.K(lazyPagingItems) : gapComposerH.y(lazyPagingItems) ? 32 : 16;
        }
        int i9 = i3 & 4;
        if (i9 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.y(flow)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i4 |= i8;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerH.y(function0)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((196608 & i2) == 0) {
                function2 = function1;
                if (gapComposerH.y(function2)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i4 |= i6;
            } else {
                function2 = function1;
            }
            i5 = i4;
            if ((74899 & i5) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i9 != 0) {
                    z4 = false;
                } else {
                    z4 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
                z5 = lazyPagingItems.d().f18564c instanceof LoadState.Error;
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z5) {
                    gapComposerH.L(1302182734);
                    Unit unit = Unit.f71739a;
                    if ((i5 & 14) == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zY = z10 | gapComposerH.y(notificationBuilderA) | gapComposerH.y(context);
                    objX2 = gapComposerH.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new PLPSnackBarKt$PLPSnackBar$1$1(snackbarHostState, notificationBuilderA, context, null);
                        gapComposerH.q(objX2);
                    }
                    EffectsKt.e(gapComposerH, unit, (Function2) objX2);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1302489293);
                    gapComposerH.Z(false);
                }
                if ((lazyPagingItems.d().f18562a instanceof LoadState.Error) || lazyPagingItems.b() <= 0 || z4) {
                    z6 = false;
                    gapComposerH.L(1302980333);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1302594011);
                    Unit unit2 = Unit.f71739a;
                    boolean zY2 = ((458752 & i5) == 131072) | ((i5 & 14) == 4) | gapComposerH.y(notificationBuilderA) | gapComposerH.y(context);
                    Object objX3 = gapComposerH.x();
                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                        PLPSnackBarKt$PLPSnackBar$2$1 pLPSnackBarKt$PLPSnackBar$2$1 = new PLPSnackBarKt$PLPSnackBar$2$1(function2, snackbarHostState, notificationBuilderA, context, null);
                        context = context;
                        gapComposerH.q(pLPSnackBarKt$PLPSnackBar$2$1);
                        objX3 = pLPSnackBarKt$PLPSnackBar$2$1;
                    }
                    EffectsKt.e(gapComposerH, unit2, (Function2) objX3);
                    z6 = false;
                    gapComposerH.Z(false);
                }
                Unit unit3 = Unit.f71739a;
                boolean zY3 = gapComposerH.y(flow) | gapComposerH.y(context);
                if ((i5 & 14) == 4) {
                    z7 = true;
                } else {
                    z7 = z6;
                }
                boolean z11 = zY3 | z7;
                if ((57344 & i5) == 16384) {
                    z8 = true;
                } else {
                    z8 = z6;
                }
                z9 = z11 | z8;
                objX = gapComposerH.x();
                if (z9 || objX == composer$Companion$Empty$1) {
                    PLPSnackBarKt$PLPSnackBar$3$1 pLPSnackBarKt$PLPSnackBar$3$1 = new PLPSnackBarKt$PLPSnackBar$3$1(flow, context, snackbarHostState, function0, null);
                    gapComposerH.q(pLPSnackBarKt$PLPSnackBar$3$1);
                    objX = pLPSnackBarKt$PLPSnackBar$3$1;
                }
                EffectsKt.e(gapComposerH, unit3, (Function2) objX);
                z2 = z4;
            } else {
                gapComposerH.D();
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new rp(snackbarHostState, lazyPagingItems, z2, flow, function0, function1, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.y(flow)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i4 |= i8;
        }
        if ((i2 & 24576) == 0) {
            if (gapComposerH.y(function0)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i4 |= i7;
        }
        if ((196608 & i2) == 0) {
            function2 = function1;
            if (gapComposerH.y(function2)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i4 |= i6;
        } else {
            function2 = function1;
        }
        i5 = i4;
        if ((74899 & i5) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i9 != 0) {
                z4 = false;
            } else {
                z4 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
            z5 = lazyPagingItems.d().f18564c instanceof LoadState.Error;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z5) {
                gapComposerH.L(1302182734);
                Unit unit4 = Unit.f71739a;
                if ((i5 & 14) == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zY = z10 | gapComposerH.y(notificationBuilderA) | gapComposerH.y(context);
                objX2 = gapComposerH.x();
                if (zY) {
                    objX2 = new PLPSnackBarKt$PLPSnackBar$1$1(snackbarHostState, notificationBuilderA, context, null);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new PLPSnackBarKt$PLPSnackBar$1$1(snackbarHostState, notificationBuilderA, context, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.e(gapComposerH, unit4, (Function2) objX2);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1302489293);
                gapComposerH.Z(false);
            }
            if (lazyPagingItems.d().f18562a instanceof LoadState.Error) {
                z6 = false;
                gapComposerH.L(1302980333);
                gapComposerH.Z(false);
            } else {
                z6 = false;
                gapComposerH.L(1302980333);
                gapComposerH.Z(false);
            }
            Unit unit5 = Unit.f71739a;
            boolean zY4 = gapComposerH.y(flow) | gapComposerH.y(context);
            if ((i5 & 14) == 4) {
                z7 = true;
            } else {
                z7 = z6;
            }
            boolean z12 = zY4 | z7;
            if ((57344 & i5) == 16384) {
                z8 = true;
            } else {
                z8 = z6;
            }
            z9 = z12 | z8;
            objX = gapComposerH.x();
            if (z9) {
                PLPSnackBarKt$PLPSnackBar$3$1 pLPSnackBarKt$PLPSnackBar$3$2 = new PLPSnackBarKt$PLPSnackBar$3$1(flow, context, snackbarHostState, function0, null);
                gapComposerH.q(pLPSnackBarKt$PLPSnackBar$3$2);
                objX = pLPSnackBarKt$PLPSnackBar$3$2;
            } else {
                PLPSnackBarKt$PLPSnackBar$3$1 pLPSnackBarKt$PLPSnackBar$3$3 = new PLPSnackBarKt$PLPSnackBar$3$1(flow, context, snackbarHostState, function0, null);
                gapComposerH.q(pLPSnackBarKt$PLPSnackBar$3$3);
                objX = pLPSnackBarKt$PLPSnackBar$3$3;
            }
            EffectsKt.e(gapComposerH, unit5, (Function2) objX);
            z2 = z4;
        } else {
            gapComposerH.D();
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(snackbarHostState, lazyPagingItems, z2, flow, function0, function1, i2, i3);
        }
    }
}
