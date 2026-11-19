package com.vuitton.android.designkit.ui.theme.molecules;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AutomationTags$ScrollableTabBar;
import com.vuitton.android.designkit.ui.common.ItemUtilsKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.common.RowItemCenterPosition;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVTabsKt;
import defpackage.c80;
import defpackage.jx;
import defpackage.n00;
import defpackage.ud;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "itemSelected", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTabsKt {
    /* JADX WARN: Code duplicated, block: B:25:0x0047  */
    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x005f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x0077  */
    /* JADX WARN: Code duplicated, block: B:41:0x007d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0085  */
    /* JADX WARN: Code duplicated, block: B:44:0x0088  */
    /* JADX WARN: Code duplicated, block: B:48:0x0091  */
    /* JADX WARN: Code duplicated, block: B:50:0x0099  */
    /* JADX WARN: Code duplicated, block: B:51:0x009c  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00da  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:82:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:84:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:88:0x0119  */
    /* JADX WARN: Code duplicated, block: B:91:0x0126  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, float f2, float f3, final int i2, final List list, PagerState pagerState, final Function1 function1, Composer composer, final int i3, final int i4) {
        int i5;
        float f4;
        float f5;
        int i6;
        int i7;
        int i8;
        int i9;
        PagerState pagerState2;
        int i10;
        int i11;
        Function1 function2;
        boolean z;
        final Modifier modifier2;
        final PagerState pagerState3;
        final float f6;
        final float f7;
        RecomposeScopeImpl recomposeScopeImplB0;
        float f8;
        float f9;
        Modifier modifier3;
        int i12;
        int i13;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVTabs-KhTvWYU");
        }
        list.getClass();
        GapComposer gapComposerH = composer.h(-1514620756);
        int i14 = i4 & 1;
        if (i14 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i4 & 2) == 0) {
            f4 = f2;
            int i15 = gapComposerH.c(f4) ? 32 : 16;
            int i16 = i5 | i15;
            if ((i4 & 4) == 0) {
                f5 = f3;
                int i17 = gapComposerH.c(f5) ? 256 : 128;
                int i18 = i16 | i17;
                if (gapComposerH.d(i2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                int i19 = i18 | i6;
                if (gapComposerH.y(list)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i8 = i19 | i7;
                i9 = i4 & 32;
                if (i9 != 0) {
                    i11 = i8 | ImageMetadata.EDGE_MODE;
                    pagerState2 = pagerState;
                } else {
                    pagerState2 = pagerState;
                    if (gapComposerH.K(pagerState2)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i11 = i8 | i10;
                }
                if ((i3 & 1572864) == 0) {
                    function2 = function1;
                    if (gapComposerH.y(function2)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i11 |= i13;
                } else {
                    function2 = function1;
                }
                if ((599187 & i11) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i11 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0 || gapComposerH.h0()) {
                        if (i14 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                        }
                        if ((i4 & 2) != 0) {
                            f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                            i11 &= -113;
                        } else {
                            f8 = f4;
                        }
                        if ((i4 & 4) != 0) {
                            f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                            i11 &= -897;
                        } else {
                            f9 = f5;
                        }
                        if (i9 != 0) {
                            pagerState2 = null;
                        }
                        int i20 = i11;
                        modifier3 = dTFunctionNameModifier;
                        i12 = i20;
                        f4 = f8;
                        f5 = f9;
                    } else {
                        gapComposerH.D();
                        if ((i4 & 2) != 0) {
                            i11 &= -113;
                        }
                        if ((i4 & 4) != 0) {
                            i11 &= -897;
                        }
                        int i21 = i11;
                        modifier3 = dTFunctionNameModifier;
                        i12 = i21;
                    }
                    PagerState pagerState4 = pagerState2;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    b(modifier3, f4, f5, i2, list, pagerState4, function2, gapComposerH, i12 & 4194302);
                    modifier2 = modifier3;
                    pagerState3 = pagerState4;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    pagerState3 = pagerState2;
                }
                f6 = f4;
                f7 = f5;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: z70
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            LVTabsKt.a(modifier2, f6, f7, i2, list, pagerState3, function1, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            f5 = f3;
            int i110 = i16 | i17;
            if (gapComposerH.d(i2)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            int i111 = i110 | i6;
            if (gapComposerH.y(list)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i8 = i111 | i7;
            i9 = i4 & 32;
            if (i9 != 0) {
                i11 = i8 | ImageMetadata.EDGE_MODE;
                pagerState2 = pagerState;
            } else {
                pagerState2 = pagerState;
                if (gapComposerH.K(pagerState2)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i11 = i8 | i10;
            }
            if ((i3 & 1572864) == 0) {
                function2 = function1;
                if (gapComposerH.y(function2)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i11 |= i13;
            } else {
                function2 = function1;
            }
            if ((599187 & i11) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i11 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                    }
                    if ((i4 & 2) != 0) {
                        f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -113;
                    } else {
                        f8 = f4;
                    }
                    if ((i4 & 4) != 0) {
                        f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -897;
                    } else {
                        f9 = f5;
                    }
                    if (i9 != 0) {
                        pagerState2 = null;
                    }
                    int i22 = i11;
                    modifier3 = dTFunctionNameModifier;
                    i12 = i22;
                    f4 = f8;
                    f5 = f9;
                } else {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                    }
                    if ((i4 & 2) != 0) {
                        f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -113;
                    } else {
                        f8 = f4;
                    }
                    if ((i4 & 4) != 0) {
                        f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -897;
                    } else {
                        f9 = f5;
                    }
                    if (i9 != 0) {
                        pagerState2 = null;
                    }
                    int i23 = i11;
                    modifier3 = dTFunctionNameModifier;
                    i12 = i23;
                    f4 = f8;
                    f5 = f9;
                }
                PagerState pagerState5 = pagerState2;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                b(modifier3, f4, f5, i2, list, pagerState5, function2, gapComposerH, i12 & 4194302);
                modifier2 = modifier3;
                pagerState3 = pagerState5;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                pagerState3 = pagerState2;
            }
            f6 = f4;
            f7 = f5;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: z70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVTabsKt.a(modifier2, f6, f7, i2, list, pagerState3, function1, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        f4 = f2;
        int i112 = i5 | i15;
        if ((i4 & 4) == 0) {
            f5 = f3;
            if (gapComposerH.c(f5)) {
            }
            int i113 = i112 | i17;
            if (gapComposerH.d(i2)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            int i114 = i113 | i6;
            if (gapComposerH.y(list)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i8 = i114 | i7;
            i9 = i4 & 32;
            if (i9 != 0) {
                i11 = i8 | ImageMetadata.EDGE_MODE;
                pagerState2 = pagerState;
            } else {
                pagerState2 = pagerState;
                if (gapComposerH.K(pagerState2)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i11 = i8 | i10;
            }
            if ((i3 & 1572864) == 0) {
                function2 = function1;
                if (gapComposerH.y(function2)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i11 |= i13;
            } else {
                function2 = function1;
            }
            if ((599187 & i11) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i11 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                    }
                    if ((i4 & 2) != 0) {
                        f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -113;
                    } else {
                        f8 = f4;
                    }
                    if ((i4 & 4) != 0) {
                        f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -897;
                    } else {
                        f9 = f5;
                    }
                    if (i9 != 0) {
                        pagerState2 = null;
                    }
                    int i24 = i11;
                    modifier3 = dTFunctionNameModifier;
                    i12 = i24;
                    f4 = f8;
                    f5 = f9;
                } else {
                    if (i14 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                    }
                    if ((i4 & 2) != 0) {
                        f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -113;
                    } else {
                        f8 = f4;
                    }
                    if ((i4 & 4) != 0) {
                        f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        i11 &= -897;
                    } else {
                        f9 = f5;
                    }
                    if (i9 != 0) {
                        pagerState2 = null;
                    }
                    int i25 = i11;
                    modifier3 = dTFunctionNameModifier;
                    i12 = i25;
                    f4 = f8;
                    f5 = f9;
                }
                PagerState pagerState6 = pagerState2;
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                b(modifier3, f4, f5, i2, list, pagerState6, function2, gapComposerH, i12 & 4194302);
                modifier2 = modifier3;
                pagerState3 = pagerState6;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                pagerState3 = pagerState2;
            }
            f6 = f4;
            f7 = f5;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: z70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVTabsKt.a(modifier2, f6, f7, i2, list, pagerState3, function1, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        f5 = f3;
        int i115 = i112 | i17;
        if (gapComposerH.d(i2)) {
            i6 = 2048;
        } else {
            i6 = 1024;
        }
        int i116 = i115 | i6;
        if (gapComposerH.y(list)) {
            i7 = 16384;
        } else {
            i7 = 8192;
        }
        i8 = i116 | i7;
        i9 = i4 & 32;
        if (i9 != 0) {
            i11 = i8 | ImageMetadata.EDGE_MODE;
            pagerState2 = pagerState;
        } else {
            pagerState2 = pagerState;
            if (gapComposerH.K(pagerState2)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i11 = i8 | i10;
        }
        if ((i3 & 1572864) == 0) {
            function2 = function1;
            if (gapComposerH.y(function2)) {
                i13 = 1048576;
            } else {
                i13 = 524288;
            }
            i11 |= i13;
        } else {
            function2 = function1;
        }
        if ((599187 & i11) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i11 & 1, z)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                if (i14 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                }
                if ((i4 & 2) != 0) {
                    f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    i11 &= -113;
                } else {
                    f8 = f4;
                }
                if ((i4 & 4) != 0) {
                    f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    i11 &= -897;
                } else {
                    f9 = f5;
                }
                if (i9 != 0) {
                    pagerState2 = null;
                }
                int i26 = i11;
                modifier3 = dTFunctionNameModifier;
                i12 = i26;
                f4 = f8;
                f5 = f9;
            } else {
                if (i14 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVTabs-KhTvWYU");
                }
                if ((i4 & 2) != 0) {
                    f8 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    i11 &= -113;
                } else {
                    f8 = f4;
                }
                if ((i4 & 4) != 0) {
                    f9 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    i11 &= -897;
                } else {
                    f9 = f5;
                }
                if (i9 != 0) {
                    pagerState2 = null;
                }
                int i27 = i11;
                modifier3 = dTFunctionNameModifier;
                i12 = i27;
                f4 = f8;
                f5 = f9;
            }
            PagerState pagerState7 = pagerState2;
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            b(modifier3, f4, f5, i2, list, pagerState7, function2, gapComposerH, i12 & 4194302);
            modifier2 = modifier3;
            pagerState3 = pagerState7;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            pagerState3 = pagerState2;
        }
        f6 = f4;
        f7 = f5;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: z70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVTabsKt.a(modifier2, f6, f7, i2, list, pagerState3, function1, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, final float f2, final float f3, final int i2, List list, final PagerState pagerState, final Function1 function1, Composer composer, final int i3) {
        GapComposer gapComposer;
        int i4;
        List list2;
        LayoutDirection layoutDirection;
        final CoroutineScope coroutineScope;
        Object obj;
        final ScrollState scrollState;
        LayoutDirection layoutDirection2;
        boolean z;
        final int i5;
        final Map map;
        char c2;
        HapticFeedback hapticFeedback;
        String str;
        Object obj2;
        GapComposer gapComposer2;
        final int i6;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Context context;
        String str2;
        List list3;
        int i7;
        Modifier modifierE = modifier;
        final List list4 = list;
        String str3 = "LVTabsInternal-ZUYZQmM";
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTabsInternal-ZUYZQmM");
        }
        modifierE.getClass();
        list4.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1694858697);
        int i8 = (i3 & 6) == 0 ? (gapComposerH.K(modifierE) ? 4 : 2) | i3 : i3;
        if ((i3 & 48) == 0) {
            i8 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.c(f3) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i8 |= gapComposerH.d(i2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i8 |= gapComposerH.y(list4) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i8 |= gapComposerH.K(pagerState) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i8 |= gapComposerH.y(function1) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i8 & 1, (599187 & i8) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            HapticFeedback hapticFeedback2 = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            boolean zK = gapComposerH.K(list4);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$2) {
                objX2 = new LinkedHashMap();
                gapComposerH.q(objX2);
            }
            Map map2 = (Map) objX2;
            float f4 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            int i9 = (int) ((f4 - LVAppDesignKitTheme.l(gapComposerH).g) * Resources.getSystem().getDisplayMetrics().density);
            LayoutDirection layoutDirection3 = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            int i10 = i8;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierK = PaddingKt.k(ScrollKt.a(SizeKt.d(modifierE, 1.0f), scrollStateB, false, 14), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
            CoroutineScope coroutineScope3 = coroutineScope2;
            LayoutDirection layoutDirection4 = layoutDirection3;
            HapticFeedback hapticFeedback3 = hapticFeedback2;
            Modifier modifierM = PaddingKt.m(modifierK, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 5);
            boolean zY = gapComposerH.y(list4);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$3) {
                objX3 = new ud(list4, 10);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierM, false, (Function1) objX3);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1258744032);
            final int i11 = 0;
            for (Object obj3 : list4) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                final String str4 = (String) obj3;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str3);
                boolean zD = gapComposerH.d(layoutDirection4.ordinal()) | gapComposerH.y(map2) | gapComposerH.K(str4);
                Object objX4 = gapComposerH.x();
                if (zD || objX4 == composer$Companion$Empty$3) {
                    layoutDirection = layoutDirection4;
                    objX4 = new jx(layoutDirection, map2, str4, 8);
                    gapComposerH.q(objX4);
                } else {
                    layoutDirection = layoutDirection4;
                }
                Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX4);
                boolean zY2 = gapComposerH.y(hapticFeedback3) | ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.y(coroutineScope3) | gapComposerH.d(i11) | ((i10 & 3670016) == 1048576) | gapComposerH.y(list4) | gapComposerH.K(str4) | gapComposerH.y(map2) | gapComposerH.d(i9) | gapComposerH.K(scrollStateB);
                Object objX5 = gapComposerH.x();
                if (zY2 || objX5 == composer$Companion$Empty$3) {
                    LayoutDirection layoutDirection5 = layoutDirection;
                    coroutineScope = coroutineScope3;
                    scrollState = scrollStateB;
                    layoutDirection2 = layoutDirection5;
                    z = false;
                    i5 = i9;
                    map = map2;
                    final HapticFeedback hapticFeedback4 = hapticFeedback3;
                    c2 = 2048;
                    obj = new Function0() { // from class: com.vuitton.android.designkit.ui.theme.molecules.d
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            HapticFeedbackType.f9193b.getClass();
                            int i13 = PlatformHapticFeedbackType.f9196a;
                            hapticFeedback4.a(0);
                            PagerState pagerState2 = pagerState;
                            CoroutineScope coroutineScope4 = coroutineScope;
                            if (pagerState2 != null) {
                                BuildersKt.c(coroutineScope4, null, null, new LVTabsKt$LVTabsInternal$2$1$onItemClicked$1$1$1$1(pagerState2, i11, null), 3);
                            }
                            List list5 = list4;
                            String str5 = str4;
                            function1.invoke(Integer.valueOf(list5.indexOf(str5)));
                            ItemUtilsKt.a((RowItemCenterPosition) map.get(str5), i5, scrollState, coroutineScope4);
                            return Unit.f71739a;
                        }
                    };
                    hapticFeedback = hapticFeedback4;
                    str = str4;
                    gapComposerH.q(obj);
                } else {
                    i5 = i9;
                    layoutDirection2 = layoutDirection;
                    z = false;
                    coroutineScope = coroutineScope3;
                    map = map2;
                    str = str4;
                    obj = objX5;
                    c2 = 2048;
                    hapticFeedback = hapticFeedback3;
                    scrollState = scrollStateB;
                }
                final Function0 function2 = (Function0) obj;
                boolean zY3 = gapComposerH.y(list4) | gapComposerH.K(str) | ((i10 & 7168) == c2 ? true : z) | gapComposerH.y(context2) | gapComposerH.d(i11) | gapComposerH.K(function2);
                Object objX6 = gapComposerH.x();
                if (zY3 || objX6 == composer$Companion$Empty$3) {
                    gapComposer2 = gapComposerH;
                    final String str5 = str;
                    i6 = i11;
                    final List list5 = list4;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    final Context context3 = context2;
                    obj2 = new Function1() { // from class: a80
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj4;
                            semanticsPropertyReceiver.getClass();
                            Role.f10289b.getClass();
                            SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10292f);
                            List list6 = list5;
                            String str6 = str5;
                            if (list6.indexOf(str6) == i2) {
                                String string = context3.getString(R.string.alt_selected);
                                string.getClass();
                                SemanticsPropertiesKt.r(semanticsPropertyReceiver, string);
                            }
                            SemanticsPropertiesKt.i(semanticsPropertyReceiver, str6);
                            SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(0, 1, i6, 1));
                            SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new py(function2, 19));
                            return Unit.f71739a;
                        }
                    };
                    context = context3;
                    str2 = str5;
                    list3 = list5;
                    i7 = i2;
                    gapComposer2.q(obj2);
                } else {
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    obj2 = objX6;
                    gapComposer2 = gapComposerH;
                    list3 = list4;
                    str2 = str;
                    i6 = i11;
                    context = context2;
                    i7 = i2;
                }
                c(ModifierExtKt.e(SemanticsModifierKt.b(modifierA, true, (Function1) obj2), new AutomationTags$ScrollableTabBar(i6).f48299a), str2, list3.indexOf(str2) == i7, function2, gapComposer2, 0);
                list4 = list3;
                gapComposerH = gapComposer2;
                hapticFeedback3 = hapticFeedback;
                map2 = map;
                i9 = i5;
                scrollStateB = scrollState;
                coroutineScope3 = coroutineScope;
                str3 = str3;
                layoutDirection4 = layoutDirection2;
                i11 = i12;
                composer$Companion$Empty$3 = composer$Companion$Empty$1;
                context2 = context;
            }
            i4 = i2;
            gapComposer = gapComposerH;
            list2 = list4;
            gapComposer.Z(false);
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            i4 = i2;
            list2 = list4;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final int i13 = i4;
            final List list6 = list2;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: b80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Integer) obj5).intValue();
                    LVTabsKt.b(modifier2, f2, f3, i13, list6, pagerState, function1, (Composer) obj4, RecomposeScopeImplKt.a(i3 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(Modifier modifier, String str, boolean z, Function0 function0, Composer composer, int i2) {
        Modifier modifierJ;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TabsItem");
        }
        GapComposer gapComposerH = composer.h(-752352880);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = ModifierExtKt.b(modifierE, null, null, 7);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            Modifier modifierC = ModifierExtKt.c(ClipKt.a(modifierB, roundedCornerShape), !z, null, null, function0, 30);
            if (z) {
                modifierJ = BorderKt.a(BackgroundKt.b(n00.i(gapComposerH, 2090051852, "TabsItem"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.p, roundedCornerShape);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, 2090434082, false, "TabsItem");
            }
            Modifier modifierO = modifierC.o(modifierJ);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierJ2 = PaddingKt.j(SizeKt.u(modifierO, Call.Parameters.DEFAULT_CAMERA_ZOOM, 200.0f, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, 11.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ2);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            if (z) {
                gapComposerH.L(-848897916);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            } else {
                gapComposerH.L(-848896285);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            }
            gapComposerH.Z(false);
            TextOverflow.f10989a.getClass();
            TextKt.c(str, null, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, (i3 >> 3) & 14, 24960, 110586);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c80(modifierE, str, z, function0, i2, 0);
        }
    }
}
