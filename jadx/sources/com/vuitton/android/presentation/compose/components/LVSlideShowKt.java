package com.vuitton.android.presentation.compose.components;

import android.content.res.Configuration;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import defpackage.a1;
import defpackage.b30;
import defpackage.n00;
import defpackage.o60;
import defpackage.p70;
import defpackage.q70;
import defpackage.s70;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.KCallablesJvm;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0004¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "xPosPreviousItem", "xPosCurrentItem", "xPosNextItem", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSlideShowKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50996a;

        static {
            int[] iArr = new int[PagerParallaxFactor.values().length];
            try {
                iArr[PagerParallaxFactor.LightParallax.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PagerParallaxFactor.MediumParallax.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PagerParallaxFactor.StrongParallax.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f50996a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012b  */
    /* JADX WARN: Code duplicated, block: B:103:0x013c  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:44:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0095  */
    /* JADX WARN: Code duplicated, block: B:56:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:79:0x00db  */
    /* JADX WARN: Code duplicated, block: B:80:0x00de  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:92:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:94:0x0103  */
    /* JADX WARN: Code duplicated, block: B:95:0x0106  */
    /* JADX WARN: Code duplicated, block: B:97:0x0109  */
    /* JADX WARN: Code duplicated, block: B:98:0x010c  */
    public static final void a(final PagerState pagerState, Modifier modifier, boolean z, PagerParallaxFactor pagerParallaxFactor, boolean z2, boolean z3, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        boolean z4;
        int i5;
        int iOrdinal;
        int i6;
        int i7;
        int i8;
        boolean z5;
        int i9;
        int i10;
        int i11;
        Modifier modifier2;
        boolean z6;
        final PagerParallaxFactor pagerParallaxFactor2;
        final boolean z7;
        final boolean z8;
        Modifier modifier3;
        final boolean z9;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        boolean z10;
        PagerParallaxFactor pagerParallaxFactor3;
        boolean z11;
        boolean z12;
        int i12;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSlideShow-ROuykTE");
        }
        pagerState.getClass();
        GapComposer gapComposerH = composer.h(-49891246);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(pagerState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i13 = i3 & 2;
        if (i13 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i14 = i3 & 4;
        if (i14 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z4 = z;
                i4 |= gapComposerH.b(z4) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (pagerParallaxFactor == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = pagerParallaxFactor.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i4 | 24576;
            i8 = i3 & 32;
            if (i8 != 0) {
                if ((196608 & i2) == 0) {
                    z5 = z2;
                    if (gapComposerH.b(z5)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i7 |= i9;
                }
                i10 = i3 & 64;
                if (i10 != 0) {
                    if ((1572864 & i2) == 0) {
                        if (gapComposerH.b(z3)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i7 |= i11;
                    }
                    if ((12582912 & i2) != 0) {
                        if (gapComposerH.y(composableLambdaImpl)) {
                            i12 = 8388608;
                        } else {
                            i12 = 4194304;
                        }
                        i7 |= i12;
                    }
                    modifier2 = modifierE;
                    if ((4793491 & i7) != 4793490) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (gapComposerH.p(i7 & 1, z6)) {
                        if (i13 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        } else {
                            z10 = z4;
                        }
                        if (i5 != 0) {
                            pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                        } else {
                            pagerParallaxFactor3 = pagerParallaxFactor;
                        }
                        if (i8 != 0) {
                            z11 = true;
                        } else {
                            z11 = z5;
                        }
                        if (i10 != 0) {
                            z12 = false;
                        } else {
                            z12 = z3;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Modifier modifier4 = dTFunctionNameModifier;
                        ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier4, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                        modifier3 = modifier4;
                        z8 = z10;
                        pagerParallaxFactor2 = pagerParallaxFactor3;
                        z7 = z11;
                        z9 = z12;
                    } else {
                        gapComposerH.D();
                        pagerParallaxFactor2 = pagerParallaxFactor;
                        z7 = z5;
                        z8 = z4;
                        modifier3 = modifier2;
                        z9 = z3;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier5 = modifier3;
                        recomposeScopeImplB0.d = new Function2() { // from class: t70
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                LVSlideShowKt.a(pagerState, modifier5, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i7 |= 1572864;
                if ((12582912 & i2) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i12 = 8388608;
                    } else {
                        i12 = 4194304;
                    }
                    i7 |= i12;
                }
                modifier2 = modifierE;
                if ((4793491 & i7) != 4793490) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i7 & 1, z6)) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i5 != 0) {
                        pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                    } else {
                        pagerParallaxFactor3 = pagerParallaxFactor;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z5;
                    }
                    if (i10 != 0) {
                        z12 = false;
                    } else {
                        z12 = z3;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifier6 = dTFunctionNameModifier;
                    ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier6, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                    modifier3 = modifier6;
                    z8 = z10;
                    pagerParallaxFactor2 = pagerParallaxFactor3;
                    z7 = z11;
                    z9 = z12;
                } else {
                    gapComposerH.D();
                    pagerParallaxFactor2 = pagerParallaxFactor;
                    z7 = z5;
                    z8 = z4;
                    modifier3 = modifier2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier7 = modifier3;
                    recomposeScopeImplB0.d = new Function2() { // from class: t70
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            LVSlideShowKt.a(pagerState, modifier7, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 = 221184 | i4;
            z5 = z2;
            i10 = i3 & 64;
            if (i10 != 0) {
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.b(z3)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i7 |= i11;
                }
                if ((12582912 & i2) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i12 = 8388608;
                    } else {
                        i12 = 4194304;
                    }
                    i7 |= i12;
                }
                modifier2 = modifierE;
                if ((4793491 & i7) != 4793490) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i7 & 1, z6)) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i5 != 0) {
                        pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                    } else {
                        pagerParallaxFactor3 = pagerParallaxFactor;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z5;
                    }
                    if (i10 != 0) {
                        z12 = false;
                    } else {
                        z12 = z3;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifier8 = dTFunctionNameModifier;
                    ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier8, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                    modifier3 = modifier8;
                    z8 = z10;
                    pagerParallaxFactor2 = pagerParallaxFactor3;
                    z7 = z11;
                    z9 = z12;
                } else {
                    gapComposerH.D();
                    pagerParallaxFactor2 = pagerParallaxFactor;
                    z7 = z5;
                    z8 = z4;
                    modifier3 = modifier2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier9 = modifier3;
                    recomposeScopeImplB0.d = new Function2() { // from class: t70
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            LVSlideShowKt.a(pagerState, modifier9, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= 1572864;
            if ((12582912 & i2) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i7 |= i12;
            }
            modifier2 = modifierE;
            if ((4793491 & i7) != 4793490) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i7 & 1, z6)) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i5 != 0) {
                    pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                } else {
                    pagerParallaxFactor3 = pagerParallaxFactor;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z5;
                }
                if (i10 != 0) {
                    z12 = false;
                } else {
                    z12 = z3;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifier10 = dTFunctionNameModifier;
                ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier10, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                modifier3 = modifier10;
                z8 = z10;
                pagerParallaxFactor2 = pagerParallaxFactor3;
                z7 = z11;
                z9 = z12;
            } else {
                gapComposerH.D();
                pagerParallaxFactor2 = pagerParallaxFactor;
                z7 = z5;
                z8 = z4;
                modifier3 = modifier2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier11 = modifier3;
                recomposeScopeImplB0.d = new Function2() { // from class: t70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVSlideShowKt.a(pagerState, modifier11, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z4 = z;
        i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (pagerParallaxFactor == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = pagerParallaxFactor.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i4 |= i6;
        }
        i7 = i4 | 24576;
        i8 = i3 & 32;
        if (i8 != 0) {
            if ((196608 & i2) == 0) {
                z5 = z2;
                if (gapComposerH.b(z5)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i7 |= i9;
            }
            i10 = i3 & 64;
            if (i10 != 0) {
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.b(z3)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i7 |= i11;
                }
                if ((12582912 & i2) != 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i12 = 8388608;
                    } else {
                        i12 = 4194304;
                    }
                    i7 |= i12;
                }
                modifier2 = modifierE;
                if ((4793491 & i7) != 4793490) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i7 & 1, z6)) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i5 != 0) {
                        pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                    } else {
                        pagerParallaxFactor3 = pagerParallaxFactor;
                    }
                    if (i8 != 0) {
                        z11 = true;
                    } else {
                        z11 = z5;
                    }
                    if (i10 != 0) {
                        z12 = false;
                    } else {
                        z12 = z3;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifier12 = dTFunctionNameModifier;
                    ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier12, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                    modifier3 = modifier12;
                    z8 = z10;
                    pagerParallaxFactor2 = pagerParallaxFactor3;
                    z7 = z11;
                    z9 = z12;
                } else {
                    gapComposerH.D();
                    pagerParallaxFactor2 = pagerParallaxFactor;
                    z7 = z5;
                    z8 = z4;
                    modifier3 = modifier2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier13 = modifier3;
                    recomposeScopeImplB0.d = new Function2() { // from class: t70
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            LVSlideShowKt.a(pagerState, modifier13, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= 1572864;
            if ((12582912 & i2) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i7 |= i12;
            }
            modifier2 = modifierE;
            if ((4793491 & i7) != 4793490) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i7 & 1, z6)) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i5 != 0) {
                    pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                } else {
                    pagerParallaxFactor3 = pagerParallaxFactor;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z5;
                }
                if (i10 != 0) {
                    z12 = false;
                } else {
                    z12 = z3;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifier14 = dTFunctionNameModifier;
                ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier14, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                modifier3 = modifier14;
                z8 = z10;
                pagerParallaxFactor2 = pagerParallaxFactor3;
                z7 = z11;
                z9 = z12;
            } else {
                gapComposerH.D();
                pagerParallaxFactor2 = pagerParallaxFactor;
                z7 = z5;
                z8 = z4;
                modifier3 = modifier2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier15 = modifier3;
                recomposeScopeImplB0.d = new Function2() { // from class: t70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVSlideShowKt.a(pagerState, modifier15, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 = 221184 | i4;
        z5 = z2;
        i10 = i3 & 64;
        if (i10 != 0) {
            if ((1572864 & i2) == 0) {
                if (gapComposerH.b(z3)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i7 |= i11;
            }
            if ((12582912 & i2) != 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i7 |= i12;
            }
            modifier2 = modifierE;
            if ((4793491 & i7) != 4793490) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i7 & 1, z6)) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i5 != 0) {
                    pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
                } else {
                    pagerParallaxFactor3 = pagerParallaxFactor;
                }
                if (i8 != 0) {
                    z11 = true;
                } else {
                    z11 = z5;
                }
                if (i10 != 0) {
                    z12 = false;
                } else {
                    z12 = z3;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifier16 = dTFunctionNameModifier;
                ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier16, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
                modifier3 = modifier16;
                z8 = z10;
                pagerParallaxFactor2 = pagerParallaxFactor3;
                z7 = z11;
                z9 = z12;
            } else {
                gapComposerH.D();
                pagerParallaxFactor2 = pagerParallaxFactor;
                z7 = z5;
                z8 = z4;
                modifier3 = modifier2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier17 = modifier3;
                recomposeScopeImplB0.d = new Function2() { // from class: t70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVSlideShowKt.a(pagerState, modifier17, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 1572864;
        if ((12582912 & i2) != 0) {
            if (gapComposerH.y(composableLambdaImpl)) {
                i12 = 8388608;
            } else {
                i12 = 4194304;
            }
            i7 |= i12;
        }
        modifier2 = modifierE;
        if ((4793491 & i7) != 4793490) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (gapComposerH.p(i7 & 1, z6)) {
            if (i13 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVSlideShow-ROuykTE");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i14 != 0) {
                z10 = true;
            } else {
                z10 = z4;
            }
            if (i5 != 0) {
                pagerParallaxFactor3 = PagerParallaxFactor.NoParallax;
            } else {
                pagerParallaxFactor3 = pagerParallaxFactor;
            }
            if (i8 != 0) {
                z11 = true;
            } else {
                z11 = z5;
            }
            if (i10 != 0) {
                z12 = false;
            } else {
                z12 = z3;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            Modifier modifier18 = dTFunctionNameModifier;
            ThemeKt.a(null, ComposableLambdaKt.b(-582541586, new s70(modifier18, z10, pagerState, pagerParallaxFactor3, z11, z12, composableLambdaImpl), gapComposerH), gapComposerH, 48);
            modifier3 = modifier18;
            z8 = z10;
            pagerParallaxFactor2 = pagerParallaxFactor3;
            z7 = z11;
            z9 = z12;
        } else {
            gapComposerH.D();
            pagerParallaxFactor2 = pagerParallaxFactor;
            z7 = z5;
            z8 = z4;
            modifier3 = modifier2;
            z9 = z3;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier19 = modifier3;
            recomposeScopeImplB0.d = new Function2() { // from class: t70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVSlideShowKt.a(pagerState, modifier19, z8, pagerParallaxFactor2, z7, z9, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(PagerState pagerState, Modifier modifier, PagerParallaxFactor pagerParallaxFactor, boolean z, boolean z2, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        Modifier modifier2;
        String str;
        boolean z3;
        char c2;
        boolean z4;
        Object next;
        Modifier modifierE = modifier;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSlideShowContent-vucX2i8");
        }
        GapComposer gapComposerH = composer.h(-375185053);
        int i3 = i2 | (gapComposerH.K(pagerState) ? 4 : 2) | (gapComposerH.K(modifierE) ? 32 : 16) | (gapComposerH.d(pagerParallaxFactor == null ? -1 : pagerParallaxFactor.ordinal()) ? 256 : 128) | (gapComposerH.K(null) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.b(z2) ? 131072 : 65536) | (gapComposerH.y(composableLambdaImpl) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (i3 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            PagerParallaxFactor pagerParallaxFactor2 = PagerParallaxFactor.NoParallax;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (pagerParallaxFactor == pagerParallaxFactor2) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 465131752, "LVSlideShowContent-vucX2i8");
                int i5 = i3 & 14;
                boolean z5 = i5 == 4;
                Object objX = gapComposerH.x();
                if (z5 || objX == composer$Companion$Empty$1) {
                    objX = new p70(pagerState, 0);
                    gapComposerH.q(objX);
                }
                modifier2 = modifierE;
                str = "LVSlideShowContent-vucX2i8";
                PagerKt.a(pagerState, SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX), null, null, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, z, false, null, null, null, composableLambdaImpl, gapComposerH, i5 | 24576 | ((i3 << 12) & 234881024), (i3 >> 6) & 57344, 16108);
                gapComposerH.Z(false);
                z4 = false;
            } else {
                modifier2 = modifierE;
                str = "LVSlideShowContent-vucX2i8";
                gapComposerH.L(465737926);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    pagerState.getClass();
                    Iterator it = Reflection.f71922a.b(pagerState.getClass()).v().iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((KCallable) next).getF72049j(), "lazyListState"));
                    KProperty1 kProperty1 = next instanceof KProperty1 ? (KProperty1) next : null;
                    if (kProperty1 != null) {
                        KCallablesJvm.b(kProperty1);
                    }
                    Object obj = kProperty1 != null ? kProperty1.get(pagerState) : null;
                    if (obj == null) {
                        obj = null;
                    }
                    objX2 = (LazyListState) obj;
                    gapComposerH.q(objX2);
                }
                LazyListState lazyListState = (LazyListState) objX2;
                if (lazyListState == null) {
                    gapComposerH.L(465900769);
                    PagerKt.a(pagerState, null, PaddingKt.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), PageSize.Fill.f5709a, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, z, false, null, null, null, composableLambdaImpl, gapComposerH, (i3 & 14) | 24576 | ((i3 << 12) & 234881024), (i3 >> 6) & 57344, 16098);
                    gapComposerH.Z(false);
                    z4 = false;
                } else {
                    gapComposerH.L(466582335);
                    Object objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = SnapshotStateKt.e(new a1(lazyListState, 5));
                        gapComposerH.q(objX3);
                    }
                    State state = (State) objX3;
                    Object objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = SnapshotStateKt.g(fValueOf);
                        gapComposerH.q(objX4);
                    }
                    MutableState mutableState = (MutableState) objX4;
                    Object objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = SnapshotStateKt.g(fValueOf);
                        gapComposerH.q(objX5);
                    }
                    MutableState mutableState2 = (MutableState) objX5;
                    Object objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = SnapshotStateKt.g(fValueOf);
                        gapComposerH.q(objX6);
                    }
                    MutableState mutableState3 = (MutableState) objX6;
                    boolean z6 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
                    Object objX7 = gapComposerH.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        int i6 = WhenMappings.f50996a[pagerParallaxFactor.ordinal()];
                        z3 = true;
                        if (i6 == 1) {
                            c2 = 3;
                            f2 = 0.2f;
                        } else if (i6 != 2) {
                            c2 = 3;
                            if (i6 == 3) {
                                f2 = 0.6f;
                            }
                        } else {
                            c2 = 3;
                            f2 = 0.4f;
                        }
                        objX7 = Float.valueOf(f2);
                        gapComposerH.q(objX7);
                    } else {
                        z3 = true;
                        c2 = 3;
                    }
                    PagerKt.a(pagerState, modifier2, null, null, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, z, false, null, null, null, ComposableLambdaKt.b(873351348, new b30(z6, state, mutableState2, mutableState3, mutableState, ((Number) objX7).floatValue(), composableLambdaImpl), gapComposerH), gapComposerH, (i3 & 14) | 24576 | (i3 & 112) | ((i3 << 12) & 234881024), 24576, 16108);
                    z4 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z4);
            }
            if (pagerState.o() <= 1 || !z2) {
                gapComposerH.L(471263397);
                gapComposerH.Z(z4);
            } else {
                Modifier modifierC2 = o60.c(gapComposerH, 470857855, str, 1.0f);
                Alignment.f8582a.getClass();
                AccessibilityPagerButtonsKt.b(PaddingKt.i(BoxScopeInstance.f4938a.g(modifierC2, Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposerH).d), pagerState, null, Arrangement.g, Alignment.Companion.l, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, ((i3 << 3) & 112) | 27648, 36);
                gapComposerH.Z(z4);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q70(pagerState, modifier2, pagerParallaxFactor, z, z2, composableLambdaImpl, i2);
        }
    }
}
