package androidx.compose.foundation.lazy;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.b0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyDslKt {
    /* JADX WARN: Code duplicated, block: B:101:0x010e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0120  */
    /* JADX WARN: Code duplicated, block: B:105:0x0123  */
    /* JADX WARN: Code duplicated, block: B:108:0x012c  */
    /* JADX WARN: Code duplicated, block: B:110:0x013c  */
    /* JADX WARN: Code duplicated, block: B:124:0x0169 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x016b  */
    /* JADX WARN: Code duplicated, block: B:126:0x0171  */
    /* JADX WARN: Code duplicated, block: B:129:0x0177  */
    /* JADX WARN: Code duplicated, block: B:131:0x0182  */
    /* JADX WARN: Code duplicated, block: B:134:0x018e  */
    /* JADX WARN: Code duplicated, block: B:136:0x0195  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:141:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:144:0x0208  */
    /* JADX WARN: Code duplicated, block: B:147:0x021d  */
    /* JADX WARN: Code duplicated, block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:45:0x0076  */
    /* JADX WARN: Code duplicated, block: B:46:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0095  */
    /* JADX WARN: Code duplicated, block: B:61:0x009d  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:68:0x00af  */
    /* JADX WARN: Code duplicated, block: B:72:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:84:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00df  */
    /* JADX WARN: Code duplicated, block: B:88:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:96:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:98:0x0106  */
    /* JADX WARN: Code duplicated, block: B:99:0x0109  */
    public static final void a(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        LazyListState lazyListStateA;
        PaddingValues paddingValuesA;
        int i5;
        Arrangement.Vertical vertical2;
        int i6;
        Alignment.Horizontal horizontal2;
        int i7;
        FlingBehavior flingBehaviorA;
        int i8;
        boolean z2;
        int i9;
        boolean z3;
        GapComposer gapComposer;
        LazyListState lazyListState2;
        PaddingValues paddingValues2;
        Arrangement.Vertical vertical3;
        boolean z4;
        Alignment.Horizontal horizontal3;
        FlingBehavior flingBehavior2;
        Modifier modifier2;
        OverscrollEffect overscrollEffect2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Modifier modifier3;
        OverscrollEffect overscrollEffectA;
        int i10;
        Arrangement.Vertical vertical4;
        boolean z5;
        Alignment.Horizontal horizontal4;
        FlingBehavior flingBehavior3;
        LazyListState lazyListState3;
        int i11;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyColumn");
        }
        GapComposer gapComposerH = composer.h(53695811);
        int i12 = i3 & 1;
        if (i12 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if ((i3 & 2) == 0) {
                lazyListStateA = lazyListState;
                int i13 = gapComposerH.K(lazyListStateA) ? 32 : 16;
                i4 |= i13;
            } else {
                lazyListStateA = lazyListState;
            }
            i4 |= i13;
        } else {
            lazyListStateA = lazyListState;
        }
        int i14 = i3 & 4;
        if (i14 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                paddingValuesA = paddingValues;
                i4 |= gapComposerH.K(paddingValuesA) ? 256 : 128;
            }
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (gapComposerH.b(false)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i4 |= i5;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    vertical2 = vertical;
                    int i15 = gapComposerH.K(vertical2) ? 16384 : 8192;
                    i4 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i4 |= i15;
            } else {
                vertical2 = vertical;
            }
            i6 = i3 & 32;
            if (i6 != 0) {
                if ((196608 & i2) == 0) {
                    horizontal2 = horizontal;
                    if (gapComposerH.K(horizontal2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i4 |= i7;
                }
                if ((1572864 & i2) == 0) {
                    if ((i3 & 64) == 0) {
                        flingBehaviorA = flingBehavior;
                        int i16 = gapComposerH.K(flingBehaviorA) ? 1048576 : 524288;
                        i4 |= i16;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    i4 |= i16;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                i8 = i3 & 128;
                if (i8 != 0) {
                    i4 |= 12582912;
                    z2 = z;
                } else {
                    z2 = z;
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.b(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i4 |= i9;
                    }
                }
                if ((i2 & 100663296) == 0) {
                    i4 |= 33554432;
                }
                if ((i2 & 805306368) != 0) {
                    if (gapComposerH.y(function1)) {
                        i11 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i11 = 268435456;
                    }
                    i4 |= i11;
                }
                if ((i4 & 306783379) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0 || gapComposerH.h0()) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                            lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        }
                        if (i14 != 0) {
                            Dp.Companion companion = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            vertical2 = Arrangement.f4920c;
                        }
                        if (i6 != 0) {
                            Alignment.f8582a.getClass();
                            horizontal2 = Alignment.Companion.n;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        modifier3 = dTFunctionNameModifier;
                        overscrollEffectA = OverscrollKt.a(gapComposerH);
                        i10 = (-234881025) & i4;
                        vertical4 = vertical2;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        flingBehavior3 = flingBehaviorA;
                        lazyListState3 = lazyListStateA;
                    } else {
                        gapComposerH.D();
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                        }
                        i10 = i4 & (-234881025);
                        overscrollEffectA = overscrollEffect;
                        modifier3 = modifierE;
                        vertical4 = vertical2;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        lazyListState3 = lazyListStateA;
                        flingBehavior3 = flingBehaviorA;
                    }
                    PaddingValues paddingValues3 = paddingValuesA;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i17 = i10 >> 3;
                    gapComposer = gapComposerH;
                    LazyListKt.a(modifier3, lazyListState3, paddingValues3, true, flingBehavior3, z5, overscrollEffectA, horizontal4, vertical4, null, null, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i17) | (i17 & 3670016) | ((i10 << 12) & 1879048192), ((i10 >> 12) & 14) | ((i10 >> 18) & 7168), 6400);
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues2 = paddingValues3;
                    flingBehavior2 = flingBehavior3;
                    z4 = z5;
                    overscrollEffect2 = overscrollEffectA;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    vertical3 = vertical2;
                    z4 = z2;
                    horizontal3 = horizontal2;
                    flingBehavior2 = flingBehaviorA;
                    modifier2 = modifierE;
                    overscrollEffect2 = overscrollEffect;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, vertical3, horizontal3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 2);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            horizontal2 = horizontal;
            if ((1572864 & i2) == 0) {
                if ((i3 & 64) == 0) {
                    flingBehaviorA = flingBehavior;
                    if (gapComposerH.K(flingBehaviorA)) {
                    }
                    i4 |= i16;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                i4 |= i16;
            } else {
                flingBehaviorA = flingBehavior;
            }
            i8 = i3 & 128;
            if (i8 != 0) {
                i4 |= 12582912;
                z2 = z;
            } else {
                z2 = z;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i4 |= i9;
                }
            }
            if ((i2 & 100663296) == 0) {
                i4 |= 33554432;
            }
            if ((i2 & 805306368) != 0) {
                if (gapComposerH.y(function1)) {
                    i11 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i11 = 268435456;
                }
                i4 |= i11;
            }
            if ((i4 & 306783379) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion2 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        vertical2 = Arrangement.f4920c;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        horizontal2 = Alignment.Companion.n;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    vertical4 = vertical2;
                    z5 = z2;
                    horizontal4 = horizontal2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion3 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        vertical2 = Arrangement.f4920c;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        horizontal2 = Alignment.Companion.n;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    vertical4 = vertical2;
                    z5 = z2;
                    horizontal4 = horizontal2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                }
                PaddingValues paddingValues4 = paddingValuesA;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int i18 = i10 >> 3;
                gapComposer = gapComposerH;
                LazyListKt.a(modifier3, lazyListState3, paddingValues4, true, flingBehavior3, z5, overscrollEffectA, horizontal4, vertical4, null, null, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i18) | (i18 & 3670016) | ((i10 << 12) & 1879048192), ((i10 >> 12) & 14) | ((i10 >> 18) & 7168), 6400);
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues2 = paddingValues4;
                flingBehavior2 = flingBehavior3;
                z4 = z5;
                overscrollEffect2 = overscrollEffectA;
                horizontal3 = horizontal4;
                vertical3 = vertical4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                vertical3 = vertical2;
                z4 = z2;
                horizontal3 = horizontal2;
                flingBehavior2 = flingBehaviorA;
                modifier2 = modifierE;
                overscrollEffect2 = overscrollEffect;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, vertical3, horizontal3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 2);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        paddingValuesA = paddingValues;
        if ((i3 & 8) != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (gapComposerH.b(false)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i4 |= i5;
        }
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                vertical2 = vertical;
                if (gapComposerH.K(vertical2)) {
                }
                i4 |= i15;
            } else {
                vertical2 = vertical;
            }
            i4 |= i15;
        } else {
            vertical2 = vertical;
        }
        i6 = i3 & 32;
        if (i6 != 0) {
            if ((196608 & i2) == 0) {
                horizontal2 = horizontal;
                if (gapComposerH.K(horizontal2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i4 |= i7;
            }
            if ((1572864 & i2) == 0) {
                if ((i3 & 64) == 0) {
                    flingBehaviorA = flingBehavior;
                    if (gapComposerH.K(flingBehaviorA)) {
                    }
                    i4 |= i16;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                i4 |= i16;
            } else {
                flingBehaviorA = flingBehavior;
            }
            i8 = i3 & 128;
            if (i8 != 0) {
                i4 |= 12582912;
                z2 = z;
            } else {
                z2 = z;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i4 |= i9;
                }
            }
            if ((i2 & 100663296) == 0) {
                i4 |= 33554432;
            }
            if ((i2 & 805306368) != 0) {
                if (gapComposerH.y(function1)) {
                    i11 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i11 = 268435456;
                }
                i4 |= i11;
            }
            if ((i4 & 306783379) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion4 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        vertical2 = Arrangement.f4920c;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        horizontal2 = Alignment.Companion.n;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    vertical4 = vertical2;
                    z5 = z2;
                    horizontal4 = horizontal2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion5 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        vertical2 = Arrangement.f4920c;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        horizontal2 = Alignment.Companion.n;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    vertical4 = vertical2;
                    z5 = z2;
                    horizontal4 = horizontal2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                }
                PaddingValues paddingValues5 = paddingValuesA;
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int i19 = i10 >> 3;
                gapComposer = gapComposerH;
                LazyListKt.a(modifier3, lazyListState3, paddingValues5, true, flingBehavior3, z5, overscrollEffectA, horizontal4, vertical4, null, null, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i19) | (i19 & 3670016) | ((i10 << 12) & 1879048192), ((i10 >> 12) & 14) | ((i10 >> 18) & 7168), 6400);
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues2 = paddingValues5;
                flingBehavior2 = flingBehavior3;
                z4 = z5;
                overscrollEffect2 = overscrollEffectA;
                horizontal3 = horizontal4;
                vertical3 = vertical4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                vertical3 = vertical2;
                z4 = z2;
                horizontal3 = horizontal2;
                flingBehavior2 = flingBehaviorA;
                modifier2 = modifierE;
                overscrollEffect2 = overscrollEffect;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, vertical3, horizontal3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 2);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        horizontal2 = horizontal;
        if ((1572864 & i2) == 0) {
            if ((i3 & 64) == 0) {
                flingBehaviorA = flingBehavior;
                if (gapComposerH.K(flingBehaviorA)) {
                }
                i4 |= i16;
            } else {
                flingBehaviorA = flingBehavior;
            }
            i4 |= i16;
        } else {
            flingBehaviorA = flingBehavior;
        }
        i8 = i3 & 128;
        if (i8 != 0) {
            i4 |= 12582912;
            z2 = z;
        } else {
            z2 = z;
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.b(z2)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i4 |= i9;
            }
        }
        if ((i2 & 100663296) == 0) {
            i4 |= 33554432;
        }
        if ((i2 & 805306368) != 0) {
            if (gapComposerH.y(function1)) {
                i11 = PKIFailureInfo.duplicateCertReq;
            } else {
                i11 = 268435456;
            }
            i4 |= i11;
        }
        if ((i4 & 306783379) != 306783378) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if ((i3 & 2) != 0) {
                    i4 &= -113;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                }
                if (i14 != 0) {
                    Dp.Companion companion6 = Dp.f11004c;
                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    vertical2 = Arrangement.f4920c;
                }
                if (i6 != 0) {
                    Alignment.f8582a.getClass();
                    horizontal2 = Alignment.Companion.n;
                }
                if ((i3 & 64) != 0) {
                    i4 &= -3670017;
                    flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                }
                if (i8 != 0) {
                    z2 = true;
                }
                modifier3 = dTFunctionNameModifier;
                overscrollEffectA = OverscrollKt.a(gapComposerH);
                i10 = (-234881025) & i4;
                vertical4 = vertical2;
                z5 = z2;
                horizontal4 = horizontal2;
                flingBehavior3 = flingBehaviorA;
                lazyListState3 = lazyListStateA;
            } else {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LazyColumn");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if ((i3 & 2) != 0) {
                    i4 &= -113;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                }
                if (i14 != 0) {
                    Dp.Companion companion7 = Dp.f11004c;
                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    vertical2 = Arrangement.f4920c;
                }
                if (i6 != 0) {
                    Alignment.f8582a.getClass();
                    horizontal2 = Alignment.Companion.n;
                }
                if ((i3 & 64) != 0) {
                    i4 &= -3670017;
                    flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                }
                if (i8 != 0) {
                    z2 = true;
                }
                modifier3 = dTFunctionNameModifier;
                overscrollEffectA = OverscrollKt.a(gapComposerH);
                i10 = (-234881025) & i4;
                vertical4 = vertical2;
                z5 = z2;
                horizontal4 = horizontal2;
                flingBehavior3 = flingBehaviorA;
                lazyListState3 = lazyListStateA;
            }
            PaddingValues paddingValues6 = paddingValuesA;
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            int i110 = i10 >> 3;
            gapComposer = gapComposerH;
            LazyListKt.a(modifier3, lazyListState3, paddingValues6, true, flingBehavior3, z5, overscrollEffectA, horizontal4, vertical4, null, null, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i110) | (i110 & 3670016) | ((i10 << 12) & 1879048192), ((i10 >> 12) & 14) | ((i10 >> 18) & 7168), 6400);
            modifier2 = modifier3;
            lazyListState2 = lazyListState3;
            paddingValues2 = paddingValues6;
            flingBehavior2 = flingBehavior3;
            z4 = z5;
            overscrollEffect2 = overscrollEffectA;
            horizontal3 = horizontal4;
            vertical3 = vertical4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lazyListState2 = lazyListStateA;
            paddingValues2 = paddingValuesA;
            vertical3 = vertical2;
            z4 = z2;
            horizontal3 = horizontal2;
            flingBehavior2 = flingBehaviorA;
            modifier2 = modifierE;
            overscrollEffect2 = overscrollEffect;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, vertical3, horizontal3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x010e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0120  */
    /* JADX WARN: Code duplicated, block: B:105:0x0123  */
    /* JADX WARN: Code duplicated, block: B:108:0x012c  */
    /* JADX WARN: Code duplicated, block: B:110:0x013c  */
    /* JADX WARN: Code duplicated, block: B:124:0x0169 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x016b  */
    /* JADX WARN: Code duplicated, block: B:126:0x0171  */
    /* JADX WARN: Code duplicated, block: B:129:0x0177  */
    /* JADX WARN: Code duplicated, block: B:131:0x0182  */
    /* JADX WARN: Code duplicated, block: B:134:0x018e  */
    /* JADX WARN: Code duplicated, block: B:136:0x0195  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:141:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:144:0x0207  */
    /* JADX WARN: Code duplicated, block: B:147:0x021c  */
    /* JADX WARN: Code duplicated, block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:45:0x0076  */
    /* JADX WARN: Code duplicated, block: B:46:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0095  */
    /* JADX WARN: Code duplicated, block: B:61:0x009d  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:68:0x00af  */
    /* JADX WARN: Code duplicated, block: B:72:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:80:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:84:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00df  */
    /* JADX WARN: Code duplicated, block: B:88:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:96:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:98:0x0106  */
    /* JADX WARN: Code duplicated, block: B:99:0x0109  */
    public static final void b(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        LazyListState lazyListStateA;
        PaddingValues paddingValuesA;
        int i5;
        Arrangement.Horizontal horizontal2;
        int i6;
        Alignment.Vertical vertical2;
        int i7;
        FlingBehavior flingBehaviorA;
        int i8;
        boolean z2;
        int i9;
        boolean z3;
        GapComposer gapComposer;
        LazyListState lazyListState2;
        PaddingValues paddingValues2;
        Arrangement.Horizontal horizontal3;
        boolean z4;
        Alignment.Vertical vertical3;
        FlingBehavior flingBehavior2;
        Modifier modifier2;
        OverscrollEffect overscrollEffect2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Modifier modifier3;
        OverscrollEffect overscrollEffectA;
        int i10;
        Arrangement.Horizontal horizontal4;
        boolean z5;
        Alignment.Vertical vertical4;
        FlingBehavior flingBehavior3;
        LazyListState lazyListState3;
        int i11;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyRow");
        }
        GapComposer gapComposerH = composer.h(-1884325601);
        int i12 = i3 & 1;
        if (i12 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if ((i3 & 2) == 0) {
                lazyListStateA = lazyListState;
                int i13 = gapComposerH.K(lazyListStateA) ? 32 : 16;
                i4 |= i13;
            } else {
                lazyListStateA = lazyListState;
            }
            i4 |= i13;
        } else {
            lazyListStateA = lazyListState;
        }
        int i14 = i3 & 4;
        if (i14 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                paddingValuesA = paddingValues;
                i4 |= gapComposerH.K(paddingValuesA) ? 256 : 128;
            }
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (gapComposerH.b(false)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i4 |= i5;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    horizontal2 = horizontal;
                    int i15 = gapComposerH.K(horizontal2) ? 16384 : 8192;
                    i4 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i4 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i3 & 32;
            if (i6 != 0) {
                if ((196608 & i2) == 0) {
                    vertical2 = vertical;
                    if (gapComposerH.K(vertical2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i4 |= i7;
                }
                if ((1572864 & i2) == 0) {
                    if ((i3 & 64) == 0) {
                        flingBehaviorA = flingBehavior;
                        int i16 = gapComposerH.K(flingBehaviorA) ? 1048576 : 524288;
                        i4 |= i16;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    i4 |= i16;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                i8 = i3 & 128;
                if (i8 != 0) {
                    i4 |= 12582912;
                    z2 = z;
                } else {
                    z2 = z;
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.b(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i4 |= i9;
                    }
                }
                if ((i2 & 100663296) == 0) {
                    i4 |= 33554432;
                }
                if ((i2 & 805306368) != 0) {
                    if (gapComposerH.y(function1)) {
                        i11 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i11 = 268435456;
                    }
                    i4 |= i11;
                }
                if ((i4 & 306783379) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i4 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0 || gapComposerH.h0()) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                            lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        }
                        if (i14 != 0) {
                            Dp.Companion companion = Dp.f11004c;
                            paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                            horizontal2 = Arrangement.f4918a;
                        }
                        if (i6 != 0) {
                            Alignment.f8582a.getClass();
                            vertical2 = Alignment.Companion.f8591k;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                            flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        modifier3 = dTFunctionNameModifier;
                        overscrollEffectA = OverscrollKt.a(gapComposerH);
                        i10 = (-234881025) & i4;
                        horizontal4 = horizontal2;
                        z5 = z2;
                        vertical4 = vertical2;
                        flingBehavior3 = flingBehaviorA;
                        lazyListState3 = lazyListStateA;
                    } else {
                        gapComposerH.D();
                        if ((i3 & 2) != 0) {
                            i4 &= -113;
                        }
                        if ((i3 & 16) != 0) {
                            i4 &= -57345;
                        }
                        if ((i3 & 64) != 0) {
                            i4 &= -3670017;
                        }
                        i10 = i4 & (-234881025);
                        overscrollEffectA = overscrollEffect;
                        modifier3 = modifierE;
                        horizontal4 = horizontal2;
                        z5 = z2;
                        vertical4 = vertical2;
                        lazyListState3 = lazyListStateA;
                        flingBehavior3 = flingBehaviorA;
                    }
                    PaddingValues paddingValues3 = paddingValuesA;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int i17 = i10 >> 3;
                    gapComposer = gapComposerH;
                    LazyListKt.a(modifier3, lazyListState3, paddingValues3, false, flingBehavior3, z5, overscrollEffectA, null, null, vertical4, horizontal4, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i17) | (i17 & 3670016), ((i10 >> 12) & 112) | ((i10 >> 6) & 896) | ((i10 >> 18) & 7168), 1792);
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues2 = paddingValues3;
                    flingBehavior2 = flingBehavior3;
                    z4 = z5;
                    overscrollEffect2 = overscrollEffectA;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    horizontal3 = horizontal2;
                    z4 = z2;
                    vertical3 = vertical2;
                    flingBehavior2 = flingBehaviorA;
                    modifier2 = modifierE;
                    overscrollEffect2 = overscrollEffect;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, horizontal3, vertical3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            vertical2 = vertical;
            if ((1572864 & i2) == 0) {
                if ((i3 & 64) == 0) {
                    flingBehaviorA = flingBehavior;
                    if (gapComposerH.K(flingBehaviorA)) {
                    }
                    i4 |= i16;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                i4 |= i16;
            } else {
                flingBehaviorA = flingBehavior;
            }
            i8 = i3 & 128;
            if (i8 != 0) {
                i4 |= 12582912;
                z2 = z;
            } else {
                z2 = z;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i4 |= i9;
                }
            }
            if ((i2 & 100663296) == 0) {
                i4 |= 33554432;
            }
            if ((i2 & 805306368) != 0) {
                if (gapComposerH.y(function1)) {
                    i11 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i11 = 268435456;
                }
                i4 |= i11;
            }
            if ((i4 & 306783379) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion2 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        horizontal2 = Arrangement.f4918a;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        vertical2 = Alignment.Companion.f8591k;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    horizontal4 = horizontal2;
                    z5 = z2;
                    vertical4 = vertical2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion3 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        horizontal2 = Arrangement.f4918a;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        vertical2 = Alignment.Companion.f8591k;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    horizontal4 = horizontal2;
                    z5 = z2;
                    vertical4 = vertical2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                }
                PaddingValues paddingValues4 = paddingValuesA;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int i18 = i10 >> 3;
                gapComposer = gapComposerH;
                LazyListKt.a(modifier3, lazyListState3, paddingValues4, false, flingBehavior3, z5, overscrollEffectA, null, null, vertical4, horizontal4, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i18) | (i18 & 3670016), ((i10 >> 12) & 112) | ((i10 >> 6) & 896) | ((i10 >> 18) & 7168), 1792);
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues2 = paddingValues4;
                flingBehavior2 = flingBehavior3;
                z4 = z5;
                overscrollEffect2 = overscrollEffectA;
                vertical3 = vertical4;
                horizontal3 = horizontal4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                horizontal3 = horizontal2;
                z4 = z2;
                vertical3 = vertical2;
                flingBehavior2 = flingBehaviorA;
                modifier2 = modifierE;
                overscrollEffect2 = overscrollEffect;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, horizontal3, vertical3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        paddingValuesA = paddingValues;
        if ((i3 & 8) != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (gapComposerH.b(false)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i4 |= i5;
        }
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                horizontal2 = horizontal;
                if (gapComposerH.K(horizontal2)) {
                }
                i4 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i4 |= i15;
        } else {
            horizontal2 = horizontal;
        }
        i6 = i3 & 32;
        if (i6 != 0) {
            if ((196608 & i2) == 0) {
                vertical2 = vertical;
                if (gapComposerH.K(vertical2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i4 |= i7;
            }
            if ((1572864 & i2) == 0) {
                if ((i3 & 64) == 0) {
                    flingBehaviorA = flingBehavior;
                    if (gapComposerH.K(flingBehaviorA)) {
                    }
                    i4 |= i16;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                i4 |= i16;
            } else {
                flingBehaviorA = flingBehavior;
            }
            i8 = i3 & 128;
            if (i8 != 0) {
                i4 |= 12582912;
                z2 = z;
            } else {
                z2 = z;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i4 |= i9;
                }
            }
            if ((i2 & 100663296) == 0) {
                i4 |= 33554432;
            }
            if ((i2 & 805306368) != 0) {
                if (gapComposerH.y(function1)) {
                    i11 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i11 = 268435456;
                }
                i4 |= i11;
            }
            if ((i4 & 306783379) != 306783378) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion4 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        horizontal2 = Arrangement.f4918a;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        vertical2 = Alignment.Companion.f8591k;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    horizontal4 = horizontal2;
                    z5 = z2;
                    vertical4 = vertical2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                } else {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    }
                    if (i14 != 0) {
                        Dp.Companion companion5 = Dp.f11004c;
                        paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                        horizontal2 = Arrangement.f4918a;
                    }
                    if (i6 != 0) {
                        Alignment.f8582a.getClass();
                        vertical2 = Alignment.Companion.f8591k;
                    }
                    if ((i3 & 64) != 0) {
                        i4 &= -3670017;
                        flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    modifier3 = dTFunctionNameModifier;
                    overscrollEffectA = OverscrollKt.a(gapComposerH);
                    i10 = (-234881025) & i4;
                    horizontal4 = horizontal2;
                    z5 = z2;
                    vertical4 = vertical2;
                    flingBehavior3 = flingBehaviorA;
                    lazyListState3 = lazyListStateA;
                }
                PaddingValues paddingValues5 = paddingValuesA;
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int i19 = i10 >> 3;
                gapComposer = gapComposerH;
                LazyListKt.a(modifier3, lazyListState3, paddingValues5, false, flingBehavior3, z5, overscrollEffectA, null, null, vertical4, horizontal4, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i19) | (i19 & 3670016), ((i10 >> 12) & 112) | ((i10 >> 6) & 896) | ((i10 >> 18) & 7168), 1792);
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues2 = paddingValues5;
                flingBehavior2 = flingBehavior3;
                z4 = z5;
                overscrollEffect2 = overscrollEffectA;
                vertical3 = vertical4;
                horizontal3 = horizontal4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                horizontal3 = horizontal2;
                z4 = z2;
                vertical3 = vertical2;
                flingBehavior2 = flingBehaviorA;
                modifier2 = modifierE;
                overscrollEffect2 = overscrollEffect;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, horizontal3, vertical3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        vertical2 = vertical;
        if ((1572864 & i2) == 0) {
            if ((i3 & 64) == 0) {
                flingBehaviorA = flingBehavior;
                if (gapComposerH.K(flingBehaviorA)) {
                }
                i4 |= i16;
            } else {
                flingBehaviorA = flingBehavior;
            }
            i4 |= i16;
        } else {
            flingBehaviorA = flingBehavior;
        }
        i8 = i3 & 128;
        if (i8 != 0) {
            i4 |= 12582912;
            z2 = z;
        } else {
            z2 = z;
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.b(z2)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i4 |= i9;
            }
        }
        if ((i2 & 100663296) == 0) {
            i4 |= 33554432;
        }
        if ((i2 & 805306368) != 0) {
            if (gapComposerH.y(function1)) {
                i11 = PKIFailureInfo.duplicateCertReq;
            } else {
                i11 = 268435456;
            }
            i4 |= i11;
        }
        if ((i4 & 306783379) != 306783378) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if ((i3 & 2) != 0) {
                    i4 &= -113;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                }
                if (i14 != 0) {
                    Dp.Companion companion6 = Dp.f11004c;
                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    horizontal2 = Arrangement.f4918a;
                }
                if (i6 != 0) {
                    Alignment.f8582a.getClass();
                    vertical2 = Alignment.Companion.f8591k;
                }
                if ((i3 & 64) != 0) {
                    i4 &= -3670017;
                    flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                }
                if (i8 != 0) {
                    z2 = true;
                }
                modifier3 = dTFunctionNameModifier;
                overscrollEffectA = OverscrollKt.a(gapComposerH);
                i10 = (-234881025) & i4;
                horizontal4 = horizontal2;
                z5 = z2;
                vertical4 = vertical2;
                flingBehavior3 = flingBehaviorA;
                lazyListState3 = lazyListStateA;
            } else {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LazyRow");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if ((i3 & 2) != 0) {
                    i4 &= -113;
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                }
                if (i14 != 0) {
                    Dp.Companion companion7 = Dp.f11004c;
                    paddingValuesA = PaddingKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                if ((i3 & 16) != 0) {
                    i4 &= -57345;
                    horizontal2 = Arrangement.f4918a;
                }
                if (i6 != 0) {
                    Alignment.f8582a.getClass();
                    vertical2 = Alignment.Companion.f8591k;
                }
                if ((i3 & 64) != 0) {
                    i4 &= -3670017;
                    flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                }
                if (i8 != 0) {
                    z2 = true;
                }
                modifier3 = dTFunctionNameModifier;
                overscrollEffectA = OverscrollKt.a(gapComposerH);
                i10 = (-234881025) & i4;
                horizontal4 = horizontal2;
                z5 = z2;
                vertical4 = vertical2;
                flingBehavior3 = flingBehaviorA;
                lazyListState3 = lazyListStateA;
            }
            PaddingValues paddingValues6 = paddingValuesA;
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            int i110 = i10 >> 3;
            gapComposer = gapComposerH;
            LazyListKt.a(modifier3, lazyListState3, paddingValues6, false, flingBehavior3, z5, overscrollEffectA, null, null, vertical4, horizontal4, function1, gapComposer, (i10 & 14) | 24576 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (458752 & i110) | (i110 & 3670016), ((i10 >> 12) & 112) | ((i10 >> 6) & 896) | ((i10 >> 18) & 7168), 1792);
            modifier2 = modifier3;
            lazyListState2 = lazyListState3;
            paddingValues2 = paddingValues6;
            flingBehavior2 = flingBehavior3;
            z4 = z5;
            overscrollEffect2 = overscrollEffectA;
            vertical3 = vertical4;
            horizontal3 = horizontal4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lazyListState2 = lazyListStateA;
            paddingValues2 = paddingValuesA;
            horizontal3 = horizontal2;
            z4 = z2;
            vertical3 = vertical2;
            flingBehavior2 = flingBehaviorA;
            modifier2 = modifierE;
            overscrollEffect2 = overscrollEffect;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b0(modifier2, lazyListState2, paddingValues2, horizontal3, vertical3, flingBehavior2, z4, overscrollEffect2, function1, i2, i3, 3);
        }
    }
}
