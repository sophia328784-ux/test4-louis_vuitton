package androidx.compose.foundation.pager;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.zl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PagerKt {
    /* JADX WARN: Code duplicated, block: B:101:0x011a  */
    /* JADX WARN: Code duplicated, block: B:103:0x0121  */
    /* JADX WARN: Code duplicated, block: B:105:0x0125  */
    /* JADX WARN: Code duplicated, block: B:107:0x012f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0132  */
    /* JADX WARN: Code duplicated, block: B:112:0x013c  */
    /* JADX WARN: Code duplicated, block: B:115:0x0148  */
    /* JADX WARN: Code duplicated, block: B:116:0x014b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0151  */
    /* JADX WARN: Code duplicated, block: B:121:0x0159  */
    /* JADX WARN: Code duplicated, block: B:122:0x015c  */
    /* JADX WARN: Code duplicated, block: B:124:0x0161  */
    /* JADX WARN: Code duplicated, block: B:127:0x0171  */
    /* JADX WARN: Code duplicated, block: B:131:0x017b  */
    /* JADX WARN: Code duplicated, block: B:134:0x0185  */
    /* JADX WARN: Code duplicated, block: B:136:0x018f  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:145:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:146:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:155:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:157:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:159:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:160:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:163:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:164:0x0209  */
    /* JADX WARN: Code duplicated, block: B:167:0x0211  */
    /* JADX WARN: Code duplicated, block: B:170:0x0216  */
    /* JADX WARN: Code duplicated, block: B:173:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:176:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00de  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:87:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:92:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:94:0x0103  */
    /* JADX WARN: Code duplicated, block: B:96:0x010d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110  */
    public static final void a(final PagerState pagerState, Modifier modifier, PaddingValues paddingValues, PageSize pageSize, int i2, float f2, Alignment.Vertical vertical, TargetedFlingBehavior targetedFlingBehavior, boolean z, boolean z2, NestedScrollConnection nestedScrollConnection, SnapPosition snapPosition, OverscrollEffect overscrollEffect, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3, final int i4, final int i5) {
        int i6;
        PaddingValues paddingValues2;
        int i7;
        PageSize pageSize2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f3;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z3;
        GapComposer gapComposer;
        final Alignment.Vertical vertical2;
        final TargetedFlingBehavior targetedFlingBehavior2;
        final boolean z4;
        final NestedScrollConnection nestedScrollConnection2;
        final OverscrollEffect overscrollEffect2;
        final PaddingValues paddingValues3;
        final PageSize pageSize3;
        final int i24;
        final float f4;
        final Modifier modifier2;
        final boolean z5;
        final SnapPosition snapPosition2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        PaddingValues paddingValuesA;
        PageSize pageSize4;
        Alignment.Vertical vertical3;
        PagerState pagerState2;
        GapComposer gapComposer2;
        TargetedFlingBehavior targetedFlingBehaviorA;
        int i25;
        int i26;
        PageSize pageSize5;
        OverscrollEffect overscrollEffectA;
        boolean z6;
        PaddingValues paddingValues4;
        int i27;
        SnapPosition snapPosition3;
        Alignment.Vertical vertical4;
        TargetedFlingBehavior targetedFlingBehavior3;
        boolean z7;
        int i28;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "HorizontalPager--8jOkeI");
        }
        GapComposer gapComposerH = composer.h(1860873769);
        if ((i3 & 6) == 0) {
            i6 = (gapComposerH.K(pagerState) ? 4 : 2) | i3;
        } else {
            i6 = i3;
        }
        int i29 = i5 & 2;
        if (i29 != 0) {
            i6 |= 48;
        } else if ((i3 & 48) == 0) {
            i6 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i30 = i5 & 4;
        if (i30 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                paddingValues2 = paddingValues;
                i6 |= gapComposerH.K(paddingValues2) ? 256 : 128;
            }
            i7 = i5 & 8;
            if (i7 != 0) {
                if ((i3 & 3072) == 0) {
                    pageSize2 = pageSize;
                    if (gapComposerH.K(pageSize2)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i6 |= i8;
                }
                i9 = i5 & 16;
                if (i9 != 0) {
                    if ((i3 & 24576) == 0) {
                        i10 = i2;
                        if (gapComposerH.d(i10)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i6 |= i11;
                    }
                    i12 = i5 & 32;
                    if (i12 != 0) {
                        i6 |= ImageMetadata.EDGE_MODE;
                        f3 = f2;
                    } else {
                        f3 = f2;
                        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.c(f3)) {
                                i13 = 131072;
                            } else {
                                i13 = 65536;
                            }
                            i6 |= i13;
                        }
                    }
                    i14 = i5 & 64;
                    if (i14 != 0) {
                        if ((i3 & 1572864) == 0) {
                            if (gapComposerH.K(vertical)) {
                                i15 = 1048576;
                            } else {
                                i15 = 524288;
                            }
                            i6 |= i15;
                        }
                        if ((i3 & 12582912) != 0) {
                            i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                        }
                        i16 = i5 & 256;
                        if (i16 != 0) {
                            if ((i3 & 100663296) == 0) {
                                if (gapComposerH.b(z)) {
                                    i17 = 67108864;
                                } else {
                                    i17 = 33554432;
                                }
                                i6 |= i17;
                            }
                            i18 = i5 & 512;
                            if (i18 != 0) {
                                if ((i3 & 805306368) == 0) {
                                    if (gapComposerH.b(z2)) {
                                        i19 = PKIFailureInfo.duplicateCertReq;
                                    } else {
                                        i19 = 268435456;
                                    }
                                    i6 |= i19;
                                }
                                i20 = i4 | 6;
                                if ((i4 & 48) == 0) {
                                    i20 = i4 | 22;
                                }
                                i21 = i20;
                                i22 = i21 | KyberEngine.KyberPolyBytes;
                                if ((i4 & 3072) == 0) {
                                    i23 = i21 | 1408;
                                } else {
                                    i23 = i22;
                                }
                                if ((i4 & 24576) != 0) {
                                    if (gapComposerH.y(composableLambdaImpl)) {
                                        i28 = 16384;
                                    } else {
                                        i28 = 8192;
                                    }
                                    i23 |= i28;
                                }
                                if ((i6 & 306783379) == 306783378 || (i23 & 9363) != 9362) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (gapComposerH.p(i6 & 1, z3)) {
                                    gapComposerH.y0();
                                    if ((i3 & 1) != 0 || gapComposerH.h0()) {
                                        if (i29 != 0) {
                                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                        } else {
                                            dTFunctionNameModifier = modifierE;
                                        }
                                        if (i30 != 0) {
                                            Dp.Companion companion = Dp.f11004c;
                                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        } else {
                                            paddingValuesA = paddingValues2;
                                        }
                                        if (i7 != 0) {
                                            pageSize4 = PageSize.Fill.f5709a;
                                        } else {
                                            pageSize4 = pageSize2;
                                        }
                                        if (i9 != 0) {
                                            i10 = 0;
                                        }
                                        if (i12 != 0) {
                                            Dp.Companion companion2 = Dp.f11004c;
                                            f3 = 0.0f;
                                        }
                                        if (i14 != 0) {
                                            Alignment.f8582a.getClass();
                                            vertical3 = Alignment.Companion.l;
                                        } else {
                                            vertical3 = vertical;
                                        }
                                        if ((i5 & 128) != 0) {
                                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                            pagerState2 = pagerState;
                                            gapComposer2 = gapComposerH;
                                            i6 &= -29360129;
                                        } else {
                                            pagerState2 = pagerState;
                                            gapComposer2 = gapComposerH;
                                            targetedFlingBehaviorA = targetedFlingBehavior;
                                        }
                                        boolean z8 = i16 == 0 ? z : true;
                                        boolean z9 = i18 == 0 ? z2 : false;
                                        NestedScrollConnection nestedScrollConnectionB = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                        modifierE = dTFunctionNameModifier;
                                        i25 = i23 & (-7281);
                                        i26 = i6;
                                        pageSize5 = pageSize4;
                                        gapComposer = gapComposer2;
                                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                                        z6 = z9;
                                        nestedScrollConnection2 = nestedScrollConnectionB;
                                        paddingValues4 = paddingValuesA;
                                        i27 = i10;
                                        snapPosition3 = SnapPosition.Start.f4877a;
                                        vertical4 = vertical3;
                                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                                        z7 = z8;
                                    } else {
                                        gapComposerH.D();
                                        if ((i5 & 128) != 0) {
                                            i6 &= -29360129;
                                        }
                                        i25 = i23 & (-7281);
                                        vertical4 = vertical;
                                        targetedFlingBehavior3 = targetedFlingBehavior;
                                        z6 = z2;
                                        nestedScrollConnection2 = nestedScrollConnection;
                                        gapComposer = gapComposerH;
                                        i26 = i6;
                                        paddingValues4 = paddingValues2;
                                        pageSize5 = pageSize2;
                                        i27 = i10;
                                        z7 = z;
                                        snapPosition3 = snapPosition;
                                        overscrollEffectA = overscrollEffect;
                                    }
                                    float f5 = f3;
                                    gapComposer.a0();
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    Orientation orientation = Orientation.Horizontal;
                                    Alignment.f8582a.getClass();
                                    BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                                    int i31 = i25;
                                    int i32 = i26 >> 6;
                                    int i33 = i26 << 12;
                                    int i34 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i32 & ImageMetadata.JPEG_GPS_COORDINATES) | (i32 & 3670016) | (i33 & 234881024) | (i33 & 1879048192);
                                    int i35 = i31 << 6;
                                    int i36 = ((i26 >> 9) & 14) | 3072 | (i35 & 896) | (i32 & 57344) | ((i31 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i35 & 3670016);
                                    Modifier modifier3 = modifierE;
                                    LazyLayoutPagerKt.a(modifier3, pagerState, paddingValues4, z6, orientation, targetedFlingBehavior3, z7, overscrollEffectA, i27, f5, pageSize5, nestedScrollConnection2, horizontal, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i34, i36);
                                    int i37 = i27;
                                    targetedFlingBehavior2 = targetedFlingBehavior3;
                                    i24 = i37;
                                    z4 = z7;
                                    f4 = f5;
                                    Alignment.Vertical vertical5 = vertical4;
                                    overscrollEffect2 = overscrollEffectA;
                                    vertical2 = vertical5;
                                    pageSize3 = pageSize5;
                                    snapPosition2 = snapPosition3;
                                    z5 = z6;
                                    paddingValues3 = paddingValues4;
                                    modifier2 = modifier3;
                                } else {
                                    gapComposer = gapComposerH;
                                    gapComposer.D();
                                    vertical2 = vertical;
                                    targetedFlingBehavior2 = targetedFlingBehavior;
                                    z4 = z;
                                    nestedScrollConnection2 = nestedScrollConnection;
                                    overscrollEffect2 = overscrollEffect;
                                    paddingValues3 = paddingValues2;
                                    pageSize3 = pageSize2;
                                    i24 = i10;
                                    f4 = f3;
                                    modifier2 = modifierE;
                                    z5 = z2;
                                    snapPosition2 = snapPosition;
                                }
                                recomposeScopeImplB0 = gapComposer.b0();
                                if (recomposeScopeImplB0 != null) {
                                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj, Object obj2) {
                                            ((Integer) obj2).getClass();
                                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                                            int iA2 = RecomposeScopeImplKt.a(i4);
                                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                            return Unit.f71739a;
                                        }
                                    };
                                }
                            }
                            i6 |= 805306368;
                            i20 = i4 | 6;
                            if ((i4 & 48) == 0) {
                                i20 = i4 | 22;
                            }
                            i21 = i20;
                            i22 = i21 | KyberEngine.KyberPolyBytes;
                            if ((i4 & 3072) == 0) {
                                i23 = i21 | 1408;
                            } else {
                                i23 = i22;
                            }
                            if ((i4 & 24576) != 0) {
                                if (gapComposerH.y(composableLambdaImpl)) {
                                    i28 = 16384;
                                } else {
                                    i28 = 8192;
                                }
                                i23 |= i28;
                            }
                            if ((i6 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i6 & 1, z3)) {
                                gapComposerH.y0();
                                if ((i3 & 1) != 0) {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion3 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion4 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB2 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB2;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                } else {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion5 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion6 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB3 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB3;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                }
                                float f6 = f3;
                                gapComposer.a0();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Orientation orientation2 = Orientation.Horizontal;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
                                int i38 = i25;
                                int i39 = i26 >> 6;
                                int i310 = i26 << 12;
                                int i311 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i39 & ImageMetadata.JPEG_GPS_COORDINATES) | (i39 & 3670016) | (i310 & 234881024) | (i310 & 1879048192);
                                int i312 = i38 << 6;
                                int i313 = ((i26 >> 9) & 14) | 3072 | (i312 & 896) | (i39 & 57344) | ((i38 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i312 & 3670016);
                                Modifier modifier4 = modifierE;
                                LazyLayoutPagerKt.a(modifier4, pagerState, paddingValues4, z6, orientation2, targetedFlingBehavior3, z7, overscrollEffectA, i27, f6, pageSize5, nestedScrollConnection2, horizontal2, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311, i313);
                                int i314 = i27;
                                targetedFlingBehavior2 = targetedFlingBehavior3;
                                i24 = i314;
                                z4 = z7;
                                f4 = f6;
                                Alignment.Vertical vertical6 = vertical4;
                                overscrollEffect2 = overscrollEffectA;
                                vertical2 = vertical6;
                                pageSize3 = pageSize5;
                                snapPosition2 = snapPosition3;
                                z5 = z6;
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier4;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                vertical2 = vertical;
                                targetedFlingBehavior2 = targetedFlingBehavior;
                                z4 = z;
                                nestedScrollConnection2 = nestedScrollConnection;
                                overscrollEffect2 = overscrollEffect;
                                paddingValues3 = paddingValues2;
                                pageSize3 = pageSize2;
                                i24 = i10;
                                f4 = f3;
                                modifier2 = modifierE;
                                z5 = z2;
                                snapPosition2 = snapPosition;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i4);
                                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i6 |= 100663296;
                        i18 = i5 & 512;
                        if (i18 != 0) {
                            if ((i3 & 805306368) == 0) {
                                if (gapComposerH.b(z2)) {
                                    i19 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i19 = 268435456;
                                }
                                i6 |= i19;
                            }
                            i20 = i4 | 6;
                            if ((i4 & 48) == 0) {
                                i20 = i4 | 22;
                            }
                            i21 = i20;
                            i22 = i21 | KyberEngine.KyberPolyBytes;
                            if ((i4 & 3072) == 0) {
                                i23 = i21 | 1408;
                            } else {
                                i23 = i22;
                            }
                            if ((i4 & 24576) != 0) {
                                if (gapComposerH.y(composableLambdaImpl)) {
                                    i28 = 16384;
                                } else {
                                    i28 = 8192;
                                }
                                i23 |= i28;
                            }
                            if ((i6 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i6 & 1, z3)) {
                                gapComposerH.y0();
                                if ((i3 & 1) != 0) {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion7 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion8 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB4 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB4;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                } else {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion9 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion10 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB5 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB5;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                }
                                float f7 = f3;
                                gapComposer.a0();
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                Orientation orientation3 = Orientation.Horizontal;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal3 = Alignment.Companion.o;
                                int i315 = i25;
                                int i316 = i26 >> 6;
                                int i317 = i26 << 12;
                                int i318 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i316 & ImageMetadata.JPEG_GPS_COORDINATES) | (i316 & 3670016) | (i317 & 234881024) | (i317 & 1879048192);
                                int i319 = i315 << 6;
                                int i3110 = ((i26 >> 9) & 14) | 3072 | (i319 & 896) | (i316 & 57344) | ((i315 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i319 & 3670016);
                                Modifier modifier5 = modifierE;
                                LazyLayoutPagerKt.a(modifier5, pagerState, paddingValues4, z6, orientation3, targetedFlingBehavior3, z7, overscrollEffectA, i27, f7, pageSize5, nestedScrollConnection2, horizontal3, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i318, i3110);
                                int i3111 = i27;
                                targetedFlingBehavior2 = targetedFlingBehavior3;
                                i24 = i3111;
                                z4 = z7;
                                f4 = f7;
                                Alignment.Vertical vertical7 = vertical4;
                                overscrollEffect2 = overscrollEffectA;
                                vertical2 = vertical7;
                                pageSize3 = pageSize5;
                                snapPosition2 = snapPosition3;
                                z5 = z6;
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier5;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                vertical2 = vertical;
                                targetedFlingBehavior2 = targetedFlingBehavior;
                                z4 = z;
                                nestedScrollConnection2 = nestedScrollConnection;
                                overscrollEffect2 = overscrollEffect;
                                paddingValues3 = paddingValues2;
                                pageSize3 = pageSize2;
                                i24 = i10;
                                f4 = f3;
                                modifier2 = modifierE;
                                z5 = z2;
                                snapPosition2 = snapPosition;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i4);
                                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i6 |= 805306368;
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion12 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB6 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB6;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion13 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion14 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB7 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB7;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f8 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            Orientation orientation4 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal4 = Alignment.Companion.o;
                            int i3112 = i25;
                            int i3113 = i26 >> 6;
                            int i3114 = i26 << 12;
                            int i3115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3113 & 3670016) | (i3114 & 234881024) | (i3114 & 1879048192);
                            int i3116 = i3112 << 6;
                            int i3117 = ((i26 >> 9) & 14) | 3072 | (i3116 & 896) | (i3113 & 57344) | ((i3112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3116 & 3670016);
                            Modifier modifier6 = modifierE;
                            LazyLayoutPagerKt.a(modifier6, pagerState, paddingValues4, z6, orientation4, targetedFlingBehavior3, z7, overscrollEffectA, i27, f8, pageSize5, nestedScrollConnection2, horizontal4, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3115, i3117);
                            int i3118 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i3118;
                            z4 = z7;
                            f4 = f8;
                            Alignment.Vertical vertical8 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical8;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier6;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 1572864;
                    if ((i3 & 12582912) != 0) {
                        i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                    }
                    i16 = i5 & 256;
                    if (i16 != 0) {
                        if ((i3 & 100663296) == 0) {
                            if (gapComposerH.b(z)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i6 |= i17;
                        }
                        i18 = i5 & 512;
                        if (i18 != 0) {
                            if ((i3 & 805306368) == 0) {
                                if (gapComposerH.b(z2)) {
                                    i19 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i19 = 268435456;
                                }
                                i6 |= i19;
                            }
                            i20 = i4 | 6;
                            if ((i4 & 48) == 0) {
                                i20 = i4 | 22;
                            }
                            i21 = i20;
                            i22 = i21 | KyberEngine.KyberPolyBytes;
                            if ((i4 & 3072) == 0) {
                                i23 = i21 | 1408;
                            } else {
                                i23 = i22;
                            }
                            if ((i4 & 24576) != 0) {
                                if (gapComposerH.y(composableLambdaImpl)) {
                                    i28 = 16384;
                                } else {
                                    i28 = 8192;
                                }
                                i23 |= i28;
                            }
                            if ((i6 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i6 & 1, z3)) {
                                gapComposerH.y0();
                                if ((i3 & 1) != 0) {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion15 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion16 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB8 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB8;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                } else {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion17 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion18 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB9 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB9;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                }
                                float f9 = f3;
                                gapComposer.a0();
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                Orientation orientation5 = Orientation.Horizontal;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal5 = Alignment.Companion.o;
                                int i3119 = i25;
                                int i31110 = i26 >> 6;
                                int i31111 = i26 << 12;
                                int i31112 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31110 & 3670016) | (i31111 & 234881024) | (i31111 & 1879048192);
                                int i31113 = i3119 << 6;
                                int i31114 = ((i26 >> 9) & 14) | 3072 | (i31113 & 896) | (i31110 & 57344) | ((i3119 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31113 & 3670016);
                                Modifier modifier7 = modifierE;
                                LazyLayoutPagerKt.a(modifier7, pagerState, paddingValues4, z6, orientation5, targetedFlingBehavior3, z7, overscrollEffectA, i27, f9, pageSize5, nestedScrollConnection2, horizontal5, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31112, i31114);
                                int i31115 = i27;
                                targetedFlingBehavior2 = targetedFlingBehavior3;
                                i24 = i31115;
                                z4 = z7;
                                f4 = f9;
                                Alignment.Vertical vertical9 = vertical4;
                                overscrollEffect2 = overscrollEffectA;
                                vertical2 = vertical9;
                                pageSize3 = pageSize5;
                                snapPosition2 = snapPosition3;
                                z5 = z6;
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier7;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                vertical2 = vertical;
                                targetedFlingBehavior2 = targetedFlingBehavior;
                                z4 = z;
                                nestedScrollConnection2 = nestedScrollConnection;
                                overscrollEffect2 = overscrollEffect;
                                paddingValues3 = paddingValues2;
                                pageSize3 = pageSize2;
                                i24 = i10;
                                f4 = f3;
                                modifier2 = modifierE;
                                z5 = z2;
                                snapPosition2 = snapPosition;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i4);
                                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i6 |= 805306368;
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion19 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion110 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB10 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB10;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f10 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                            Orientation orientation6 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal6 = Alignment.Companion.o;
                            int i31116 = i25;
                            int i31117 = i26 >> 6;
                            int i31118 = i26 << 12;
                            int i31119 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31117 & 3670016) | (i31118 & 234881024) | (i31118 & 1879048192);
                            int i311110 = i31116 << 6;
                            int i311111 = ((i26 >> 9) & 14) | 3072 | (i311110 & 896) | (i31117 & 57344) | ((i31116 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311110 & 3670016);
                            Modifier modifier8 = modifierE;
                            LazyLayoutPagerKt.a(modifier8, pagerState, paddingValues4, z6, orientation6, targetedFlingBehavior3, z7, overscrollEffectA, i27, f10, pageSize5, nestedScrollConnection2, horizontal6, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31119, i311111);
                            int i311112 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311112;
                            z4 = z7;
                            f4 = f10;
                            Alignment.Vertical vertical10 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical10;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier8;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 100663296;
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion113 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion114 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB12 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB12;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion115 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion116 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB13 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB13;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f11 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                            Orientation orientation7 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal7 = Alignment.Companion.o;
                            int i311113 = i25;
                            int i311114 = i26 >> 6;
                            int i311115 = i26 << 12;
                            int i311116 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311114 & 3670016) | (i311115 & 234881024) | (i311115 & 1879048192);
                            int i311117 = i311113 << 6;
                            int i311118 = ((i26 >> 9) & 14) | 3072 | (i311117 & 896) | (i311114 & 57344) | ((i311113 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311117 & 3670016);
                            Modifier modifier9 = modifierE;
                            LazyLayoutPagerKt.a(modifier9, pagerState, paddingValues4, z6, orientation7, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11, pageSize5, nestedScrollConnection2, horizontal7, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311116, i311118);
                            int i311119 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311119;
                            z4 = z7;
                            f4 = f11;
                            Alignment.Vertical vertical11 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical11;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier9;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB14 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB14;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion1110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB15 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB15;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f12 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                        Orientation orientation8 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal8 = Alignment.Companion.o;
                        int i3111110 = i25;
                        int i3111111 = i26 >> 6;
                        int i3111112 = i26 << 12;
                        int i3111113 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111 & 3670016) | (i3111112 & 234881024) | (i3111112 & 1879048192);
                        int i3111114 = i3111110 << 6;
                        int i3111115 = ((i26 >> 9) & 14) | 3072 | (i3111114 & 896) | (i3111111 & 57344) | ((i3111110 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111114 & 3670016);
                        Modifier modifier10 = modifierE;
                        LazyLayoutPagerKt.a(modifier10, pagerState, paddingValues4, z6, orientation8, targetedFlingBehavior3, z7, overscrollEffectA, i27, f12, pageSize5, nestedScrollConnection2, horizontal8, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111113, i3111115);
                        int i3111116 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111116;
                        z4 = z7;
                        f4 = f12;
                        Alignment.Vertical vertical12 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical12;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier10;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 24576;
                i10 = i2;
                i12 = i5 & 32;
                if (i12 != 0) {
                    i6 |= ImageMetadata.EDGE_MODE;
                    f3 = f2;
                } else {
                    f3 = f2;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.c(f3)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i6 |= i13;
                    }
                }
                i14 = i5 & 64;
                if (i14 != 0) {
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.K(vertical)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i6 |= i15;
                    }
                    if ((i3 & 12582912) != 0) {
                        i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                    }
                    i16 = i5 & 256;
                    if (i16 != 0) {
                        if ((i3 & 100663296) == 0) {
                            if (gapComposerH.b(z)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i6 |= i17;
                        }
                        i18 = i5 & 512;
                        if (i18 != 0) {
                            if ((i3 & 805306368) == 0) {
                                if (gapComposerH.b(z2)) {
                                    i19 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i19 = 268435456;
                                }
                                i6 |= i19;
                            }
                            i20 = i4 | 6;
                            if ((i4 & 48) == 0) {
                                i20 = i4 | 22;
                            }
                            i21 = i20;
                            i22 = i21 | KyberEngine.KyberPolyBytes;
                            if ((i4 & 3072) == 0) {
                                i23 = i21 | 1408;
                            } else {
                                i23 = i22;
                            }
                            if ((i4 & 24576) != 0) {
                                if (gapComposerH.y(composableLambdaImpl)) {
                                    i28 = 16384;
                                } else {
                                    i28 = 8192;
                                }
                                i23 |= i28;
                            }
                            if ((i6 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i6 & 1, z3)) {
                                gapComposerH.y0();
                                if ((i3 & 1) != 0) {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion1111 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion1112 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB16 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB16;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                } else {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion1113 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion1114 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB17 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB17;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                }
                                float f13 = f3;
                                gapComposer.a0();
                                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                Orientation orientation9 = Orientation.Horizontal;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal9 = Alignment.Companion.o;
                                int i3111117 = i25;
                                int i3111118 = i26 >> 6;
                                int i3111119 = i26 << 12;
                                int i31111110 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111118 & 3670016) | (i3111119 & 234881024) | (i3111119 & 1879048192);
                                int i31111111 = i3111117 << 6;
                                int i31111112 = ((i26 >> 9) & 14) | 3072 | (i31111111 & 896) | (i3111118 & 57344) | ((i3111117 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111 & 3670016);
                                Modifier modifier11 = modifierE;
                                LazyLayoutPagerKt.a(modifier11, pagerState, paddingValues4, z6, orientation9, targetedFlingBehavior3, z7, overscrollEffectA, i27, f13, pageSize5, nestedScrollConnection2, horizontal9, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111110, i31111112);
                                int i31111113 = i27;
                                targetedFlingBehavior2 = targetedFlingBehavior3;
                                i24 = i31111113;
                                z4 = z7;
                                f4 = f13;
                                Alignment.Vertical vertical13 = vertical4;
                                overscrollEffect2 = overscrollEffectA;
                                vertical2 = vertical13;
                                pageSize3 = pageSize5;
                                snapPosition2 = snapPosition3;
                                z5 = z6;
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier11;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                vertical2 = vertical;
                                targetedFlingBehavior2 = targetedFlingBehavior;
                                z4 = z;
                                nestedScrollConnection2 = nestedScrollConnection;
                                overscrollEffect2 = overscrollEffect;
                                paddingValues3 = paddingValues2;
                                pageSize3 = pageSize2;
                                i24 = i10;
                                f4 = f3;
                                modifier2 = modifierE;
                                z5 = z2;
                                snapPosition2 = snapPosition;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i4);
                                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i6 |= 805306368;
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1115 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion1116 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB18 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB18;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1117 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion1118 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB19 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB19;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f14 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                            Orientation orientation10 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal10 = Alignment.Companion.o;
                            int i31111114 = i25;
                            int i31111115 = i26 >> 6;
                            int i31111116 = i26 << 12;
                            int i31111117 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111115 & 3670016) | (i31111116 & 234881024) | (i31111116 & 1879048192);
                            int i31111118 = i31111114 << 6;
                            int i31111119 = ((i26 >> 9) & 14) | 3072 | (i31111118 & 896) | (i31111115 & 57344) | ((i31111114 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111118 & 3670016);
                            Modifier modifier12 = modifierE;
                            LazyLayoutPagerKt.a(modifier12, pagerState, paddingValues4, z6, orientation10, targetedFlingBehavior3, z7, overscrollEffectA, i27, f14, pageSize5, nestedScrollConnection2, horizontal10, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111117, i31111119);
                            int i311111110 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311111110;
                            z4 = z7;
                            f4 = f14;
                            Alignment.Vertical vertical14 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical14;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier12;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 100663296;
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1119 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11110 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB110;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB111;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f15 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                            Orientation orientation11 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal11 = Alignment.Companion.o;
                            int i311111111 = i25;
                            int i311111112 = i26 >> 6;
                            int i311111113 = i26 << 12;
                            int i311111114 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111112 & 3670016) | (i311111113 & 234881024) | (i311111113 & 1879048192);
                            int i311111115 = i311111111 << 6;
                            int i311111116 = ((i26 >> 9) & 14) | 3072 | (i311111115 & 896) | (i311111112 & 57344) | ((i311111111 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111115 & 3670016);
                            Modifier modifier13 = modifierE;
                            LazyLayoutPagerKt.a(modifier13, pagerState, paddingValues4, z6, orientation11, targetedFlingBehavior3, z7, overscrollEffectA, i27, f15, pageSize5, nestedScrollConnection2, horizontal11, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111114, i311111116);
                            int i311111117 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311111117;
                            z4 = z7;
                            f4 = f15;
                            Alignment.Vertical vertical15 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical15;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier13;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB112;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB113;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f16 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                        Orientation orientation12 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal12 = Alignment.Companion.o;
                        int i311111118 = i25;
                        int i311111119 = i26 >> 6;
                        int i3111111110 = i26 << 12;
                        int i3111111111 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111119 & 3670016) | (i3111111110 & 234881024) | (i3111111110 & 1879048192);
                        int i3111111112 = i311111118 << 6;
                        int i3111111113 = ((i26 >> 9) & 14) | 3072 | (i3111111112 & 896) | (i311111119 & 57344) | ((i311111118 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111112 & 3670016);
                        Modifier modifier14 = modifierE;
                        LazyLayoutPagerKt.a(modifier14, pagerState, paddingValues4, z6, orientation12, targetedFlingBehavior3, z7, overscrollEffectA, i27, f16, pageSize5, nestedScrollConnection2, horizontal12, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111, i3111111113);
                        int i3111111114 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111114;
                        z4 = z7;
                        f4 = f16;
                        Alignment.Vertical vertical16 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical16;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier14;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 1572864;
                if ((i3 & 12582912) != 0) {
                    i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                }
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i6 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11117 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11118 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB114;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11119 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion111110 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB115;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f17 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                            Orientation orientation13 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal13 = Alignment.Companion.o;
                            int i3111111115 = i25;
                            int i3111111116 = i26 >> 6;
                            int i3111111117 = i26 << 12;
                            int i3111111118 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111116 & 3670016) | (i3111111117 & 234881024) | (i3111111117 & 1879048192);
                            int i3111111119 = i3111111115 << 6;
                            int i31111111110 = ((i26 >> 9) & 14) | 3072 | (i3111111119 & 896) | (i3111111116 & 57344) | ((i3111111115 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111119 & 3670016);
                            Modifier modifier15 = modifierE;
                            LazyLayoutPagerKt.a(modifier15, pagerState, paddingValues4, z6, orientation13, targetedFlingBehavior3, z7, overscrollEffectA, i27, f17, pageSize5, nestedScrollConnection2, horizontal13, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111118, i31111111110);
                            int i31111111111 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i31111111111;
                            z4 = z7;
                            f4 = f17;
                            Alignment.Vertical vertical17 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical17;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier15;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111112 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB116;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB117;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f18 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                        Orientation orientation14 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal14 = Alignment.Companion.o;
                        int i31111111112 = i25;
                        int i31111111113 = i26 >> 6;
                        int i31111111114 = i26 << 12;
                        int i31111111115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111113 & 3670016) | (i31111111114 & 234881024) | (i31111111114 & 1879048192);
                        int i31111111116 = i31111111112 << 6;
                        int i31111111117 = ((i26 >> 9) & 14) | 3072 | (i31111111116 & 896) | (i31111111113 & 57344) | ((i31111111112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111116 & 3670016);
                        Modifier modifier16 = modifierE;
                        LazyLayoutPagerKt.a(modifier16, pagerState, paddingValues4, z6, orientation14, targetedFlingBehavior3, z7, overscrollEffectA, i27, f18, pageSize5, nestedScrollConnection2, horizontal14, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111115, i31111111117);
                        int i31111111118 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111118;
                        z4 = z7;
                        f4 = f18;
                        Alignment.Vertical vertical18 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical18;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier16;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB118;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB119;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f19 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                        Orientation orientation15 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal15 = Alignment.Companion.o;
                        int i31111111119 = i25;
                        int i311111111110 = i26 >> 6;
                        int i311111111111 = i26 << 12;
                        int i311111111112 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111110 & 3670016) | (i311111111111 & 234881024) | (i311111111111 & 1879048192);
                        int i311111111113 = i31111111119 << 6;
                        int i311111111114 = ((i26 >> 9) & 14) | 3072 | (i311111111113 & 896) | (i311111111110 & 57344) | ((i31111111119 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111113 & 3670016);
                        Modifier modifier17 = modifierE;
                        LazyLayoutPagerKt.a(modifier17, pagerState, paddingValues4, z6, orientation15, targetedFlingBehavior3, z7, overscrollEffectA, i27, f19, pageSize5, nestedScrollConnection2, horizontal15, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111112, i311111111114);
                        int i311111111115 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i311111111115;
                        z4 = z7;
                        f4 = f19;
                        Alignment.Vertical vertical19 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical19;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier17;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111119 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111110 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1110;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f110 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    Orientation orientation16 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal16 = Alignment.Companion.o;
                    int i311111111116 = i25;
                    int i311111111117 = i26 >> 6;
                    int i311111111118 = i26 << 12;
                    int i311111111119 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111117 & 3670016) | (i311111111118 & 234881024) | (i311111111118 & 1879048192);
                    int i3111111111110 = i311111111116 << 6;
                    int i3111111111111 = ((i26 >> 9) & 14) | 3072 | (i3111111111110 & 896) | (i311111111117 & 57344) | ((i311111111116 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111110 & 3670016);
                    Modifier modifier18 = modifierE;
                    LazyLayoutPagerKt.a(modifier18, pagerState, paddingValues4, z6, orientation16, targetedFlingBehavior3, z7, overscrollEffectA, i27, f110, pageSize5, nestedScrollConnection2, horizontal16, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111119, i3111111111111);
                    int i3111111111112 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i3111111111112;
                    z4 = z7;
                    f4 = f110;
                    Alignment.Vertical vertical110 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical110;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier18;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 3072;
            pageSize2 = pageSize;
            i9 = i5 & 16;
            if (i9 != 0) {
                if ((i3 & 24576) == 0) {
                    i10 = i2;
                    if (gapComposerH.d(i10)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i6 |= i11;
                }
                i12 = i5 & 32;
                if (i12 != 0) {
                    i6 |= ImageMetadata.EDGE_MODE;
                    f3 = f2;
                } else {
                    f3 = f2;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.c(f3)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i6 |= i13;
                    }
                }
                i14 = i5 & 64;
                if (i14 != 0) {
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.K(vertical)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i6 |= i15;
                    }
                    if ((i3 & 12582912) != 0) {
                        i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                    }
                    i16 = i5 & 256;
                    if (i16 != 0) {
                        if ((i3 & 100663296) == 0) {
                            if (gapComposerH.b(z)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i6 |= i17;
                        }
                        i18 = i5 & 512;
                        if (i18 != 0) {
                            if ((i3 & 805306368) == 0) {
                                if (gapComposerH.b(z2)) {
                                    i19 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i19 = 268435456;
                                }
                                i6 |= i19;
                            }
                            i20 = i4 | 6;
                            if ((i4 & 48) == 0) {
                                i20 = i4 | 22;
                            }
                            i21 = i20;
                            i22 = i21 | KyberEngine.KyberPolyBytes;
                            if ((i4 & 3072) == 0) {
                                i23 = i21 | 1408;
                            } else {
                                i23 = i22;
                            }
                            if ((i4 & 24576) != 0) {
                                if (gapComposerH.y(composableLambdaImpl)) {
                                    i28 = 16384;
                                } else {
                                    i28 = 8192;
                                }
                                i23 |= i28;
                            }
                            if ((i6 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i6 & 1, z3)) {
                                gapComposerH.y0();
                                if ((i3 & 1) != 0) {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion1111113 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion1111114 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB1112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB1112;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                } else {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion1111115 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion1111116 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB1113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB1113;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                }
                                float f111 = f3;
                                gapComposer.a0();
                                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                                Orientation orientation17 = Orientation.Horizontal;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal17 = Alignment.Companion.o;
                                int i3111111111113 = i25;
                                int i3111111111114 = i26 >> 6;
                                int i3111111111115 = i26 << 12;
                                int i3111111111116 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111114 & 3670016) | (i3111111111115 & 234881024) | (i3111111111115 & 1879048192);
                                int i3111111111117 = i3111111111113 << 6;
                                int i3111111111118 = ((i26 >> 9) & 14) | 3072 | (i3111111111117 & 896) | (i3111111111114 & 57344) | ((i3111111111113 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111117 & 3670016);
                                Modifier modifier19 = modifierE;
                                LazyLayoutPagerKt.a(modifier19, pagerState, paddingValues4, z6, orientation17, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111, pageSize5, nestedScrollConnection2, horizontal17, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111116, i3111111111118);
                                int i3111111111119 = i27;
                                targetedFlingBehavior2 = targetedFlingBehavior3;
                                i24 = i3111111111119;
                                z4 = z7;
                                f4 = f111;
                                Alignment.Vertical vertical111 = vertical4;
                                overscrollEffect2 = overscrollEffectA;
                                vertical2 = vertical111;
                                pageSize3 = pageSize5;
                                snapPosition2 = snapPosition3;
                                z5 = z6;
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier19;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                vertical2 = vertical;
                                targetedFlingBehavior2 = targetedFlingBehavior;
                                z4 = z;
                                nestedScrollConnection2 = nestedScrollConnection;
                                overscrollEffect2 = overscrollEffect;
                                paddingValues3 = paddingValues2;
                                pageSize3 = pageSize2;
                                i24 = i10;
                                f4 = f3;
                                modifier2 = modifierE;
                                z5 = z2;
                                snapPosition2 = snapPosition;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i4);
                                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i6 |= 805306368;
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1111117 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion1111118 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1114;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1111119 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111110 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1115;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f112 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                            Orientation orientation18 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal18 = Alignment.Companion.o;
                            int i31111111111110 = i25;
                            int i31111111111111 = i26 >> 6;
                            int i31111111111112 = i26 << 12;
                            int i31111111111113 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111 & 3670016) | (i31111111111112 & 234881024) | (i31111111111112 & 1879048192);
                            int i31111111111114 = i31111111111110 << 6;
                            int i31111111111115 = ((i26 >> 9) & 14) | 3072 | (i31111111111114 & 896) | (i31111111111111 & 57344) | ((i31111111111110 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111114 & 3670016);
                            Modifier modifier110 = modifierE;
                            LazyLayoutPagerKt.a(modifier110, pagerState, paddingValues4, z6, orientation18, targetedFlingBehavior3, z7, overscrollEffectA, i27, f112, pageSize5, nestedScrollConnection2, horizontal18, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111113, i31111111111115);
                            int i31111111111116 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i31111111111116;
                            z4 = z7;
                            f4 = f112;
                            Alignment.Vertical vertical112 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical112;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier110;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 100663296;
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1116;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111113 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111114 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1117;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f113 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                            Orientation orientation19 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal19 = Alignment.Companion.o;
                            int i31111111111117 = i25;
                            int i31111111111118 = i26 >> 6;
                            int i31111111111119 = i26 << 12;
                            int i311111111111110 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111118 & 3670016) | (i31111111111119 & 234881024) | (i31111111111119 & 1879048192);
                            int i311111111111111 = i31111111111117 << 6;
                            int i311111111111112 = ((i26 >> 9) & 14) | 3072 | (i311111111111111 & 896) | (i31111111111118 & 57344) | ((i31111111111117 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111 & 3670016);
                            Modifier modifier111 = modifierE;
                            LazyLayoutPagerKt.a(modifier111, pagerState, paddingValues4, z6, orientation19, targetedFlingBehavior3, z7, overscrollEffectA, i27, f113, pageSize5, nestedScrollConnection2, horizontal19, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111110, i311111111111112);
                            int i311111111111113 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311111111111113;
                            z4 = z7;
                            f4 = f113;
                            Alignment.Vertical vertical113 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical113;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier111;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB1118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB1118;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB1119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB1119;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f114 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                        Orientation orientation110 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal110 = Alignment.Companion.o;
                        int i311111111111114 = i25;
                        int i311111111111115 = i26 >> 6;
                        int i311111111111116 = i26 << 12;
                        int i311111111111117 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111115 & 3670016) | (i311111111111116 & 234881024) | (i311111111111116 & 1879048192);
                        int i311111111111118 = i311111111111114 << 6;
                        int i311111111111119 = ((i26 >> 9) & 14) | 3072 | (i311111111111118 & 896) | (i311111111111115 & 57344) | ((i311111111111114 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111118 & 3670016);
                        Modifier modifier112 = modifierE;
                        LazyLayoutPagerKt.a(modifier112, pagerState, paddingValues4, z6, orientation110, targetedFlingBehavior3, z7, overscrollEffectA, i27, f114, pageSize5, nestedScrollConnection2, horizontal110, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111117, i311111111111119);
                        int i3111111111111110 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111111111110;
                        z4 = z7;
                        f4 = f114;
                        Alignment.Vertical vertical114 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical114;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier112;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 1572864;
                if ((i3 & 12582912) != 0) {
                    i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                }
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i6 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111119 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion111111110 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11110;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion111111111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion111111112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11111;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f115 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                            Orientation orientation111 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal111 = Alignment.Companion.o;
                            int i3111111111111111 = i25;
                            int i3111111111111112 = i26 >> 6;
                            int i3111111111111113 = i26 << 12;
                            int i3111111111111114 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111112 & 3670016) | (i3111111111111113 & 234881024) | (i3111111111111113 & 1879048192);
                            int i3111111111111115 = i3111111111111111 << 6;
                            int i3111111111111116 = ((i26 >> 9) & 14) | 3072 | (i3111111111111115 & 896) | (i3111111111111112 & 57344) | ((i3111111111111111 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111115 & 3670016);
                            Modifier modifier113 = modifierE;
                            LazyLayoutPagerKt.a(modifier113, pagerState, paddingValues4, z6, orientation111, targetedFlingBehavior3, z7, overscrollEffectA, i27, f115, pageSize5, nestedScrollConnection2, horizontal111, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111114, i3111111111111116);
                            int i3111111111111117 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i3111111111111117;
                            z4 = z7;
                            f4 = f115;
                            Alignment.Vertical vertical115 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical115;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier113;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11112;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11113;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f116 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                        Orientation orientation112 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal112 = Alignment.Companion.o;
                        int i3111111111111118 = i25;
                        int i3111111111111119 = i26 >> 6;
                        int i31111111111111110 = i26 << 12;
                        int i31111111111111111 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111119 & 3670016) | (i31111111111111110 & 234881024) | (i31111111111111110 & 1879048192);
                        int i31111111111111112 = i3111111111111118 << 6;
                        int i31111111111111113 = ((i26 >> 9) & 14) | 3072 | (i31111111111111112 & 896) | (i3111111111111119 & 57344) | ((i3111111111111118 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111112 & 3670016);
                        Modifier modifier114 = modifierE;
                        LazyLayoutPagerKt.a(modifier114, pagerState, paddingValues4, z6, orientation112, targetedFlingBehavior3, z7, overscrollEffectA, i27, f116, pageSize5, nestedScrollConnection2, horizontal112, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111, i31111111111111113);
                        int i31111111111111114 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111111111114;
                        z4 = z7;
                        f4 = f116;
                        Alignment.Vertical vertical116 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical116;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier114;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11114;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion1111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11115;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f117 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey113 = ComposerKt.f7940a;
                        Orientation orientation113 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal113 = Alignment.Companion.o;
                        int i31111111111111115 = i25;
                        int i31111111111111116 = i26 >> 6;
                        int i31111111111111117 = i26 << 12;
                        int i31111111111111118 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111116 & 3670016) | (i31111111111111117 & 234881024) | (i31111111111111117 & 1879048192);
                        int i31111111111111119 = i31111111111111115 << 6;
                        int i311111111111111110 = ((i26 >> 9) & 14) | 3072 | (i31111111111111119 & 896) | (i31111111111111116 & 57344) | ((i31111111111111115 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111119 & 3670016);
                        Modifier modifier115 = modifierE;
                        LazyLayoutPagerKt.a(modifier115, pagerState, paddingValues4, z6, orientation113, targetedFlingBehavior3, z7, overscrollEffectA, i27, f117, pageSize5, nestedScrollConnection2, horizontal113, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111118, i311111111111111110);
                        int i311111111111111111 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i311111111111111111;
                        z4 = z7;
                        f4 = f117;
                        Alignment.Vertical vertical117 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical117;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier115;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11116;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111113 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111114 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11117;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f118 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                    Orientation orientation114 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal114 = Alignment.Companion.o;
                    int i311111111111111112 = i25;
                    int i311111111111111113 = i26 >> 6;
                    int i311111111111111114 = i26 << 12;
                    int i311111111111111115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111113 & 3670016) | (i311111111111111114 & 234881024) | (i311111111111111114 & 1879048192);
                    int i311111111111111116 = i311111111111111112 << 6;
                    int i311111111111111117 = ((i26 >> 9) & 14) | 3072 | (i311111111111111116 & 896) | (i311111111111111113 & 57344) | ((i311111111111111112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111116 & 3670016);
                    Modifier modifier116 = modifierE;
                    LazyLayoutPagerKt.a(modifier116, pagerState, paddingValues4, z6, orientation114, targetedFlingBehavior3, z7, overscrollEffectA, i27, f118, pageSize5, nestedScrollConnection2, horizontal114, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111115, i311111111111111117);
                    int i311111111111111118 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i311111111111111118;
                    z4 = z7;
                    f4 = f118;
                    Alignment.Vertical vertical118 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical118;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier116;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 24576;
            i10 = i2;
            i12 = i5 & 32;
            if (i12 != 0) {
                i6 |= ImageMetadata.EDGE_MODE;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.c(f3)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i6 |= i13;
                }
            }
            i14 = i5 & 64;
            if (i14 != 0) {
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.K(vertical)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i6 |= i15;
                }
                if ((i3 & 12582912) != 0) {
                    i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                }
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i6 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1111111115 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion1111111116 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11118;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1111111117 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion1111111118 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11119;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f119 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                            Orientation orientation115 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal115 = Alignment.Companion.o;
                            int i311111111111111119 = i25;
                            int i3111111111111111110 = i26 >> 6;
                            int i3111111111111111111 = i26 << 12;
                            int i3111111111111111112 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111110 & 3670016) | (i3111111111111111111 & 234881024) | (i3111111111111111111 & 1879048192);
                            int i3111111111111111113 = i311111111111111119 << 6;
                            int i3111111111111111114 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111113 & 896) | (i3111111111111111110 & 57344) | ((i311111111111111119 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111113 & 3670016);
                            Modifier modifier117 = modifierE;
                            LazyLayoutPagerKt.a(modifier117, pagerState, paddingValues4, z6, orientation115, targetedFlingBehavior3, z7, overscrollEffectA, i27, f119, pageSize5, nestedScrollConnection2, horizontal115, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111112, i3111111111111111114);
                            int i3111111111111111115 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i3111111111111111115;
                            z4 = z7;
                            f4 = f119;
                            Alignment.Vertical vertical119 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical119;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier117;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion1111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111110;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111112 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f1110 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey116 = ComposerKt.f7940a;
                        Orientation orientation116 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal116 = Alignment.Companion.o;
                        int i3111111111111111116 = i25;
                        int i3111111111111111117 = i26 >> 6;
                        int i3111111111111111118 = i26 << 12;
                        int i3111111111111111119 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111117 & 3670016) | (i3111111111111111118 & 234881024) | (i3111111111111111118 & 1879048192);
                        int i31111111111111111110 = i3111111111111111116 << 6;
                        int i31111111111111111111 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111110 & 896) | (i3111111111111111117 & 57344) | ((i3111111111111111116 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111110 & 3670016);
                        Modifier modifier118 = modifierE;
                        LazyLayoutPagerKt.a(modifier118, pagerState, paddingValues4, z6, orientation116, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1110, pageSize5, nestedScrollConnection2, horizontal116, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111119, i31111111111111111111);
                        int i31111111111111111112 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111111111111112;
                        z4 = z7;
                        f4 = f1110;
                        Alignment.Vertical vertical1110 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical1110;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier118;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111112;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111113;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f1111 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                        Orientation orientation117 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal117 = Alignment.Companion.o;
                        int i31111111111111111113 = i25;
                        int i31111111111111111114 = i26 >> 6;
                        int i31111111111111111115 = i26 << 12;
                        int i31111111111111111116 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111114 & 3670016) | (i31111111111111111115 & 234881024) | (i31111111111111111115 & 1879048192);
                        int i31111111111111111117 = i31111111111111111113 << 6;
                        int i31111111111111111118 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111117 & 896) | (i31111111111111111114 & 57344) | ((i31111111111111111113 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111117 & 3670016);
                        Modifier modifier119 = modifierE;
                        LazyLayoutPagerKt.a(modifier119, pagerState, paddingValues4, z6, orientation117, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111, pageSize5, nestedScrollConnection2, horizontal117, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111116, i31111111111111111118);
                        int i31111111111111111119 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111111111111119;
                        z4 = z7;
                        f4 = f1111;
                        Alignment.Vertical vertical1111 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical1111;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier119;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion11111111117 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion11111111118 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111114;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion11111111119 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111110 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111115;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f1112 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey118 = ComposerKt.f7940a;
                    Orientation orientation118 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal118 = Alignment.Companion.o;
                    int i311111111111111111110 = i25;
                    int i311111111111111111111 = i26 >> 6;
                    int i311111111111111111112 = i26 << 12;
                    int i311111111111111111113 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111 & 3670016) | (i311111111111111111112 & 234881024) | (i311111111111111111112 & 1879048192);
                    int i311111111111111111114 = i311111111111111111110 << 6;
                    int i311111111111111111115 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111114 & 896) | (i311111111111111111111 & 57344) | ((i311111111111111111110 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111114 & 3670016);
                    Modifier modifier1110 = modifierE;
                    LazyLayoutPagerKt.a(modifier1110, pagerState, paddingValues4, z6, orientation118, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1112, pageSize5, nestedScrollConnection2, horizontal118, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111113, i311111111111111111115);
                    int i311111111111111111116 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i311111111111111111116;
                    z4 = z7;
                    f4 = f1112;
                    Alignment.Vertical vertical1112 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical1112;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier1110;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 1572864;
            if ((i3 & 12582912) != 0) {
                i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
            }
            i16 = i5 & 256;
            if (i16 != 0) {
                if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i6 |= i17;
                }
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111112 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111116;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111117;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f1113 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey119 = ComposerKt.f7940a;
                        Orientation orientation119 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal119 = Alignment.Companion.o;
                        int i311111111111111111117 = i25;
                        int i311111111111111111118 = i26 >> 6;
                        int i311111111111111111119 = i26 << 12;
                        int i3111111111111111111110 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111118 & 3670016) | (i311111111111111111119 & 234881024) | (i311111111111111111119 & 1879048192);
                        int i3111111111111111111111 = i311111111111111111117 << 6;
                        int i3111111111111111111112 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111 & 896) | (i311111111111111111118 & 57344) | ((i311111111111111111117 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111 & 3670016);
                        Modifier modifier1111 = modifierE;
                        LazyLayoutPagerKt.a(modifier1111, pagerState, paddingValues4, z6, orientation119, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1113, pageSize5, nestedScrollConnection2, horizontal119, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111110, i3111111111111111111112);
                        int i3111111111111111111113 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111111111111111113;
                        z4 = z7;
                        f4 = f1113;
                        Alignment.Vertical vertical1113 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical1113;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier1111;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111115 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111116 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111118;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111117 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111118 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111119;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f1114 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                    Orientation orientation1110 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal1110 = Alignment.Companion.o;
                    int i3111111111111111111114 = i25;
                    int i3111111111111111111115 = i26 >> 6;
                    int i3111111111111111111116 = i26 << 12;
                    int i3111111111111111111117 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111115 & 3670016) | (i3111111111111111111116 & 234881024) | (i3111111111111111111116 & 1879048192);
                    int i3111111111111111111118 = i3111111111111111111114 << 6;
                    int i3111111111111111111119 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111118 & 896) | (i3111111111111111111115 & 57344) | ((i3111111111111111111114 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111118 & 3670016);
                    Modifier modifier1112 = modifierE;
                    LazyLayoutPagerKt.a(modifier1112, pagerState, paddingValues4, z6, orientation1110, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1114, pageSize5, nestedScrollConnection2, horizontal1110, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111117, i3111111111111111111119);
                    int i31111111111111111111110 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i31111111111111111111110;
                    z4 = z7;
                    f4 = f1114;
                    Alignment.Vertical vertical1114 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical1114;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier1112;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 100663296;
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z2)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i6 |= i19;
                }
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111119 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111110 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111110;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f1115 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey1111 = ComposerKt.f7940a;
                    Orientation orientation1111 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal1111 = Alignment.Companion.o;
                    int i31111111111111111111111 = i25;
                    int i31111111111111111111112 = i26 >> 6;
                    int i31111111111111111111113 = i26 << 12;
                    int i31111111111111111111114 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111112 & 3670016) | (i31111111111111111111113 & 234881024) | (i31111111111111111111113 & 1879048192);
                    int i31111111111111111111115 = i31111111111111111111111 << 6;
                    int i31111111111111111111116 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111115 & 896) | (i31111111111111111111112 & 57344) | ((i31111111111111111111111 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111115 & 3670016);
                    Modifier modifier1113 = modifierE;
                    LazyLayoutPagerKt.a(modifier1113, pagerState, paddingValues4, z6, orientation1111, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1115, pageSize5, nestedScrollConnection2, horizontal1111, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111114, i31111111111111111111116);
                    int i31111111111111111111117 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i31111111111111111111117;
                    z4 = z7;
                    f4 = f1115;
                    Alignment.Vertical vertical1115 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical1115;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier1113;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 805306368;
            i20 = i4 | 6;
            if ((i4 & 48) == 0) {
                i20 = i4 | 22;
            }
            i21 = i20;
            i22 = i21 | KyberEngine.KyberPolyBytes;
            if ((i4 & 3072) == 0) {
                i23 = i21 | 1408;
            } else {
                i23 = i22;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i28 = 16384;
                } else {
                    i28 = 8192;
                }
                i23 |= i28;
            }
            if ((i6 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111113 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion1111111111114 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111112;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                } else {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111115 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion1111111111116 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111113;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                }
                float f1116 = f3;
                gapComposer.a0();
                OpaqueKey opaqueKey1112 = ComposerKt.f7940a;
                Orientation orientation1112 = Orientation.Horizontal;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal1112 = Alignment.Companion.o;
                int i31111111111111111111118 = i25;
                int i31111111111111111111119 = i26 >> 6;
                int i311111111111111111111110 = i26 << 12;
                int i311111111111111111111111 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111119 & 3670016) | (i311111111111111111111110 & 234881024) | (i311111111111111111111110 & 1879048192);
                int i311111111111111111111112 = i31111111111111111111118 << 6;
                int i311111111111111111111113 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111112 & 896) | (i31111111111111111111119 & 57344) | ((i31111111111111111111118 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111112 & 3670016);
                Modifier modifier1114 = modifierE;
                LazyLayoutPagerKt.a(modifier1114, pagerState, paddingValues4, z6, orientation1112, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1116, pageSize5, nestedScrollConnection2, horizontal1112, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111, i311111111111111111111113);
                int i311111111111111111111114 = i27;
                targetedFlingBehavior2 = targetedFlingBehavior3;
                i24 = i311111111111111111111114;
                z4 = z7;
                f4 = f1116;
                Alignment.Vertical vertical1116 = vertical4;
                overscrollEffect2 = overscrollEffectA;
                vertical2 = vertical1116;
                pageSize3 = pageSize5;
                snapPosition2 = snapPosition3;
                z5 = z6;
                paddingValues3 = paddingValues4;
                modifier2 = modifier1114;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical2 = vertical;
                targetedFlingBehavior2 = targetedFlingBehavior;
                z4 = z;
                nestedScrollConnection2 = nestedScrollConnection;
                overscrollEffect2 = overscrollEffect;
                paddingValues3 = paddingValues2;
                pageSize3 = pageSize2;
                i24 = i10;
                f4 = f3;
                modifier2 = modifierE;
                z5 = z2;
                snapPosition2 = snapPosition;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= KyberEngine.KyberPolyBytes;
        paddingValues2 = paddingValues;
        i7 = i5 & 8;
        if (i7 != 0) {
            if ((i3 & 3072) == 0) {
                pageSize2 = pageSize;
                if (gapComposerH.K(pageSize2)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i6 |= i8;
            }
            i9 = i5 & 16;
            if (i9 != 0) {
                if ((i3 & 24576) == 0) {
                    i10 = i2;
                    if (gapComposerH.d(i10)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i6 |= i11;
                }
                i12 = i5 & 32;
                if (i12 != 0) {
                    i6 |= ImageMetadata.EDGE_MODE;
                    f3 = f2;
                } else {
                    f3 = f2;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.c(f3)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i6 |= i13;
                    }
                }
                i14 = i5 & 64;
                if (i14 != 0) {
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.K(vertical)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i6 |= i15;
                    }
                    if ((i3 & 12582912) != 0) {
                        i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                    }
                    i16 = i5 & 256;
                    if (i16 != 0) {
                        if ((i3 & 100663296) == 0) {
                            if (gapComposerH.b(z)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i6 |= i17;
                        }
                        i18 = i5 & 512;
                        if (i18 != 0) {
                            if ((i3 & 805306368) == 0) {
                                if (gapComposerH.b(z2)) {
                                    i19 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i19 = 268435456;
                                }
                                i6 |= i19;
                            }
                            i20 = i4 | 6;
                            if ((i4 & 48) == 0) {
                                i20 = i4 | 22;
                            }
                            i21 = i20;
                            i22 = i21 | KyberEngine.KyberPolyBytes;
                            if ((i4 & 3072) == 0) {
                                i23 = i21 | 1408;
                            } else {
                                i23 = i22;
                            }
                            if ((i4 & 24576) != 0) {
                                if (gapComposerH.y(composableLambdaImpl)) {
                                    i28 = 16384;
                                } else {
                                    i28 = 8192;
                                }
                                i23 |= i28;
                            }
                            if ((i6 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i6 & 1, z3)) {
                                gapComposerH.y0();
                                if ((i3 & 1) != 0) {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion1111111111117 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion1111111111118 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB1111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB1111114;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                } else {
                                    if (i29 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                    } else {
                                        dTFunctionNameModifier = modifierE;
                                    }
                                    if (i30 != 0) {
                                        Dp.Companion companion1111111111119 = Dp.f11004c;
                                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    if (i7 != 0) {
                                        pageSize4 = PageSize.Fill.f5709a;
                                    } else {
                                        pageSize4 = pageSize2;
                                    }
                                    if (i9 != 0) {
                                        i10 = 0;
                                    }
                                    if (i12 != 0) {
                                        Dp.Companion companion11111111111110 = Dp.f11004c;
                                        f3 = 0.0f;
                                    }
                                    if (i14 != 0) {
                                        Alignment.f8582a.getClass();
                                        vertical3 = Alignment.Companion.l;
                                    } else {
                                        vertical3 = vertical;
                                    }
                                    if ((i5 & 128) != 0) {
                                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        i6 &= -29360129;
                                    } else {
                                        pagerState2 = pagerState;
                                        gapComposer2 = gapComposerH;
                                        targetedFlingBehaviorA = targetedFlingBehavior;
                                    }
                                    if (i16 == 0) {
                                    }
                                    if (i18 == 0) {
                                    }
                                    NestedScrollConnection nestedScrollConnectionB1111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                    modifierE = dTFunctionNameModifier;
                                    i25 = i23 & (-7281);
                                    i26 = i6;
                                    pageSize5 = pageSize4;
                                    gapComposer = gapComposer2;
                                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                                    z6 = z9;
                                    nestedScrollConnection2 = nestedScrollConnectionB1111115;
                                    paddingValues4 = paddingValuesA;
                                    i27 = i10;
                                    snapPosition3 = SnapPosition.Start.f4877a;
                                    vertical4 = vertical3;
                                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                                    z7 = z8;
                                }
                                float f1117 = f3;
                                gapComposer.a0();
                                OpaqueKey opaqueKey1113 = ComposerKt.f7940a;
                                Orientation orientation1113 = Orientation.Horizontal;
                                Alignment.f8582a.getClass();
                                BiasAlignment.Horizontal horizontal1113 = Alignment.Companion.o;
                                int i311111111111111111111115 = i25;
                                int i311111111111111111111116 = i26 >> 6;
                                int i311111111111111111111117 = i26 << 12;
                                int i311111111111111111111118 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111116 & 3670016) | (i311111111111111111111117 & 234881024) | (i311111111111111111111117 & 1879048192);
                                int i311111111111111111111119 = i311111111111111111111115 << 6;
                                int i3111111111111111111111110 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111119 & 896) | (i311111111111111111111116 & 57344) | ((i311111111111111111111115 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111119 & 3670016);
                                Modifier modifier1115 = modifierE;
                                LazyLayoutPagerKt.a(modifier1115, pagerState, paddingValues4, z6, orientation1113, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1117, pageSize5, nestedScrollConnection2, horizontal1113, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111118, i3111111111111111111111110);
                                int i3111111111111111111111111 = i27;
                                targetedFlingBehavior2 = targetedFlingBehavior3;
                                i24 = i3111111111111111111111111;
                                z4 = z7;
                                f4 = f1117;
                                Alignment.Vertical vertical1117 = vertical4;
                                overscrollEffect2 = overscrollEffectA;
                                vertical2 = vertical1117;
                                pageSize3 = pageSize5;
                                snapPosition2 = snapPosition3;
                                z5 = z6;
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier1115;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                vertical2 = vertical;
                                targetedFlingBehavior2 = targetedFlingBehavior;
                                z4 = z;
                                nestedScrollConnection2 = nestedScrollConnection;
                                overscrollEffect2 = overscrollEffect;
                                paddingValues3 = paddingValues2;
                                pageSize3 = pageSize2;
                                i24 = i10;
                                f4 = f3;
                                modifier2 = modifierE;
                                z5 = z2;
                                snapPosition2 = snapPosition;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i4);
                                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i6 |= 805306368;
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1111116;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111113 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111114 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1111117;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f1118 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey1114 = ComposerKt.f7940a;
                            Orientation orientation1114 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal1114 = Alignment.Companion.o;
                            int i3111111111111111111111112 = i25;
                            int i3111111111111111111111113 = i26 >> 6;
                            int i3111111111111111111111114 = i26 << 12;
                            int i3111111111111111111111115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111113 & 3670016) | (i3111111111111111111111114 & 234881024) | (i3111111111111111111111114 & 1879048192);
                            int i3111111111111111111111116 = i3111111111111111111111112 << 6;
                            int i3111111111111111111111117 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111116 & 896) | (i3111111111111111111111113 & 57344) | ((i3111111111111111111111112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111116 & 3670016);
                            Modifier modifier1116 = modifierE;
                            LazyLayoutPagerKt.a(modifier1116, pagerState, paddingValues4, z6, orientation1114, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1118, pageSize5, nestedScrollConnection2, horizontal1114, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111115, i3111111111111111111111117);
                            int i3111111111111111111111118 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i3111111111111111111111118;
                            z4 = z7;
                            f4 = f1118;
                            Alignment.Vertical vertical1118 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical1118;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier1116;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 100663296;
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111115 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111116 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1111118;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111117 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111118 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1111119;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f1119 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey1115 = ComposerKt.f7940a;
                            Orientation orientation1115 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal1115 = Alignment.Companion.o;
                            int i3111111111111111111111119 = i25;
                            int i31111111111111111111111110 = i26 >> 6;
                            int i31111111111111111111111111 = i26 << 12;
                            int i31111111111111111111111112 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111110 & 3670016) | (i31111111111111111111111111 & 234881024) | (i31111111111111111111111111 & 1879048192);
                            int i31111111111111111111111113 = i3111111111111111111111119 << 6;
                            int i31111111111111111111111114 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111113 & 896) | (i31111111111111111111111110 & 57344) | ((i3111111111111111111111119 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111113 & 3670016);
                            Modifier modifier1117 = modifierE;
                            LazyLayoutPagerKt.a(modifier1117, pagerState, paddingValues4, z6, orientation1115, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1119, pageSize5, nestedScrollConnection2, horizontal1115, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111112, i31111111111111111111111114);
                            int i31111111111111111111111115 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i31111111111111111111111115;
                            z4 = z7;
                            f4 = f1119;
                            Alignment.Vertical vertical1119 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical1119;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier1117;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111110;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111111 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111112 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111111;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f11110 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey1116 = ComposerKt.f7940a;
                        Orientation orientation1116 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal1116 = Alignment.Companion.o;
                        int i31111111111111111111111116 = i25;
                        int i31111111111111111111111117 = i26 >> 6;
                        int i31111111111111111111111118 = i26 << 12;
                        int i31111111111111111111111119 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111117 & 3670016) | (i31111111111111111111111118 & 234881024) | (i31111111111111111111111118 & 1879048192);
                        int i311111111111111111111111110 = i31111111111111111111111116 << 6;
                        int i311111111111111111111111111 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111110 & 896) | (i31111111111111111111111117 & 57344) | ((i31111111111111111111111116 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111110 & 3670016);
                        Modifier modifier1118 = modifierE;
                        LazyLayoutPagerKt.a(modifier1118, pagerState, paddingValues4, z6, orientation1116, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11110, pageSize5, nestedScrollConnection2, horizontal1116, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111119, i311111111111111111111111111);
                        int i311111111111111111111111112 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i311111111111111111111111112;
                        z4 = z7;
                        f4 = f11110;
                        Alignment.Vertical vertical11110 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical11110;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier1118;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 1572864;
                if ((i3 & 12582912) != 0) {
                    i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                }
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i6 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion111111111111113 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion111111111111114 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11111112;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion111111111111115 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion111111111111116 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB11111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB11111113;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f11111 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey1117 = ComposerKt.f7940a;
                            Orientation orientation1117 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal1117 = Alignment.Companion.o;
                            int i311111111111111111111111113 = i25;
                            int i311111111111111111111111114 = i26 >> 6;
                            int i311111111111111111111111115 = i26 << 12;
                            int i311111111111111111111111116 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111114 & 3670016) | (i311111111111111111111111115 & 234881024) | (i311111111111111111111111115 & 1879048192);
                            int i311111111111111111111111117 = i311111111111111111111111113 << 6;
                            int i311111111111111111111111118 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111117 & 896) | (i311111111111111111111111114 & 57344) | ((i311111111111111111111111113 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111117 & 3670016);
                            Modifier modifier1119 = modifierE;
                            LazyLayoutPagerKt.a(modifier1119, pagerState, paddingValues4, z6, orientation1117, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11111, pageSize5, nestedScrollConnection2, horizontal1117, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111116, i311111111111111111111111118);
                            int i311111111111111111111111119 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311111111111111111111111119;
                            z4 = z7;
                            f4 = f11111;
                            Alignment.Vertical vertical11111 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical11111;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier1119;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111114;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion1111111111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111115;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f11112 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey1118 = ComposerKt.f7940a;
                        Orientation orientation1118 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal1118 = Alignment.Companion.o;
                        int i3111111111111111111111111110 = i25;
                        int i3111111111111111111111111111 = i26 >> 6;
                        int i3111111111111111111111111112 = i26 << 12;
                        int i3111111111111111111111111113 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111 & 3670016) | (i3111111111111111111111111112 & 234881024) | (i3111111111111111111111111112 & 1879048192);
                        int i3111111111111111111111111114 = i3111111111111111111111111110 << 6;
                        int i3111111111111111111111111115 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111114 & 896) | (i3111111111111111111111111111 & 57344) | ((i3111111111111111111111111110 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111114 & 3670016);
                        Modifier modifier11110 = modifierE;
                        LazyLayoutPagerKt.a(modifier11110, pagerState, paddingValues4, z6, orientation1118, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11112, pageSize5, nestedScrollConnection2, horizontal1118, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111113, i3111111111111111111111111115);
                        int i3111111111111111111111111116 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111111111111111111111116;
                        z4 = z7;
                        f4 = f11112;
                        Alignment.Vertical vertical11112 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical11112;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier11110;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion1111111111111111 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion1111111111111112 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111116;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion1111111111111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion1111111111111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111117;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f11113 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey1119 = ComposerKt.f7940a;
                        Orientation orientation1119 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal1119 = Alignment.Companion.o;
                        int i3111111111111111111111111117 = i25;
                        int i3111111111111111111111111118 = i26 >> 6;
                        int i3111111111111111111111111119 = i26 << 12;
                        int i31111111111111111111111111110 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111118 & 3670016) | (i3111111111111111111111111119 & 234881024) | (i3111111111111111111111111119 & 1879048192);
                        int i31111111111111111111111111111 = i3111111111111111111111111117 << 6;
                        int i31111111111111111111111111112 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111 & 896) | (i3111111111111111111111111118 & 57344) | ((i3111111111111111111111111117 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111 & 3670016);
                        Modifier modifier11111 = modifierE;
                        LazyLayoutPagerKt.a(modifier11111, pagerState, paddingValues4, z6, orientation1119, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11113, pageSize5, nestedScrollConnection2, horizontal1119, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111110, i31111111111111111111111111112);
                        int i31111111111111111111111111113 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111111111111111111111113;
                        z4 = z7;
                        f4 = f11113;
                        Alignment.Vertical vertical11113 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical11113;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier11111;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111115 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111116 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111118;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111117 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111118 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111119;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f11114 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey11110 = ComposerKt.f7940a;
                    Orientation orientation11110 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal11110 = Alignment.Companion.o;
                    int i31111111111111111111111111114 = i25;
                    int i31111111111111111111111111115 = i26 >> 6;
                    int i31111111111111111111111111116 = i26 << 12;
                    int i31111111111111111111111111117 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111115 & 3670016) | (i31111111111111111111111111116 & 234881024) | (i31111111111111111111111111116 & 1879048192);
                    int i31111111111111111111111111118 = i31111111111111111111111111114 << 6;
                    int i31111111111111111111111111119 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111118 & 896) | (i31111111111111111111111111115 & 57344) | ((i31111111111111111111111111114 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111118 & 3670016);
                    Modifier modifier11112 = modifierE;
                    LazyLayoutPagerKt.a(modifier11112, pagerState, paddingValues4, z6, orientation11110, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11114, pageSize5, nestedScrollConnection2, horizontal11110, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111117, i31111111111111111111111111119);
                    int i311111111111111111111111111110 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i311111111111111111111111111110;
                    z4 = z7;
                    f4 = f11114;
                    Alignment.Vertical vertical11114 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical11114;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier11112;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 24576;
            i10 = i2;
            i12 = i5 & 32;
            if (i12 != 0) {
                i6 |= ImageMetadata.EDGE_MODE;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.c(f3)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i6 |= i13;
                }
            }
            i14 = i5 & 64;
            if (i14 != 0) {
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.K(vertical)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i6 |= i15;
                }
                if ((i3 & 12582912) != 0) {
                    i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                }
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i6 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion1111111111111119 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111111110 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB111111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB111111110;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111111111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111111112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB111111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB111111111;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f11115 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey11111 = ComposerKt.f7940a;
                            Orientation orientation11111 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal11111 = Alignment.Companion.o;
                            int i311111111111111111111111111111 = i25;
                            int i311111111111111111111111111112 = i26 >> 6;
                            int i311111111111111111111111111113 = i26 << 12;
                            int i311111111111111111111111111114 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111112 & 3670016) | (i311111111111111111111111111113 & 234881024) | (i311111111111111111111111111113 & 1879048192);
                            int i311111111111111111111111111115 = i311111111111111111111111111111 << 6;
                            int i311111111111111111111111111116 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111115 & 896) | (i311111111111111111111111111112 & 57344) | ((i311111111111111111111111111111 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111115 & 3670016);
                            Modifier modifier11113 = modifierE;
                            LazyLayoutPagerKt.a(modifier11113, pagerState, paddingValues4, z6, orientation11111, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11115, pageSize5, nestedScrollConnection2, horizontal11111, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111114, i311111111111111111111111111116);
                            int i311111111111111111111111111117 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311111111111111111111111111117;
                            z4 = z7;
                            f4 = f11115;
                            Alignment.Vertical vertical11115 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical11115;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier11113;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111112;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111113;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f11116 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey11112 = ComposerKt.f7940a;
                        Orientation orientation11112 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal11112 = Alignment.Companion.o;
                        int i311111111111111111111111111118 = i25;
                        int i311111111111111111111111111119 = i26 >> 6;
                        int i3111111111111111111111111111110 = i26 << 12;
                        int i3111111111111111111111111111111 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111119 & 3670016) | (i3111111111111111111111111111110 & 234881024) | (i3111111111111111111111111111110 & 1879048192);
                        int i3111111111111111111111111111112 = i311111111111111111111111111118 << 6;
                        int i3111111111111111111111111111113 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111112 & 896) | (i311111111111111111111111111119 & 57344) | ((i311111111111111111111111111118 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111112 & 3670016);
                        Modifier modifier11114 = modifierE;
                        LazyLayoutPagerKt.a(modifier11114, pagerState, paddingValues4, z6, orientation11112, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11116, pageSize5, nestedScrollConnection2, horizontal11112, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111, i3111111111111111111111111111113);
                        int i3111111111111111111111111111114 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111111111111111111111111114;
                        z4 = z7;
                        f4 = f11116;
                        Alignment.Vertical vertical11116 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical11116;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier11114;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111114;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111115;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f11117 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey11113 = ComposerKt.f7940a;
                        Orientation orientation11113 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal11113 = Alignment.Companion.o;
                        int i3111111111111111111111111111115 = i25;
                        int i3111111111111111111111111111116 = i26 >> 6;
                        int i3111111111111111111111111111117 = i26 << 12;
                        int i3111111111111111111111111111118 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111116 & 3670016) | (i3111111111111111111111111111117 & 234881024) | (i3111111111111111111111111111117 & 1879048192);
                        int i3111111111111111111111111111119 = i3111111111111111111111111111115 << 6;
                        int i31111111111111111111111111111110 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111119 & 896) | (i3111111111111111111111111111116 & 57344) | ((i3111111111111111111111111111115 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111119 & 3670016);
                        Modifier modifier11115 = modifierE;
                        LazyLayoutPagerKt.a(modifier11115, pagerState, paddingValues4, z6, orientation11113, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11117, pageSize5, nestedScrollConnection2, horizontal11113, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111118, i31111111111111111111111111111110);
                        int i31111111111111111111111111111111 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111111111111111111111111111;
                        z4 = z7;
                        f4 = f11117;
                        Alignment.Vertical vertical11117 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical11117;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier11115;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111111116;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111113 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111114 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111111117;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f11118 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey11114 = ComposerKt.f7940a;
                    Orientation orientation11114 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal11114 = Alignment.Companion.o;
                    int i31111111111111111111111111111112 = i25;
                    int i31111111111111111111111111111113 = i26 >> 6;
                    int i31111111111111111111111111111114 = i26 << 12;
                    int i31111111111111111111111111111115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111113 & 3670016) | (i31111111111111111111111111111114 & 234881024) | (i31111111111111111111111111111114 & 1879048192);
                    int i31111111111111111111111111111116 = i31111111111111111111111111111112 << 6;
                    int i31111111111111111111111111111117 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111116 & 896) | (i31111111111111111111111111111113 & 57344) | ((i31111111111111111111111111111112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111116 & 3670016);
                    Modifier modifier11116 = modifierE;
                    LazyLayoutPagerKt.a(modifier11116, pagerState, paddingValues4, z6, orientation11114, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11118, pageSize5, nestedScrollConnection2, horizontal11114, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111111115, i31111111111111111111111111111117);
                    int i31111111111111111111111111111118 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i31111111111111111111111111111118;
                    z4 = z7;
                    f4 = f11118;
                    Alignment.Vertical vertical11118 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical11118;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier11116;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 1572864;
            if ((i3 & 12582912) != 0) {
                i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
            }
            i16 = i5 & 256;
            if (i16 != 0) {
                if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i6 |= i17;
                }
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111118;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111119;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f11119 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey11115 = ComposerKt.f7940a;
                        Orientation orientation11115 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal11115 = Alignment.Companion.o;
                        int i31111111111111111111111111111119 = i25;
                        int i311111111111111111111111111111110 = i26 >> 6;
                        int i311111111111111111111111111111111 = i26 << 12;
                        int i311111111111111111111111111111112 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111110 & 3670016) | (i311111111111111111111111111111111 & 234881024) | (i311111111111111111111111111111111 & 1879048192);
                        int i311111111111111111111111111111113 = i31111111111111111111111111111119 << 6;
                        int i311111111111111111111111111111114 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111113 & 896) | (i311111111111111111111111111111110 & 57344) | ((i31111111111111111111111111111119 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111113 & 3670016);
                        Modifier modifier11117 = modifierE;
                        LazyLayoutPagerKt.a(modifier11117, pagerState, paddingValues4, z6, orientation11115, targetedFlingBehavior3, z7, overscrollEffectA, i27, f11119, pageSize5, nestedScrollConnection2, horizontal11115, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111112, i311111111111111111111111111111114);
                        int i311111111111111111111111111111115 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i311111111111111111111111111111115;
                        z4 = z7;
                        f4 = f11119;
                        Alignment.Vertical vertical11119 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical11119;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier11117;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111119 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111110 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111110;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111111;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f111110 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey11116 = ComposerKt.f7940a;
                    Orientation orientation11116 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal11116 = Alignment.Companion.o;
                    int i311111111111111111111111111111116 = i25;
                    int i311111111111111111111111111111117 = i26 >> 6;
                    int i311111111111111111111111111111118 = i26 << 12;
                    int i311111111111111111111111111111119 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111117 & 3670016) | (i311111111111111111111111111111118 & 234881024) | (i311111111111111111111111111111118 & 1879048192);
                    int i3111111111111111111111111111111110 = i311111111111111111111111111111116 << 6;
                    int i3111111111111111111111111111111111 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111110 & 896) | (i311111111111111111111111111111117 & 57344) | ((i311111111111111111111111111111116 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111110 & 3670016);
                    Modifier modifier11118 = modifierE;
                    LazyLayoutPagerKt.a(modifier11118, pagerState, paddingValues4, z6, orientation11116, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111110, pageSize5, nestedScrollConnection2, horizontal11116, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111119, i3111111111111111111111111111111111);
                    int i3111111111111111111111111111111112 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i3111111111111111111111111111111112;
                    z4 = z7;
                    f4 = f111110;
                    Alignment.Vertical vertical111110 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical111110;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier11118;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 100663296;
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z2)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i6 |= i19;
                }
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111113 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111114 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111112;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111115 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111116 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111113;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f111111 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey11117 = ComposerKt.f7940a;
                    Orientation orientation11117 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal11117 = Alignment.Companion.o;
                    int i3111111111111111111111111111111113 = i25;
                    int i3111111111111111111111111111111114 = i26 >> 6;
                    int i3111111111111111111111111111111115 = i26 << 12;
                    int i3111111111111111111111111111111116 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111114 & 3670016) | (i3111111111111111111111111111111115 & 234881024) | (i3111111111111111111111111111111115 & 1879048192);
                    int i3111111111111111111111111111111117 = i3111111111111111111111111111111113 << 6;
                    int i3111111111111111111111111111111118 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111117 & 896) | (i3111111111111111111111111111111114 & 57344) | ((i3111111111111111111111111111111113 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111117 & 3670016);
                    Modifier modifier11119 = modifierE;
                    LazyLayoutPagerKt.a(modifier11119, pagerState, paddingValues4, z6, orientation11117, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111111, pageSize5, nestedScrollConnection2, horizontal11117, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111116, i3111111111111111111111111111111118);
                    int i3111111111111111111111111111111119 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i3111111111111111111111111111111119;
                    z4 = z7;
                    f4 = f111111;
                    Alignment.Vertical vertical111111 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical111111;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier11119;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 805306368;
            i20 = i4 | 6;
            if ((i4 & 48) == 0) {
                i20 = i4 | 22;
            }
            i21 = i20;
            i22 = i21 | KyberEngine.KyberPolyBytes;
            if ((i4 & 3072) == 0) {
                i23 = i21 | 1408;
            } else {
                i23 = i22;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i28 = 16384;
                } else {
                    i28 = 8192;
                }
                i23 |= i28;
            }
            if ((i6 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111117 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion1111111111111111118 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111111114;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                } else {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111119 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion11111111111111111110 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111111115;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                }
                float f111112 = f3;
                gapComposer.a0();
                OpaqueKey opaqueKey11118 = ComposerKt.f7940a;
                Orientation orientation11118 = Orientation.Horizontal;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal11118 = Alignment.Companion.o;
                int i31111111111111111111111111111111110 = i25;
                int i31111111111111111111111111111111111 = i26 >> 6;
                int i31111111111111111111111111111111112 = i26 << 12;
                int i31111111111111111111111111111111113 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111111111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111 & 3670016) | (i31111111111111111111111111111111112 & 234881024) | (i31111111111111111111111111111111112 & 1879048192);
                int i31111111111111111111111111111111114 = i31111111111111111111111111111111110 << 6;
                int i31111111111111111111111111111111115 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111111114 & 896) | (i31111111111111111111111111111111111 & 57344) | ((i31111111111111111111111111111111110 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111114 & 3670016);
                Modifier modifier111110 = modifierE;
                LazyLayoutPagerKt.a(modifier111110, pagerState, paddingValues4, z6, orientation11118, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111112, pageSize5, nestedScrollConnection2, horizontal11118, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111111111113, i31111111111111111111111111111111115);
                int i31111111111111111111111111111111116 = i27;
                targetedFlingBehavior2 = targetedFlingBehavior3;
                i24 = i31111111111111111111111111111111116;
                z4 = z7;
                f4 = f111112;
                Alignment.Vertical vertical111112 = vertical4;
                overscrollEffect2 = overscrollEffectA;
                vertical2 = vertical111112;
                pageSize3 = pageSize5;
                snapPosition2 = snapPosition3;
                z5 = z6;
                paddingValues3 = paddingValues4;
                modifier2 = modifier111110;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical2 = vertical;
                targetedFlingBehavior2 = targetedFlingBehavior;
                z4 = z;
                nestedScrollConnection2 = nestedScrollConnection;
                overscrollEffect2 = overscrollEffect;
                paddingValues3 = paddingValues2;
                pageSize3 = pageSize2;
                i24 = i10;
                f4 = f3;
                modifier2 = modifierE;
                z5 = z2;
                snapPosition2 = snapPosition;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 3072;
        pageSize2 = pageSize;
        i9 = i5 & 16;
        if (i9 != 0) {
            if ((i3 & 24576) == 0) {
                i10 = i2;
                if (gapComposerH.d(i10)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i6 |= i11;
            }
            i12 = i5 & 32;
            if (i12 != 0) {
                i6 |= ImageMetadata.EDGE_MODE;
                f3 = f2;
            } else {
                f3 = f2;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.c(f3)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i6 |= i13;
                }
            }
            i14 = i5 & 64;
            if (i14 != 0) {
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.K(vertical)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i6 |= i15;
                }
                if ((i3 & 12582912) != 0) {
                    i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
                }
                i16 = i5 & 256;
                if (i16 != 0) {
                    if ((i3 & 100663296) == 0) {
                        if (gapComposerH.b(z)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i6 |= i17;
                    }
                    i18 = i5 & 512;
                    if (i18 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.b(z2)) {
                                i19 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i19 = 268435456;
                            }
                            i6 |= i19;
                        }
                        i20 = i4 | 6;
                        if ((i4 & 48) == 0) {
                            i20 = i4 | 22;
                        }
                        i21 = i20;
                        i22 = i21 | KyberEngine.KyberPolyBytes;
                        if ((i4 & 3072) == 0) {
                            i23 = i21 | 1408;
                        } else {
                            i23 = i22;
                        }
                        if ((i4 & 24576) != 0) {
                            if (gapComposerH.y(composableLambdaImpl)) {
                                i28 = 16384;
                            } else {
                                i28 = 8192;
                            }
                            i23 |= i28;
                        }
                        if ((i6 & 306783379) == 306783378) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i6 & 1, z3)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0) {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111111111111 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111111111112 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1111111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1111111116;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            } else {
                                if (i29 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                }
                                if (i30 != 0) {
                                    Dp.Companion companion11111111111111111113 = Dp.f11004c;
                                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i7 != 0) {
                                    pageSize4 = PageSize.Fill.f5709a;
                                } else {
                                    pageSize4 = pageSize2;
                                }
                                if (i9 != 0) {
                                    i10 = 0;
                                }
                                if (i12 != 0) {
                                    Dp.Companion companion11111111111111111114 = Dp.f11004c;
                                    f3 = 0.0f;
                                }
                                if (i14 != 0) {
                                    Alignment.f8582a.getClass();
                                    vertical3 = Alignment.Companion.l;
                                } else {
                                    vertical3 = vertical;
                                }
                                if ((i5 & 128) != 0) {
                                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    i6 &= -29360129;
                                } else {
                                    pagerState2 = pagerState;
                                    gapComposer2 = gapComposerH;
                                    targetedFlingBehaviorA = targetedFlingBehavior;
                                }
                                if (i16 == 0) {
                                }
                                if (i18 == 0) {
                                }
                                NestedScrollConnection nestedScrollConnectionB1111111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                                modifierE = dTFunctionNameModifier;
                                i25 = i23 & (-7281);
                                i26 = i6;
                                pageSize5 = pageSize4;
                                gapComposer = gapComposer2;
                                overscrollEffectA = OverscrollKt.a(gapComposer2);
                                z6 = z9;
                                nestedScrollConnection2 = nestedScrollConnectionB1111111117;
                                paddingValues4 = paddingValuesA;
                                i27 = i10;
                                snapPosition3 = SnapPosition.Start.f4877a;
                                vertical4 = vertical3;
                                targetedFlingBehavior3 = targetedFlingBehaviorA;
                                z7 = z8;
                            }
                            float f111113 = f3;
                            gapComposer.a0();
                            OpaqueKey opaqueKey11119 = ComposerKt.f7940a;
                            Orientation orientation11119 = Orientation.Horizontal;
                            Alignment.f8582a.getClass();
                            BiasAlignment.Horizontal horizontal11119 = Alignment.Companion.o;
                            int i31111111111111111111111111111111117 = i25;
                            int i31111111111111111111111111111111118 = i26 >> 6;
                            int i31111111111111111111111111111111119 = i26 << 12;
                            int i311111111111111111111111111111111110 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111111118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111118 & 3670016) | (i31111111111111111111111111111111119 & 234881024) | (i31111111111111111111111111111111119 & 1879048192);
                            int i311111111111111111111111111111111111 = i31111111111111111111111111111111117 << 6;
                            int i311111111111111111111111111111111112 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111111111 & 896) | (i31111111111111111111111111111111118 & 57344) | ((i31111111111111111111111111111111117 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111 & 3670016);
                            Modifier modifier111111 = modifierE;
                            LazyLayoutPagerKt.a(modifier111111, pagerState, paddingValues4, z6, orientation11119, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111113, pageSize5, nestedScrollConnection2, horizontal11119, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111111110, i311111111111111111111111111111111112);
                            int i311111111111111111111111111111111113 = i27;
                            targetedFlingBehavior2 = targetedFlingBehavior3;
                            i24 = i311111111111111111111111111111111113;
                            z4 = z7;
                            f4 = f111113;
                            Alignment.Vertical vertical111113 = vertical4;
                            overscrollEffect2 = overscrollEffectA;
                            vertical2 = vertical111113;
                            pageSize3 = pageSize5;
                            snapPosition2 = snapPosition3;
                            z5 = z6;
                            paddingValues3 = paddingValues4;
                            modifier2 = modifier111111;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            vertical2 = vertical;
                            targetedFlingBehavior2 = targetedFlingBehavior;
                            z4 = z;
                            nestedScrollConnection2 = nestedScrollConnection;
                            overscrollEffect2 = overscrollEffect;
                            paddingValues3 = paddingValues2;
                            pageSize3 = pageSize2;
                            i24 = i10;
                            f4 = f3;
                            modifier2 = modifierE;
                            z5 = z2;
                            snapPosition2 = snapPosition;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i4);
                                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i6 |= 805306368;
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB1111111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB1111111118;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB1111111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB1111111119;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f111114 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey111110 = ComposerKt.f7940a;
                        Orientation orientation111110 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal111110 = Alignment.Companion.o;
                        int i311111111111111111111111111111111114 = i25;
                        int i311111111111111111111111111111111115 = i26 >> 6;
                        int i311111111111111111111111111111111116 = i26 << 12;
                        int i311111111111111111111111111111111117 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111111115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111115 & 3670016) | (i311111111111111111111111111111111116 & 234881024) | (i311111111111111111111111111111111116 & 1879048192);
                        int i311111111111111111111111111111111118 = i311111111111111111111111111111111114 << 6;
                        int i311111111111111111111111111111111119 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111111118 & 896) | (i311111111111111111111111111111111115 & 57344) | ((i311111111111111111111111111111111114 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111118 & 3670016);
                        Modifier modifier111112 = modifierE;
                        LazyLayoutPagerKt.a(modifier111112, pagerState, paddingValues4, z6, orientation111110, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111114, pageSize5, nestedScrollConnection2, horizontal111110, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111111117, i311111111111111111111111111111111119);
                        int i3111111111111111111111111111111111110 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111111111111111111111111111111110;
                        z4 = z7;
                        f4 = f111114;
                        Alignment.Vertical vertical111114 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical111114;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier111112;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 100663296;
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111111110;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111111111111 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111111111112 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111111111;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f111115 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey111111 = ComposerKt.f7940a;
                        Orientation orientation111111 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal111111 = Alignment.Companion.o;
                        int i3111111111111111111111111111111111111 = i25;
                        int i3111111111111111111111111111111111112 = i26 >> 6;
                        int i3111111111111111111111111111111111113 = i26 << 12;
                        int i3111111111111111111111111111111111114 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111111112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111112 & 3670016) | (i3111111111111111111111111111111111113 & 234881024) | (i3111111111111111111111111111111111113 & 1879048192);
                        int i3111111111111111111111111111111111115 = i3111111111111111111111111111111111111 << 6;
                        int i3111111111111111111111111111111111116 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111111115 & 896) | (i3111111111111111111111111111111111112 & 57344) | ((i3111111111111111111111111111111111111 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111115 & 3670016);
                        Modifier modifier111113 = modifierE;
                        LazyLayoutPagerKt.a(modifier111113, pagerState, paddingValues4, z6, orientation111111, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111115, pageSize5, nestedScrollConnection2, horizontal111111, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111111114, i3111111111111111111111111111111111116);
                        int i3111111111111111111111111111111111117 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i3111111111111111111111111111111111117;
                        z4 = z7;
                        f4 = f111115;
                        Alignment.Vertical vertical111115 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical111115;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier111113;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111111113 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111111114 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111111112;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111111115 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111111116 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111111113;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f111116 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey111112 = ComposerKt.f7940a;
                    Orientation orientation111112 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal111112 = Alignment.Companion.o;
                    int i3111111111111111111111111111111111118 = i25;
                    int i3111111111111111111111111111111111119 = i26 >> 6;
                    int i31111111111111111111111111111111111110 = i26 << 12;
                    int i31111111111111111111111111111111111111 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111111119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111119 & 3670016) | (i31111111111111111111111111111111111110 & 234881024) | (i31111111111111111111111111111111111110 & 1879048192);
                    int i31111111111111111111111111111111111112 = i3111111111111111111111111111111111118 << 6;
                    int i31111111111111111111111111111111111113 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111111111112 & 896) | (i3111111111111111111111111111111111119 & 57344) | ((i3111111111111111111111111111111111118 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111112 & 3670016);
                    Modifier modifier111114 = modifierE;
                    LazyLayoutPagerKt.a(modifier111114, pagerState, paddingValues4, z6, orientation111112, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111116, pageSize5, nestedScrollConnection2, horizontal111112, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111111111111111, i31111111111111111111111111111111111113);
                    int i31111111111111111111111111111111111114 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i31111111111111111111111111111111111114;
                    z4 = z7;
                    f4 = f111116;
                    Alignment.Vertical vertical111116 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical111116;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier111114;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 1572864;
            if ((i3 & 12582912) != 0) {
                i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
            }
            i16 = i5 & 256;
            if (i16 != 0) {
                if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i6 |= i17;
                }
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111111111117 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion111111111111111111118 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111111114;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion111111111111111111119 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion1111111111111111111110 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB11111111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB11111111115;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f111117 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey111113 = ComposerKt.f7940a;
                        Orientation orientation111113 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal111113 = Alignment.Companion.o;
                        int i31111111111111111111111111111111111115 = i25;
                        int i31111111111111111111111111111111111116 = i26 >> 6;
                        int i31111111111111111111111111111111111117 = i26 << 12;
                        int i31111111111111111111111111111111111118 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111111111116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111116 & 3670016) | (i31111111111111111111111111111111111117 & 234881024) | (i31111111111111111111111111111111111117 & 1879048192);
                        int i31111111111111111111111111111111111119 = i31111111111111111111111111111111111115 << 6;
                        int i311111111111111111111111111111111111110 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111111111119 & 896) | (i31111111111111111111111111111111111116 & 57344) | ((i31111111111111111111111111111111111115 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111119 & 3670016);
                        Modifier modifier111115 = modifierE;
                        LazyLayoutPagerKt.a(modifier111115, pagerState, paddingValues4, z6, orientation111113, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111117, pageSize5, nestedScrollConnection2, horizontal111113, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111111111111118, i311111111111111111111111111111111111110);
                        int i311111111111111111111111111111111111111 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i311111111111111111111111111111111111111;
                        z4 = z7;
                        f4 = f111117;
                        Alignment.Vertical vertical111117 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical111117;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier111115;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111111116;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111111113 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111111114 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111111117;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f111118 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey111114 = ComposerKt.f7940a;
                    Orientation orientation111114 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal111114 = Alignment.Companion.o;
                    int i311111111111111111111111111111111111112 = i25;
                    int i311111111111111111111111111111111111113 = i26 >> 6;
                    int i311111111111111111111111111111111111114 = i26 << 12;
                    int i311111111111111111111111111111111111115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111111111113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111113 & 3670016) | (i311111111111111111111111111111111111114 & 234881024) | (i311111111111111111111111111111111111114 & 1879048192);
                    int i311111111111111111111111111111111111116 = i311111111111111111111111111111111111112 << 6;
                    int i311111111111111111111111111111111111117 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111111111116 & 896) | (i311111111111111111111111111111111111113 & 57344) | ((i311111111111111111111111111111111111112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111116 & 3670016);
                    Modifier modifier111116 = modifierE;
                    LazyLayoutPagerKt.a(modifier111116, pagerState, paddingValues4, z6, orientation111114, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111118, pageSize5, nestedScrollConnection2, horizontal111114, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111111111115, i311111111111111111111111111111111111117);
                    int i311111111111111111111111111111111111118 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i311111111111111111111111111111111111118;
                    z4 = z7;
                    f4 = f111118;
                    Alignment.Vertical vertical111118 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical111118;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier111116;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 100663296;
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z2)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i6 |= i19;
                }
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111111115 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111111116 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111111118;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111111117 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111111118 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB11111111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB11111111119;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f111119 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey111115 = ComposerKt.f7940a;
                    Orientation orientation111115 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal111115 = Alignment.Companion.o;
                    int i311111111111111111111111111111111111119 = i25;
                    int i3111111111111111111111111111111111111110 = i26 >> 6;
                    int i3111111111111111111111111111111111111111 = i26 << 12;
                    int i3111111111111111111111111111111111111112 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111111111110 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111110 & 3670016) | (i3111111111111111111111111111111111111111 & 234881024) | (i3111111111111111111111111111111111111111 & 1879048192);
                    int i3111111111111111111111111111111111111113 = i311111111111111111111111111111111111119 << 6;
                    int i3111111111111111111111111111111111111114 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111111111113 & 896) | (i3111111111111111111111111111111111111110 & 57344) | ((i311111111111111111111111111111111111119 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111113 & 3670016);
                    Modifier modifier111117 = modifierE;
                    LazyLayoutPagerKt.a(modifier111117, pagerState, paddingValues4, z6, orientation111115, targetedFlingBehavior3, z7, overscrollEffectA, i27, f111119, pageSize5, nestedScrollConnection2, horizontal111115, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111111111112, i3111111111111111111111111111111111111114);
                    int i3111111111111111111111111111111111111115 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i3111111111111111111111111111111111111115;
                    z4 = z7;
                    f4 = f111119;
                    Alignment.Vertical vertical111119 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical111119;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier111117;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 805306368;
            i20 = i4 | 6;
            if ((i4 & 48) == 0) {
                i20 = i4 | 22;
            }
            i21 = i20;
            i22 = i21 | KyberEngine.KyberPolyBytes;
            if ((i4 & 3072) == 0) {
                i23 = i21 | 1408;
            } else {
                i23 = i22;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i28 = 16384;
                } else {
                    i28 = 8192;
                }
                i23 |= i28;
            }
            if ((i6 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111111119 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion11111111111111111111110 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB111111111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB111111111110;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                } else {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion11111111111111111111111 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion11111111111111111111112 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB111111111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB111111111111;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                }
                float f1111110 = f3;
                gapComposer.a0();
                OpaqueKey opaqueKey111116 = ComposerKt.f7940a;
                Orientation orientation111116 = Orientation.Horizontal;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal111116 = Alignment.Companion.o;
                int i3111111111111111111111111111111111111116 = i25;
                int i3111111111111111111111111111111111111117 = i26 >> 6;
                int i3111111111111111111111111111111111111118 = i26 << 12;
                int i3111111111111111111111111111111111111119 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111111111117 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111117 & 3670016) | (i3111111111111111111111111111111111111118 & 234881024) | (i3111111111111111111111111111111111111118 & 1879048192);
                int i31111111111111111111111111111111111111110 = i3111111111111111111111111111111111111116 << 6;
                int i31111111111111111111111111111111111111111 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111111111111110 & 896) | (i3111111111111111111111111111111111111117 & 57344) | ((i3111111111111111111111111111111111111116 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111111110 & 3670016);
                Modifier modifier111118 = modifierE;
                LazyLayoutPagerKt.a(modifier111118, pagerState, paddingValues4, z6, orientation111116, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111110, pageSize5, nestedScrollConnection2, horizontal111116, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111111111119, i31111111111111111111111111111111111111111);
                int i31111111111111111111111111111111111111112 = i27;
                targetedFlingBehavior2 = targetedFlingBehavior3;
                i24 = i31111111111111111111111111111111111111112;
                z4 = z7;
                f4 = f1111110;
                Alignment.Vertical vertical1111110 = vertical4;
                overscrollEffect2 = overscrollEffectA;
                vertical2 = vertical1111110;
                pageSize3 = pageSize5;
                snapPosition2 = snapPosition3;
                z5 = z6;
                paddingValues3 = paddingValues4;
                modifier2 = modifier111118;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical2 = vertical;
                targetedFlingBehavior2 = targetedFlingBehavior;
                z4 = z;
                nestedScrollConnection2 = nestedScrollConnection;
                overscrollEffect2 = overscrollEffect;
                paddingValues3 = paddingValues2;
                pageSize3 = pageSize2;
                i24 = i10;
                f4 = f3;
                modifier2 = modifierE;
                z5 = z2;
                snapPosition2 = snapPosition;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 24576;
        i10 = i2;
        i12 = i5 & 32;
        if (i12 != 0) {
            i6 |= ImageMetadata.EDGE_MODE;
            f3 = f2;
        } else {
            f3 = f2;
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.c(f3)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i6 |= i13;
            }
        }
        i14 = i5 & 64;
        if (i14 != 0) {
            if ((i3 & 1572864) == 0) {
                if (gapComposerH.K(vertical)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i6 |= i15;
            }
            if ((i3 & 12582912) != 0) {
                i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
            }
            i16 = i5 & 256;
            if (i16 != 0) {
                if ((i3 & 100663296) == 0) {
                    if (gapComposerH.b(z)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i6 |= i17;
                }
                i18 = i5 & 512;
                if (i18 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.b(z2)) {
                            i19 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i19 = 268435456;
                        }
                        i6 |= i19;
                    }
                    i20 = i4 | 6;
                    if ((i4 & 48) == 0) {
                        i20 = i4 | 22;
                    }
                    i21 = i20;
                    i22 = i21 | KyberEngine.KyberPolyBytes;
                    if ((i4 & 3072) == 0) {
                        i23 = i21 | 1408;
                    } else {
                        i23 = i22;
                    }
                    if ((i4 & 24576) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i28 = 16384;
                        } else {
                            i28 = 8192;
                        }
                        i23 |= i28;
                    }
                    if ((i6 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i6 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111111111113 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111111111114 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111111112;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        } else {
                            if (i29 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i30 != 0) {
                                Dp.Companion companion11111111111111111111115 = Dp.f11004c;
                                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i7 != 0) {
                                pageSize4 = PageSize.Fill.f5709a;
                            } else {
                                pageSize4 = pageSize2;
                            }
                            if (i9 != 0) {
                                i10 = 0;
                            }
                            if (i12 != 0) {
                                Dp.Companion companion11111111111111111111116 = Dp.f11004c;
                                f3 = 0.0f;
                            }
                            if (i14 != 0) {
                                Alignment.f8582a.getClass();
                                vertical3 = Alignment.Companion.l;
                            } else {
                                vertical3 = vertical;
                            }
                            if ((i5 & 128) != 0) {
                                targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                i6 &= -29360129;
                            } else {
                                pagerState2 = pagerState;
                                gapComposer2 = gapComposerH;
                                targetedFlingBehaviorA = targetedFlingBehavior;
                            }
                            if (i16 == 0) {
                            }
                            if (i18 == 0) {
                            }
                            NestedScrollConnection nestedScrollConnectionB111111111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                            modifierE = dTFunctionNameModifier;
                            i25 = i23 & (-7281);
                            i26 = i6;
                            pageSize5 = pageSize4;
                            gapComposer = gapComposer2;
                            overscrollEffectA = OverscrollKt.a(gapComposer2);
                            z6 = z9;
                            nestedScrollConnection2 = nestedScrollConnectionB111111111113;
                            paddingValues4 = paddingValuesA;
                            i27 = i10;
                            snapPosition3 = SnapPosition.Start.f4877a;
                            vertical4 = vertical3;
                            targetedFlingBehavior3 = targetedFlingBehaviorA;
                            z7 = z8;
                        }
                        float f1111111 = f3;
                        gapComposer.a0();
                        OpaqueKey opaqueKey111117 = ComposerKt.f7940a;
                        Orientation orientation111117 = Orientation.Horizontal;
                        Alignment.f8582a.getClass();
                        BiasAlignment.Horizontal horizontal111117 = Alignment.Companion.o;
                        int i31111111111111111111111111111111111111113 = i25;
                        int i31111111111111111111111111111111111111114 = i26 >> 6;
                        int i31111111111111111111111111111111111111115 = i26 << 12;
                        int i31111111111111111111111111111111111111116 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111111111111114 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111111114 & 3670016) | (i31111111111111111111111111111111111111115 & 234881024) | (i31111111111111111111111111111111111111115 & 1879048192);
                        int i31111111111111111111111111111111111111117 = i31111111111111111111111111111111111111113 << 6;
                        int i31111111111111111111111111111111111111118 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111111111111117 & 896) | (i31111111111111111111111111111111111111114 & 57344) | ((i31111111111111111111111111111111111111113 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111111117 & 3670016);
                        Modifier modifier111119 = modifierE;
                        LazyLayoutPagerKt.a(modifier111119, pagerState, paddingValues4, z6, orientation111117, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111111, pageSize5, nestedScrollConnection2, horizontal111117, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111111111111111116, i31111111111111111111111111111111111111118);
                        int i31111111111111111111111111111111111111119 = i27;
                        targetedFlingBehavior2 = targetedFlingBehavior3;
                        i24 = i31111111111111111111111111111111111111119;
                        z4 = z7;
                        f4 = f1111111;
                        Alignment.Vertical vertical1111111 = vertical4;
                        overscrollEffect2 = overscrollEffectA;
                        vertical2 = vertical1111111;
                        pageSize3 = pageSize5;
                        snapPosition2 = snapPosition3;
                        z5 = z6;
                        paddingValues3 = paddingValues4;
                        modifier2 = modifier111119;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        vertical2 = vertical;
                        targetedFlingBehavior2 = targetedFlingBehavior;
                        z4 = z;
                        nestedScrollConnection2 = nestedScrollConnection;
                        overscrollEffect2 = overscrollEffect;
                        paddingValues3 = paddingValues2;
                        pageSize3 = pageSize2;
                        i24 = i10;
                        f4 = f3;
                        modifier2 = modifierE;
                        z5 = z2;
                        snapPosition2 = snapPosition;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: sl0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i4);
                                PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i6 |= 805306368;
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion11111111111111111111117 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion11111111111111111111118 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111111111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111111111114;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion11111111111111111111119 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111111111110 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111111111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111111111115;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f1111112 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey111118 = ComposerKt.f7940a;
                    Orientation orientation111118 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal111118 = Alignment.Companion.o;
                    int i311111111111111111111111111111111111111110 = i25;
                    int i311111111111111111111111111111111111111111 = i26 >> 6;
                    int i311111111111111111111111111111111111111112 = i26 << 12;
                    int i311111111111111111111111111111111111111113 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111111111111111 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111111111 & 3670016) | (i311111111111111111111111111111111111111112 & 234881024) | (i311111111111111111111111111111111111111112 & 1879048192);
                    int i311111111111111111111111111111111111111114 = i311111111111111111111111111111111111111110 << 6;
                    int i311111111111111111111111111111111111111115 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111111111111114 & 896) | (i311111111111111111111111111111111111111111 & 57344) | ((i311111111111111111111111111111111111111110 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111111114 & 3670016);
                    Modifier modifier1111110 = modifierE;
                    LazyLayoutPagerKt.a(modifier1111110, pagerState, paddingValues4, z6, orientation111118, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111112, pageSize5, nestedScrollConnection2, horizontal111118, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111111111111113, i311111111111111111111111111111111111111115);
                    int i311111111111111111111111111111111111111116 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i311111111111111111111111111111111111111116;
                    z4 = z7;
                    f4 = f1111112;
                    Alignment.Vertical vertical1111112 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical1111112;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier1111110;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 100663296;
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z2)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i6 |= i19;
                }
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111111111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111111111116;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111111111113 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion111111111111111111111114 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB111111111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB111111111117;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f1111113 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey111119 = ComposerKt.f7940a;
                    Orientation orientation111119 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal111119 = Alignment.Companion.o;
                    int i311111111111111111111111111111111111111117 = i25;
                    int i311111111111111111111111111111111111111118 = i26 >> 6;
                    int i311111111111111111111111111111111111111119 = i26 << 12;
                    int i3111111111111111111111111111111111111111110 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111111111111118 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111111118 & 3670016) | (i311111111111111111111111111111111111111119 & 234881024) | (i311111111111111111111111111111111111111119 & 1879048192);
                    int i3111111111111111111111111111111111111111111 = i311111111111111111111111111111111111111117 << 6;
                    int i3111111111111111111111111111111111111111112 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111111111111111 & 896) | (i311111111111111111111111111111111111111118 & 57344) | ((i311111111111111111111111111111111111111117 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111111111 & 3670016);
                    Modifier modifier1111111 = modifierE;
                    LazyLayoutPagerKt.a(modifier1111111, pagerState, paddingValues4, z6, orientation111119, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111113, pageSize5, nestedScrollConnection2, horizontal111119, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111111111111110, i3111111111111111111111111111111111111111112);
                    int i3111111111111111111111111111111111111111113 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i3111111111111111111111111111111111111111113;
                    z4 = z7;
                    f4 = f1111113;
                    Alignment.Vertical vertical1111113 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical1111113;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier1111111;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 805306368;
            i20 = i4 | 6;
            if ((i4 & 48) == 0) {
                i20 = i4 | 22;
            }
            i21 = i20;
            i22 = i21 | KyberEngine.KyberPolyBytes;
            if ((i4 & 3072) == 0) {
                i23 = i21 | 1408;
            } else {
                i23 = i22;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i28 = 16384;
                } else {
                    i28 = 8192;
                }
                i23 |= i28;
            }
            if ((i6 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion111111111111111111111115 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion111111111111111111111116 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB111111111118 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB111111111118;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                } else {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion111111111111111111111117 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion111111111111111111111118 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB111111111119 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB111111111119;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                }
                float f1111114 = f3;
                gapComposer.a0();
                OpaqueKey opaqueKey1111110 = ComposerKt.f7940a;
                Orientation orientation1111110 = Orientation.Horizontal;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal1111110 = Alignment.Companion.o;
                int i3111111111111111111111111111111111111111114 = i25;
                int i3111111111111111111111111111111111111111115 = i26 >> 6;
                int i3111111111111111111111111111111111111111116 = i26 << 12;
                int i3111111111111111111111111111111111111111117 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111111111111115 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111111115 & 3670016) | (i3111111111111111111111111111111111111111116 & 234881024) | (i3111111111111111111111111111111111111111116 & 1879048192);
                int i3111111111111111111111111111111111111111118 = i3111111111111111111111111111111111111111114 << 6;
                int i3111111111111111111111111111111111111111119 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111111111111118 & 896) | (i3111111111111111111111111111111111111111115 & 57344) | ((i3111111111111111111111111111111111111111114 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111111118 & 3670016);
                Modifier modifier1111112 = modifierE;
                LazyLayoutPagerKt.a(modifier1111112, pagerState, paddingValues4, z6, orientation1111110, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111114, pageSize5, nestedScrollConnection2, horizontal1111110, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111111111111117, i3111111111111111111111111111111111111111119);
                int i31111111111111111111111111111111111111111110 = i27;
                targetedFlingBehavior2 = targetedFlingBehavior3;
                i24 = i31111111111111111111111111111111111111111110;
                z4 = z7;
                f4 = f1111114;
                Alignment.Vertical vertical1111114 = vertical4;
                overscrollEffect2 = overscrollEffectA;
                vertical2 = vertical1111114;
                pageSize3 = pageSize5;
                snapPosition2 = snapPosition3;
                z5 = z6;
                paddingValues3 = paddingValues4;
                modifier2 = modifier1111112;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical2 = vertical;
                targetedFlingBehavior2 = targetedFlingBehavior;
                z4 = z;
                nestedScrollConnection2 = nestedScrollConnection;
                overscrollEffect2 = overscrollEffect;
                paddingValues3 = paddingValues2;
                pageSize3 = pageSize2;
                i24 = i10;
                f4 = f3;
                modifier2 = modifierE;
                z5 = z2;
                snapPosition2 = snapPosition;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 1572864;
        if ((i3 & 12582912) != 0) {
            i6 |= ((i5 & 128) == 0 || !gapComposerH.K(targetedFlingBehavior)) ? 4194304 : 8388608;
        }
        i16 = i5 & 256;
        if (i16 != 0) {
            if ((i3 & 100663296) == 0) {
                if (gapComposerH.b(z)) {
                    i17 = 67108864;
                } else {
                    i17 = 33554432;
                }
                i6 |= i17;
            }
            i18 = i5 & 512;
            if (i18 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.b(z2)) {
                        i19 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i19 = 268435456;
                    }
                    i6 |= i19;
                }
                i20 = i4 | 6;
                if ((i4 & 48) == 0) {
                    i20 = i4 | 22;
                }
                i21 = i20;
                i22 = i21 | KyberEngine.KyberPolyBytes;
                if ((i4 & 3072) == 0) {
                    i23 = i21 | 1408;
                } else {
                    i23 = i22;
                }
                if ((i4 & 24576) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i28 = 16384;
                    } else {
                        i28 = 8192;
                    }
                    i23 |= i28;
                }
                if ((i6 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i6 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion111111111111111111111119 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111111111110 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111111110 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111111110;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    } else {
                        if (i29 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i30 != 0) {
                            Dp.Companion companion1111111111111111111111111 = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i7 != 0) {
                            pageSize4 = PageSize.Fill.f5709a;
                        } else {
                            pageSize4 = pageSize2;
                        }
                        if (i9 != 0) {
                            i10 = 0;
                        }
                        if (i12 != 0) {
                            Dp.Companion companion1111111111111111111111112 = Dp.f11004c;
                            f3 = 0.0f;
                        }
                        if (i14 != 0) {
                            Alignment.f8582a.getClass();
                            vertical3 = Alignment.Companion.l;
                        } else {
                            vertical3 = vertical;
                        }
                        if ((i5 & 128) != 0) {
                            targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            i6 &= -29360129;
                        } else {
                            pagerState2 = pagerState;
                            gapComposer2 = gapComposerH;
                            targetedFlingBehaviorA = targetedFlingBehavior;
                        }
                        if (i16 == 0) {
                        }
                        if (i18 == 0) {
                        }
                        NestedScrollConnection nestedScrollConnectionB1111111111111 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                        modifierE = dTFunctionNameModifier;
                        i25 = i23 & (-7281);
                        i26 = i6;
                        pageSize5 = pageSize4;
                        gapComposer = gapComposer2;
                        overscrollEffectA = OverscrollKt.a(gapComposer2);
                        z6 = z9;
                        nestedScrollConnection2 = nestedScrollConnectionB1111111111111;
                        paddingValues4 = paddingValuesA;
                        i27 = i10;
                        snapPosition3 = SnapPosition.Start.f4877a;
                        vertical4 = vertical3;
                        targetedFlingBehavior3 = targetedFlingBehaviorA;
                        z7 = z8;
                    }
                    float f1111115 = f3;
                    gapComposer.a0();
                    OpaqueKey opaqueKey1111111 = ComposerKt.f7940a;
                    Orientation orientation1111111 = Orientation.Horizontal;
                    Alignment.f8582a.getClass();
                    BiasAlignment.Horizontal horizontal1111111 = Alignment.Companion.o;
                    int i31111111111111111111111111111111111111111111 = i25;
                    int i31111111111111111111111111111111111111111112 = i26 >> 6;
                    int i31111111111111111111111111111111111111111113 = i26 << 12;
                    int i31111111111111111111111111111111111111111114 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111111111111111112 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111111111112 & 3670016) | (i31111111111111111111111111111111111111111113 & 234881024) | (i31111111111111111111111111111111111111111113 & 1879048192);
                    int i31111111111111111111111111111111111111111115 = i31111111111111111111111111111111111111111111 << 6;
                    int i31111111111111111111111111111111111111111116 = ((i26 >> 9) & 14) | 3072 | (i31111111111111111111111111111111111111111115 & 896) | (i31111111111111111111111111111111111111111112 & 57344) | ((i31111111111111111111111111111111111111111111 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111111111115 & 3670016);
                    Modifier modifier1111113 = modifierE;
                    LazyLayoutPagerKt.a(modifier1111113, pagerState, paddingValues4, z6, orientation1111111, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111115, pageSize5, nestedScrollConnection2, horizontal1111111, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i31111111111111111111111111111111111111111114, i31111111111111111111111111111111111111111116);
                    int i31111111111111111111111111111111111111111117 = i27;
                    targetedFlingBehavior2 = targetedFlingBehavior3;
                    i24 = i31111111111111111111111111111111111111111117;
                    z4 = z7;
                    f4 = f1111115;
                    Alignment.Vertical vertical1111115 = vertical4;
                    overscrollEffect2 = overscrollEffectA;
                    vertical2 = vertical1111115;
                    pageSize3 = pageSize5;
                    snapPosition2 = snapPosition3;
                    z5 = z6;
                    paddingValues3 = paddingValues4;
                    modifier2 = modifier1111113;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical2 = vertical;
                    targetedFlingBehavior2 = targetedFlingBehavior;
                    z4 = z;
                    nestedScrollConnection2 = nestedScrollConnection;
                    overscrollEffect2 = overscrollEffect;
                    paddingValues3 = paddingValues2;
                    pageSize3 = pageSize2;
                    i24 = i10;
                    f4 = f3;
                    modifier2 = modifierE;
                    z5 = z2;
                    snapPosition2 = snapPosition;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: sl0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i4);
                            PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i6 |= 805306368;
            i20 = i4 | 6;
            if ((i4 & 48) == 0) {
                i20 = i4 | 22;
            }
            i21 = i20;
            i22 = i21 | KyberEngine.KyberPolyBytes;
            if ((i4 & 3072) == 0) {
                i23 = i21 | 1408;
            } else {
                i23 = i22;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i28 = 16384;
                } else {
                    i28 = 8192;
                }
                i23 |= i28;
            }
            if ((i6 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111111111113 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion1111111111111111111111114 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111111111112 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111111111112;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                } else {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111111111115 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion1111111111111111111111116 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111111111113 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111111111113;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                }
                float f1111116 = f3;
                gapComposer.a0();
                OpaqueKey opaqueKey1111112 = ComposerKt.f7940a;
                Orientation orientation1111112 = Orientation.Horizontal;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal1111112 = Alignment.Companion.o;
                int i31111111111111111111111111111111111111111118 = i25;
                int i31111111111111111111111111111111111111111119 = i26 >> 6;
                int i311111111111111111111111111111111111111111110 = i26 << 12;
                int i311111111111111111111111111111111111111111111 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i31111111111111111111111111111111111111111119 & ImageMetadata.JPEG_GPS_COORDINATES) | (i31111111111111111111111111111111111111111119 & 3670016) | (i311111111111111111111111111111111111111111110 & 234881024) | (i311111111111111111111111111111111111111111110 & 1879048192);
                int i311111111111111111111111111111111111111111112 = i31111111111111111111111111111111111111111118 << 6;
                int i311111111111111111111111111111111111111111113 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111111111111111112 & 896) | (i31111111111111111111111111111111111111111119 & 57344) | ((i31111111111111111111111111111111111111111118 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111111111112 & 3670016);
                Modifier modifier1111114 = modifierE;
                LazyLayoutPagerKt.a(modifier1111114, pagerState, paddingValues4, z6, orientation1111112, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111116, pageSize5, nestedScrollConnection2, horizontal1111112, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111111111111111111, i311111111111111111111111111111111111111111113);
                int i311111111111111111111111111111111111111111114 = i27;
                targetedFlingBehavior2 = targetedFlingBehavior3;
                i24 = i311111111111111111111111111111111111111111114;
                z4 = z7;
                f4 = f1111116;
                Alignment.Vertical vertical1111116 = vertical4;
                overscrollEffect2 = overscrollEffectA;
                vertical2 = vertical1111116;
                pageSize3 = pageSize5;
                snapPosition2 = snapPosition3;
                z5 = z6;
                paddingValues3 = paddingValues4;
                modifier2 = modifier1111114;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical2 = vertical;
                targetedFlingBehavior2 = targetedFlingBehavior;
                z4 = z;
                nestedScrollConnection2 = nestedScrollConnection;
                overscrollEffect2 = overscrollEffect;
                paddingValues3 = paddingValues2;
                pageSize3 = pageSize2;
                i24 = i10;
                f4 = f3;
                modifier2 = modifierE;
                z5 = z2;
                snapPosition2 = snapPosition;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 100663296;
        i18 = i5 & 512;
        if (i18 != 0) {
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.b(z2)) {
                    i19 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i19 = 268435456;
                }
                i6 |= i19;
            }
            i20 = i4 | 6;
            if ((i4 & 48) == 0) {
                i20 = i4 | 22;
            }
            i21 = i20;
            i22 = i21 | KyberEngine.KyberPolyBytes;
            if ((i4 & 3072) == 0) {
                i23 = i21 | 1408;
            } else {
                i23 = i22;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i28 = 16384;
                } else {
                    i28 = 8192;
                }
                i23 |= i28;
            }
            if ((i6 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111111111117 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion1111111111111111111111118 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111111111114 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111111111114;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                } else {
                    if (i29 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i30 != 0) {
                        Dp.Companion companion1111111111111111111111119 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i7 != 0) {
                        pageSize4 = PageSize.Fill.f5709a;
                    } else {
                        pageSize4 = pageSize2;
                    }
                    if (i9 != 0) {
                        i10 = 0;
                    }
                    if (i12 != 0) {
                        Dp.Companion companion11111111111111111111111110 = Dp.f11004c;
                        f3 = 0.0f;
                    }
                    if (i14 != 0) {
                        Alignment.f8582a.getClass();
                        vertical3 = Alignment.Companion.l;
                    } else {
                        vertical3 = vertical;
                    }
                    if ((i5 & 128) != 0) {
                        targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        i6 &= -29360129;
                    } else {
                        pagerState2 = pagerState;
                        gapComposer2 = gapComposerH;
                        targetedFlingBehaviorA = targetedFlingBehavior;
                    }
                    if (i16 == 0) {
                    }
                    if (i18 == 0) {
                    }
                    NestedScrollConnection nestedScrollConnectionB1111111111115 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                    modifierE = dTFunctionNameModifier;
                    i25 = i23 & (-7281);
                    i26 = i6;
                    pageSize5 = pageSize4;
                    gapComposer = gapComposer2;
                    overscrollEffectA = OverscrollKt.a(gapComposer2);
                    z6 = z9;
                    nestedScrollConnection2 = nestedScrollConnectionB1111111111115;
                    paddingValues4 = paddingValuesA;
                    i27 = i10;
                    snapPosition3 = SnapPosition.Start.f4877a;
                    vertical4 = vertical3;
                    targetedFlingBehavior3 = targetedFlingBehaviorA;
                    z7 = z8;
                }
                float f1111117 = f3;
                gapComposer.a0();
                OpaqueKey opaqueKey1111113 = ComposerKt.f7940a;
                Orientation orientation1111113 = Orientation.Horizontal;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal1111113 = Alignment.Companion.o;
                int i311111111111111111111111111111111111111111115 = i25;
                int i311111111111111111111111111111111111111111116 = i26 >> 6;
                int i311111111111111111111111111111111111111111117 = i26 << 12;
                int i311111111111111111111111111111111111111111118 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i311111111111111111111111111111111111111111116 & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111111111116 & 3670016) | (i311111111111111111111111111111111111111111117 & 234881024) | (i311111111111111111111111111111111111111111117 & 1879048192);
                int i311111111111111111111111111111111111111111119 = i311111111111111111111111111111111111111111115 << 6;
                int i3111111111111111111111111111111111111111111110 = ((i26 >> 9) & 14) | 3072 | (i311111111111111111111111111111111111111111119 & 896) | (i311111111111111111111111111111111111111111116 & 57344) | ((i311111111111111111111111111111111111111111115 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i311111111111111111111111111111111111111111119 & 3670016);
                Modifier modifier1111115 = modifierE;
                LazyLayoutPagerKt.a(modifier1111115, pagerState, paddingValues4, z6, orientation1111113, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111117, pageSize5, nestedScrollConnection2, horizontal1111113, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i311111111111111111111111111111111111111111118, i3111111111111111111111111111111111111111111110);
                int i3111111111111111111111111111111111111111111111 = i27;
                targetedFlingBehavior2 = targetedFlingBehavior3;
                i24 = i3111111111111111111111111111111111111111111111;
                z4 = z7;
                f4 = f1111117;
                Alignment.Vertical vertical1111117 = vertical4;
                overscrollEffect2 = overscrollEffectA;
                vertical2 = vertical1111117;
                pageSize3 = pageSize5;
                snapPosition2 = snapPosition3;
                z5 = z6;
                paddingValues3 = paddingValues4;
                modifier2 = modifier1111115;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical2 = vertical;
                targetedFlingBehavior2 = targetedFlingBehavior;
                z4 = z;
                nestedScrollConnection2 = nestedScrollConnection;
                overscrollEffect2 = overscrollEffect;
                paddingValues3 = paddingValues2;
                pageSize3 = pageSize2;
                i24 = i10;
                f4 = f3;
                modifier2 = modifierE;
                z5 = z2;
                snapPosition2 = snapPosition;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: sl0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 805306368;
        i20 = i4 | 6;
        if ((i4 & 48) == 0) {
            i20 = i4 | 22;
        }
        i21 = i20;
        i22 = i21 | KyberEngine.KyberPolyBytes;
        if ((i4 & 3072) == 0) {
            i23 = i21 | 1408;
        } else {
            i23 = i22;
        }
        if ((i4 & 24576) != 0) {
            if (gapComposerH.y(composableLambdaImpl)) {
                i28 = 16384;
            } else {
                i28 = 8192;
            }
            i23 |= i28;
        }
        if ((i6 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i6 & 1, z3)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                if (i29 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if (i30 != 0) {
                    Dp.Companion companion11111111111111111111111111 = Dp.f11004c;
                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i7 != 0) {
                    pageSize4 = PageSize.Fill.f5709a;
                } else {
                    pageSize4 = pageSize2;
                }
                if (i9 != 0) {
                    i10 = 0;
                }
                if (i12 != 0) {
                    Dp.Companion companion11111111111111111111111112 = Dp.f11004c;
                    f3 = 0.0f;
                }
                if (i14 != 0) {
                    Alignment.f8582a.getClass();
                    vertical3 = Alignment.Companion.l;
                } else {
                    vertical3 = vertical;
                }
                if ((i5 & 128) != 0) {
                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                    pagerState2 = pagerState;
                    gapComposer2 = gapComposerH;
                    i6 &= -29360129;
                } else {
                    pagerState2 = pagerState;
                    gapComposer2 = gapComposerH;
                    targetedFlingBehaviorA = targetedFlingBehavior;
                }
                if (i16 == 0) {
                }
                if (i18 == 0) {
                }
                NestedScrollConnection nestedScrollConnectionB1111111111116 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                modifierE = dTFunctionNameModifier;
                i25 = i23 & (-7281);
                i26 = i6;
                pageSize5 = pageSize4;
                gapComposer = gapComposer2;
                overscrollEffectA = OverscrollKt.a(gapComposer2);
                z6 = z9;
                nestedScrollConnection2 = nestedScrollConnectionB1111111111116;
                paddingValues4 = paddingValuesA;
                i27 = i10;
                snapPosition3 = SnapPosition.Start.f4877a;
                vertical4 = vertical3;
                targetedFlingBehavior3 = targetedFlingBehaviorA;
                z7 = z8;
            } else {
                if (i29 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("HorizontalPager--8jOkeI");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if (i30 != 0) {
                    Dp.Companion companion11111111111111111111111113 = Dp.f11004c;
                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i7 != 0) {
                    pageSize4 = PageSize.Fill.f5709a;
                } else {
                    pageSize4 = pageSize2;
                }
                if (i9 != 0) {
                    i10 = 0;
                }
                if (i12 != 0) {
                    Dp.Companion companion11111111111111111111111114 = Dp.f11004c;
                    f3 = 0.0f;
                }
                if (i14 != 0) {
                    Alignment.f8582a.getClass();
                    vertical3 = Alignment.Companion.l;
                } else {
                    vertical3 = vertical;
                }
                if ((i5 & 128) != 0) {
                    targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i6 & 14) | ImageMetadata.EDGE_MODE, 30);
                    pagerState2 = pagerState;
                    gapComposer2 = gapComposerH;
                    i6 &= -29360129;
                } else {
                    pagerState2 = pagerState;
                    gapComposer2 = gapComposerH;
                    targetedFlingBehaviorA = targetedFlingBehavior;
                }
                if (i16 == 0) {
                }
                if (i18 == 0) {
                }
                NestedScrollConnection nestedScrollConnectionB1111111111117 = PagerDefaults.b(pagerState2, Orientation.Horizontal, gapComposer2, (i6 & 14) | 432);
                modifierE = dTFunctionNameModifier;
                i25 = i23 & (-7281);
                i26 = i6;
                pageSize5 = pageSize4;
                gapComposer = gapComposer2;
                overscrollEffectA = OverscrollKt.a(gapComposer2);
                z6 = z9;
                nestedScrollConnection2 = nestedScrollConnectionB1111111111117;
                paddingValues4 = paddingValuesA;
                i27 = i10;
                snapPosition3 = SnapPosition.Start.f4877a;
                vertical4 = vertical3;
                targetedFlingBehavior3 = targetedFlingBehaviorA;
                z7 = z8;
            }
            float f1111118 = f3;
            gapComposer.a0();
            OpaqueKey opaqueKey1111114 = ComposerKt.f7940a;
            Orientation orientation1111114 = Orientation.Horizontal;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal1111114 = Alignment.Companion.o;
            int i3111111111111111111111111111111111111111111112 = i25;
            int i3111111111111111111111111111111111111111111113 = i26 >> 6;
            int i3111111111111111111111111111111111111111111114 = i26 << 12;
            int i3111111111111111111111111111111111111111111115 = (i26 & 896) | ((i26 >> 3) & 14) | 24576 | ((i26 << 3) & 112) | ((i26 >> 18) & 7168) | (i3111111111111111111111111111111111111111111113 & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111111111113 & 3670016) | (i3111111111111111111111111111111111111111111114 & 234881024) | (i3111111111111111111111111111111111111111111114 & 1879048192);
            int i3111111111111111111111111111111111111111111116 = i3111111111111111111111111111111111111111111112 << 6;
            int i3111111111111111111111111111111111111111111117 = ((i26 >> 9) & 14) | 3072 | (i3111111111111111111111111111111111111111111116 & 896) | (i3111111111111111111111111111111111111111111113 & 57344) | ((i3111111111111111111111111111111111111111111112 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (i3111111111111111111111111111111111111111111116 & 3670016);
            Modifier modifier1111116 = modifierE;
            LazyLayoutPagerKt.a(modifier1111116, pagerState, paddingValues4, z6, orientation1111114, targetedFlingBehavior3, z7, overscrollEffectA, i27, f1111118, pageSize5, nestedScrollConnection2, horizontal1111114, vertical4, snapPosition3, composableLambdaImpl, gapComposer, i3111111111111111111111111111111111111111111115, i3111111111111111111111111111111111111111111117);
            int i3111111111111111111111111111111111111111111118 = i27;
            targetedFlingBehavior2 = targetedFlingBehavior3;
            i24 = i3111111111111111111111111111111111111111111118;
            z4 = z7;
            f4 = f1111118;
            Alignment.Vertical vertical1111118 = vertical4;
            overscrollEffect2 = overscrollEffectA;
            vertical2 = vertical1111118;
            pageSize3 = pageSize5;
            snapPosition2 = snapPosition3;
            z5 = z6;
            paddingValues3 = paddingValues4;
            modifier2 = modifier1111116;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            vertical2 = vertical;
            targetedFlingBehavior2 = targetedFlingBehavior;
            z4 = z;
            nestedScrollConnection2 = nestedScrollConnection;
            overscrollEffect2 = overscrollEffect;
            paddingValues3 = paddingValues2;
            pageSize3 = pageSize2;
            i24 = i10;
            f4 = f3;
            modifier2 = modifierE;
            z5 = z2;
            snapPosition2 = snapPosition;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: sl0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i4);
                    PagerKt.a(pagerState, modifier2, paddingValues3, pageSize3, i24, f4, vertical2, targetedFlingBehavior2, z4, z5, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, (Composer) obj, iA, iA2, i5);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(PagerState pagerState, Modifier modifier, PaddingValues paddingValues, PageSize pageSize, Alignment.Horizontal horizontal, TargetedFlingBehavior targetedFlingBehavior, boolean z, NestedScrollConnection nestedScrollConnection, SnapPosition snapPosition, OverscrollEffect overscrollEffect, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        GapComposer gapComposer;
        PaddingValues paddingValues2;
        PageSize pageSize2;
        Alignment.Horizontal horizontal2;
        TargetedFlingBehavior targetedFlingBehavior2;
        boolean z2;
        NestedScrollConnection nestedScrollConnection2;
        SnapPosition snapPosition2;
        OverscrollEffect overscrollEffect2;
        PaddingValues paddingValuesA;
        GapComposer gapComposer2;
        PageSize pageSize3;
        Alignment.Horizontal horizontal3;
        OverscrollEffect overscrollEffect3;
        SnapPosition snapPosition3;
        NestedScrollConnection nestedScrollConnection3;
        int i3;
        TargetedFlingBehavior targetedFlingBehavior3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "VerticalPager--8jOkeI");
        }
        GapComposer gapComposerH = composer.h(-1590376023);
        int i4 = i2 | (gapComposerH.K(pagerState) ? 4 : 2) | 911961472;
        boolean z3 = true;
        if (gapComposerH.p(i4 & 1, (306783379 & i4) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                Dp.Companion companion = Dp.f11004c;
                paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal4 = Alignment.Companion.o;
                TargetedFlingBehavior targetedFlingBehaviorA = PagerDefaults.a(pagerState, null, null, gapComposerH, (i4 & 14) | ImageMetadata.EDGE_MODE, 30);
                gapComposer2 = gapComposerH;
                int i5 = (-29360129) & i4;
                NestedScrollConnection nestedScrollConnectionB = PagerDefaults.b(pagerState, Orientation.Vertical, gapComposer2, (i4 & 14) | 432);
                OverscrollEffect overscrollEffectA = OverscrollKt.a(gapComposer2);
                pageSize3 = PageSize.Fill.f5709a;
                horizontal3 = horizontal4;
                overscrollEffect3 = overscrollEffectA;
                snapPosition3 = SnapPosition.Start.f4877a;
                nestedScrollConnection3 = nestedScrollConnectionB;
                i3 = i5;
                targetedFlingBehavior3 = targetedFlingBehaviorA;
            } else {
                gapComposerH.D();
                i3 = i4 & (-29360129);
                paddingValuesA = paddingValues;
                pageSize3 = pageSize;
                horizontal3 = horizontal;
                targetedFlingBehavior3 = targetedFlingBehavior;
                z3 = z;
                nestedScrollConnection3 = nestedScrollConnection;
                snapPosition3 = snapPosition;
                overscrollEffect3 = overscrollEffect;
                gapComposer2 = gapComposerH;
            }
            gapComposer2.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PaddingValues paddingValues3 = paddingValuesA;
            Orientation orientation = Orientation.Vertical;
            Alignment.f8582a.getClass();
            gapComposer = gapComposer2;
            LazyLayoutPagerKt.a(modifierE, pagerState, paddingValues3, false, orientation, targetedFlingBehavior3, z3, overscrollEffect3, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, pageSize3, nestedScrollConnection3, horizontal3, Alignment.Companion.l, snapPosition3, composableLambdaImpl, gapComposer, ((i3 << 3) & 112) | 907570566, 1797510);
            paddingValues2 = paddingValues3;
            pageSize2 = pageSize3;
            nestedScrollConnection2 = nestedScrollConnection3;
            snapPosition2 = snapPosition3;
            overscrollEffect2 = overscrollEffect3;
            z2 = z3;
            targetedFlingBehavior2 = targetedFlingBehavior3;
            horizontal2 = horizontal3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            paddingValues2 = paddingValues;
            pageSize2 = pageSize;
            horizontal2 = horizontal;
            targetedFlingBehavior2 = targetedFlingBehavior;
            z2 = z;
            nestedScrollConnection2 = nestedScrollConnection;
            snapPosition2 = snapPosition;
            overscrollEffect2 = overscrollEffect;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zl(pagerState, modifierE, paddingValues2, pageSize2, horizontal2, targetedFlingBehavior2, z2, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, i2);
        }
    }
}
