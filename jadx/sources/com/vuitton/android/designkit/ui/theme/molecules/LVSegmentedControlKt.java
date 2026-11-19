package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.DensityUtilsKt;
import com.vuitton.android.designkit.ui.common.HorizontalSwipeDetectorKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import defpackage.b70;
import defpackage.c10;
import defpackage.c30;
import defpackage.c70;
import defpackage.cj;
import defpackage.d21;
import defpackage.eb;
import defpackage.j70;
import defpackage.ko;
import defpackage.pq0;
import defpackage.qw;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0010$\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0007²\u0006\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00018\nX\u008a\u0084\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00018\nX\u008a\u0084\u0002"}, d2 = {"", "", "layoutWidthMap", "Landroidx/compose/ui/unit/IntSize;", "layoutSize", "indicatorOffset", "indicatorWidth", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSegmentedControlKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f48660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48661b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48662a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48662a = iArr;
        }
    }

    static {
        IntSize.Companion companion = IntSize.f11020b;
        f48660a = 214748364850L;
        f48661b = new StaticProvidableCompositionLocal(new c70(5));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:27:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x0077  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0082  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x009d  */
    /* JADX WARN: Code duplicated, block: B:54:0x009f  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:61:0x00af  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00da  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:74:0x0101  */
    /* JADX WARN: Code duplicated, block: B:77:0x010d  */
    /* JADX WARN: Code duplicated, block: B:79:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, SegmentedControlState segmentedControlState, boolean z, LVColorScheme lVColorScheme, boolean z2, Function0 function0, Composer composer, int i2, int i3) {
        boolean z3;
        int i4;
        int iOrdinal;
        int i5;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        int i10;
        boolean z5;
        LVColorScheme lVColorScheme2;
        boolean z6;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z7;
        LVColorScheme lVColorScheme3;
        int i11;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        SegmentedControlConfiguration segmentedControlConfiguration;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSegmentedControl");
        }
        Modifier modifier2 = modifierE;
        segmentedControlState.getClass();
        GapComposer gapComposerH = composer.h(1028481724);
        int i12 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | (gapComposerH.K(segmentedControlState) ? 32 : 16);
        int i13 = i3 & 4;
        if (i13 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z3 = z;
                i12 |= gapComposerH.b(z3) ? 256 : 128;
            }
            i4 = i3 & 8;
            if (i4 != 0) {
                i6 = i12 | 3072;
            } else {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i6 = i12 | i5;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    z4 = z2;
                    if (gapComposerH.b(z4)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i6 |= i8;
                }
                if (gapComposerH.y(function0)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i10 = i6 | i9;
                if ((74899 & i10) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i10 & 1, z5)) {
                    if (i13 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i4 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    i11 = WhenMappings.f48662a[lVColorScheme3.ordinal()];
                    staticProvidableCompositionLocal = f48661b;
                    if (i11 != 1) {
                        gapComposerH.L(528470659);
                        segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48663a;
                        gapComposerH.Z(false);
                    } else {
                        if (i11 == 2) {
                            throw d21.u(gapComposerH, 528467890, false);
                        }
                        gapComposerH.L(528473154);
                        segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48664b;
                        gapComposerH.Z(false);
                    }
                    boolean z8 = z4;
                    b(modifier2, segmentedControlState, z7, segmentedControlConfiguration, z8, function0, gapComposerH, i10 & 517118);
                    lVColorScheme2 = lVColorScheme3;
                    z3 = z7;
                    z6 = z8;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    z6 = z4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new c10(modifier2, segmentedControlState, z3, lVColorScheme2, z6, function0, i2, i3);
                }
            }
            i6 |= 24576;
            z4 = z2;
            if (gapComposerH.y(function0)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i10 = i6 | i9;
            if ((74899 & i10) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i10 & 1, z5)) {
                if (i13 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i4 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i7 != 0) {
                    z4 = false;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                i11 = WhenMappings.f48662a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48661b;
                if (i11 != 1) {
                    gapComposerH.L(528470659);
                    segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48663a;
                    gapComposerH.Z(false);
                } else {
                    if (i11 == 2) {
                        throw d21.u(gapComposerH, 528467890, false);
                    }
                    gapComposerH.L(528473154);
                    segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48664b;
                    gapComposerH.Z(false);
                }
                boolean z9 = z4;
                b(modifier2, segmentedControlState, z7, segmentedControlConfiguration, z9, function0, gapComposerH, i10 & 517118);
                lVColorScheme2 = lVColorScheme3;
                z3 = z7;
                z6 = z9;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                z6 = z4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier2, segmentedControlState, z3, lVColorScheme2, z6, function0, i2, i3);
            }
        }
        i12 |= KyberEngine.KyberPolyBytes;
        z3 = z;
        i4 = i3 & 8;
        if (i4 != 0) {
            i6 = i12 | 3072;
        } else {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i6 = i12 | i5;
        }
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i2 & 24576) == 0) {
                z4 = z2;
                if (gapComposerH.b(z4)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i6 |= i8;
            }
            if (gapComposerH.y(function0)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i10 = i6 | i9;
            if ((74899 & i10) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i10 & 1, z5)) {
                if (i13 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i4 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i7 != 0) {
                    z4 = false;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                i11 = WhenMappings.f48662a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48661b;
                if (i11 != 1) {
                    gapComposerH.L(528470659);
                    segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48663a;
                    gapComposerH.Z(false);
                } else {
                    if (i11 == 2) {
                        throw d21.u(gapComposerH, 528467890, false);
                    }
                    gapComposerH.L(528473154);
                    segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48664b;
                    gapComposerH.Z(false);
                }
                boolean z10 = z4;
                b(modifier2, segmentedControlState, z7, segmentedControlConfiguration, z10, function0, gapComposerH, i10 & 517118);
                lVColorScheme2 = lVColorScheme3;
                z3 = z7;
                z6 = z10;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                z6 = z4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier2, segmentedControlState, z3, lVColorScheme2, z6, function0, i2, i3);
            }
        }
        i6 |= 24576;
        z4 = z2;
        if (gapComposerH.y(function0)) {
            i9 = 131072;
        } else {
            i9 = 65536;
        }
        i10 = i6 | i9;
        if ((74899 & i10) != 74898) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (gapComposerH.p(i10 & 1, z5)) {
            if (i13 != 0) {
                z7 = true;
            } else {
                z7 = z3;
            }
            if (i4 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i7 != 0) {
                z4 = false;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            i11 = WhenMappings.f48662a[lVColorScheme3.ordinal()];
            staticProvidableCompositionLocal = f48661b;
            if (i11 != 1) {
                gapComposerH.L(528470659);
                segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48663a;
                gapComposerH.Z(false);
            } else {
                if (i11 == 2) {
                    throw d21.u(gapComposerH, 528467890, false);
                }
                gapComposerH.L(528473154);
                segmentedControlConfiguration = ((LVSegmentedControls) gapComposerH.k(staticProvidableCompositionLocal)).f48664b;
                gapComposerH.Z(false);
            }
            boolean z11 = z4;
            b(modifier2, segmentedControlState, z7, segmentedControlConfiguration, z11, function0, gapComposerH, i10 & 517118);
            lVColorScheme2 = lVColorScheme3;
            z3 = z7;
            z6 = z11;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            z6 = z4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c10(modifier2, segmentedControlState, z3, lVColorScheme2, z6, function0, i2, i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x019c  */
    /* JADX WARN: Code duplicated, block: B:103:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:106:0x0200  */
    /* JADX WARN: Code duplicated, block: B:108:0x0207  */
    /* JADX WARN: Code duplicated, block: B:109:0x020b  */
    /* JADX WARN: Code duplicated, block: B:112:0x0243  */
    /* JADX WARN: Code duplicated, block: B:114:0x0255  */
    /* JADX WARN: Code duplicated, block: B:115:0x025a  */
    /* JADX WARN: Code duplicated, block: B:118:0x0273  */
    /* JADX WARN: Code duplicated, block: B:121:0x028a  */
    /* JADX WARN: Code duplicated, block: B:122:0x028f  */
    /* JADX WARN: Code duplicated, block: B:125:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:131:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:133:0x02de  */
    /* JADX WARN: Code duplicated, block: B:134:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:138:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:139:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:142:0x0302  */
    /* JADX WARN: Code duplicated, block: B:143:0x0305  */
    /* JADX WARN: Code duplicated, block: B:147:0x030f  */
    /* JADX WARN: Code duplicated, block: B:151:0x034a  */
    /* JADX WARN: Code duplicated, block: B:154:0x035a  */
    /* JADX WARN: Code duplicated, block: B:155:0x0365  */
    /* JADX WARN: Code duplicated, block: B:157:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:160:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:162:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:163:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:167:0x041f  */
    /* JADX WARN: Code duplicated, block: B:169:0x0427  */
    /* JADX WARN: Code duplicated, block: B:171:0x0433  */
    /* JADX WARN: Code duplicated, block: B:172:0x043f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:173:0x0441  */
    /* JADX WARN: Code duplicated, block: B:174:0x0447  */
    /* JADX WARN: Code duplicated, block: B:180:0x0480  */
    /* JADX WARN: Code duplicated, block: B:183:0x049d  */
    /* JADX WARN: Code duplicated, block: B:189:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:192:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:193:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:196:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:197:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:201:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:204:0x0528  */
    /* JADX WARN: Code duplicated, block: B:206:0x0531  */
    /* JADX WARN: Code duplicated, block: B:207:0x0535  */
    /* JADX WARN: Code duplicated, block: B:210:0x05da  */
    /* JADX WARN: Code duplicated, block: B:212:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:215:0x0604  */
    /* JADX WARN: Code duplicated, block: B:216:0x060a  */
    /* JADX WARN: Code duplicated, block: B:223:0x065a  */
    /* JADX WARN: Code duplicated, block: B:225:0x0660  */
    /* JADX WARN: Code duplicated, block: B:236:0x064c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x0646 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x017e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0183  */
    /* JADX WARN: Code duplicated, block: B:93:0x0188  */
    /* JADX WARN: Code duplicated, block: B:94:0x018b  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier modifier, SegmentedControlState segmentedControlState, boolean z, SegmentedControlConfiguration segmentedControlConfiguration, boolean z2, final Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        Object obj;
        Object obj2;
        Object obj3;
        boolean z3;
        boolean z4;
        boolean z5;
        final int i5;
        Object obj4;
        SegmentedControlConfiguration.ItemConfiguration itemConfiguration;
        int i6;
        int i7;
        MutableState mutableState;
        HapticFeedback hapticFeedback;
        Object obj5;
        Object objX;
        Object obj6;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        List list;
        Integer num;
        Shape shape;
        SegmentedControlConfiguration.ItemConfiguration itemConfiguration2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Function0 function2;
        Iterator it;
        int i8;
        GapComposer gapComposer2;
        Object next;
        int i9;
        String str;
        boolean zA;
        RowScopeInstance rowScopeInstance;
        Modifier modifierB;
        boolean zD;
        MutableState mutableState2;
        Object obj7;
        Object objX2;
        Object obj8;
        boolean z6;
        HapticFeedback hapticFeedback2;
        int i10;
        boolean z7;
        boolean z8;
        boolean z9;
        Object obj9;
        MeasurePolicy measurePolicyD2;
        int i11;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        Function0 function3;
        GapComposer gapComposer3;
        SegmentedControlConfiguration.ItemConfiguration itemConfiguration3;
        TextStyle textStyle;
        SegmentedControlConfiguration.ItemConfiguration itemConfiguration4;
        long j2;
        Float f2;
        float fA;
        int i12;
        int size;
        Integer num2;
        int iIntValue;
        Integer num3;
        int iIntValue2;
        Iterator<Integer> it2;
        int i13;
        final int i14;
        int i15;
        final boolean z10;
        int i16;
        int i17;
        Object obj10;
        final State stateC;
        State stateC2;
        boolean zB;
        Object obj11;
        int iIntValue3;
        Integer num4;
        int iIntValue4;
        Modifier modifierE = modifier;
        final SegmentedControlState segmentedControlState2 = segmentedControlState;
        SegmentedControlConfiguration segmentedControlConfiguration2 = segmentedControlConfiguration;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSegmentedControlInternal");
        }
        GapComposer gapComposerH = composer.h(-1889116980);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(segmentedControlState2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(segmentedControlConfiguration2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback3 = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            int i18 = DensityUtilsKt.a(gapComposerH) ? 3 : 1;
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Object obj12 = objX3;
            if (objX3 == composer$Companion$Empty$1) {
                Object objG = SnapshotStateKt.g(MapsKt.c());
                gapComposerH.q(objG);
                obj12 = objG;
            }
            MutableState mutableState3 = (MutableState) obj12;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                i4 = 32;
                Object objG2 = SnapshotStateKt.g(new IntSize(0L));
                gapComposerH.q(objG2);
                obj = objG2;
            } else {
                i4 = 32;
                obj = objX4;
            }
            MutableState mutableState4 = (MutableState) obj;
            Shape shape2 = segmentedControlConfiguration2.f48693c;
            SegmentedControlConfiguration.ItemConfiguration itemConfiguration5 = segmentedControlConfiguration2.f48691a;
            SegmentedControlConfiguration.ItemConfiguration itemConfiguration6 = segmentedControlConfiguration2.f48692b;
            Modifier modifierA = ClipKt.a(modifierE, shape2);
            long j3 = itemConfiguration6.f48695a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(modifierA, j3, rectangleShapeKt$RectangleShape$1), segmentedControlConfiguration2.f48694e);
            boolean z11 = z && ((Float) ((SnapshotMutableStateImpl) segmentedControlState2.f48700c).getF10755b()) == null;
            int i19 = (int) (((IntSize) mutableState4.getF10755b()).f11021a >> i4);
            long j4 = f48660a;
            int i20 = i19 + ((int) (j4 >> i4));
            int i21 = i3;
            int i22 = ((int) (((IntSize) mutableState4.getF10755b()).f11021a & BodyPartID.bodyIdMax)) + ((int) (j4 & BodyPartID.bodyIdMax));
            boolean z12 = z11;
            long j5 = (((long) i22) & BodyPartID.bodyIdMax) | (((long) i20) << i4);
            int i23 = i21 & 112;
            boolean z13 = i23 == i4;
            int i24 = i21 & ImageMetadata.JPEG_GPS_COORDINATES;
            boolean z14 = (i24 == 131072) | z13;
            Object objX5 = gapComposerH.x();
            if (z14) {
                obj2 = composer$Companion$Empty$1;
            } else {
                obj2 = composer$Companion$Empty$1;
                if (objX5 != obj2) {
                    obj3 = objX5;
                }
                Function0 function4 = (Function0) obj3;
                if (i23 == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i24 == 131072) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                z5 = z3 | z4;
                Object objX6 = gapComposerH.x();
                if (!z5 || objX6 == obj2) {
                    i5 = 1;
                    Object obj13 = new Function0() { // from class: k70
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i25 = i5;
                            Function0 function5 = function0;
                            SegmentedControlState segmentedControlState3 = segmentedControlState2;
                            switch (i25) {
                                case 0:
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                                    segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() + 1);
                                    if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                        function5.mo47invoke();
                                    }
                                    break;
                                default:
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSegmentedControlKt.f48661b;
                                    segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() - 1);
                                    if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                        function5.mo47invoke();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(obj13);
                    obj4 = obj13;
                } else {
                    i5 = 1;
                    obj4 = objX6;
                }
                itemConfiguration = itemConfiguration6;
                i6 = i5;
                i7 = i23;
                mutableState = mutableState3;
                hapticFeedback = hapticFeedback3;
                obj5 = obj2;
                Modifier modifierA2 = HorizontalSwipeDetectorKt.a(modifierH, z12, j5, function4, (Function0) obj4, gapComposerH);
                objX = gapComposerH.x();
                obj6 = objX;
                if (objX == obj5) {
                    Object c30Var = new c30(6, mutableState4);
                    gapComposerH.q(c30Var);
                    obj6 = c30Var;
                }
                Modifier modifierA3 = OnRemeasuredModifierKt.a(modifierA2, (Function1) obj6);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA3);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
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
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Map map = (Map) mutableState.getF10755b();
                int iA = segmentedControlState2.a();
                list = segmentedControlState2.f48698a;
                num = (Integer) map.get(Integer.valueOf(iA));
                if (num != null) {
                    gapComposerH.L(2126649674);
                    f2 = (Float) ((SnapshotMutableStateImpl) segmentedControlState2.f48700c).getF10755b();
                    if (f2 != null) {
                        fA = f2.floatValue();
                    } else {
                        fA = segmentedControlState2.a();
                    }
                    int iD = RangesKt.d((int) fA, 0, CollectionsKt.F(list));
                    i12 = iD + 1;
                    size = list.size() - 1;
                    if (i12 > size) {
                        i12 = size;
                    }
                    float f3 = fA - iD;
                    int i25 = i12;
                    num2 = (Integer) ((Map) mutableState.getF10755b()).get(Integer.valueOf(iD));
                    if (num2 != null) {
                        iIntValue = num2.intValue();
                    } else {
                        iIntValue = num.intValue();
                    }
                    num3 = (Integer) ((Map) mutableState.getF10755b()).get(Integer.valueOf(i25));
                    if (num3 != null) {
                        iIntValue2 = num3.intValue();
                    } else {
                        iIntValue2 = iIntValue;
                    }
                    it2 = RangesKt.j(0, iD).iterator();
                    i13 = 0;
                    while (((IntProgressionIterator) it2).d) {
                        int i26 = iIntValue2;
                        num4 = (Integer) ((Map) mutableState.getF10755b()).get(Integer.valueOf(((IntIterator) it2).nextInt()));
                        if (num4 != null) {
                            iIntValue4 = num4.intValue();
                        } else {
                            iIntValue4 = 0;
                        }
                        i13 += iIntValue4;
                        iIntValue2 = i26;
                    }
                    i14 = i13 + ((int) (iIntValue * f3));
                    i15 = iIntValue + ((int) (f3 * (iIntValue2 - iIntValue)));
                    if (f2 == null) {
                        z10 = i6;
                    } else {
                        z10 = 0;
                    }
                    boolean zB2 = gapComposerH.b(z10);
                    if (i24 == 131072) {
                        i16 = i6;
                    } else {
                        i16 = 0;
                    }
                    i17 = (zB2 ? 1 : 0) | i16;
                    Object objX7 = gapComposerH.x();
                    obj10 = objX7;
                    if (i17 == 0 || objX7 == obj5) {
                        Object b70Var = new b70(z10, function0, i6);
                        gapComposerH.q(b70Var);
                        obj10 = b70Var;
                    }
                    stateC = AnimateAsStateKt.c(i14, "indicator offset", (Function1) obj10, gapComposerH, 2);
                    stateC2 = AnimateAsStateKt.c(i15, "width", null, gapComposerH, 10);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVSegmentedControlInternal");
                    zB = gapComposerH.b(z10) | gapComposerH.K(stateC) | gapComposerH.d(i14);
                    Object objX8 = gapComposerH.x();
                    obj11 = objX8;
                    if (zB || objX8 == obj5) {
                        Object obj14 = new Function1() { // from class: l70
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj15) {
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                                ((Density) obj15).getClass();
                                return new IntOffset(((long) (z10 ? ((Number) stateC.getF10755b()).intValue() : i14)) << 32);
                            }
                        };
                        gapComposerH.q(obj14);
                        obj11 = obj14;
                    }
                    Modifier modifierA4 = OffsetKt.a(dTFunctionNameModifier, (Function1) obj11);
                    if (z10 != 0) {
                        iIntValue3 = ((Number) stateC2.getF10755b()).intValue();
                    } else {
                        iIntValue3 = i15;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    CompositionLocal compositionLocal = CompositionLocalsKt.f10031h;
                    Modifier modifierF = SizeKt.f(SizeKt.s(modifierA4, ((Density) gapComposerH.k(compositionLocal)).k1(iIntValue3)), ((Density) gapComposerH.k(compositionLocal)).k1((int) (((IntSize) mutableState4.getF10755b()).f11021a & BodyPartID.bodyIdMax)));
                    shape = shape2;
                    itemConfiguration2 = itemConfiguration5;
                    BoxKt.a(BackgroundKt.b(ClipKt.a(modifierF, shape), itemConfiguration2.f48695a, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    shape = shape2;
                    itemConfiguration2 = itemConfiguration5;
                    gapComposerH.L(2128266076);
                    gapComposerH.Z(false);
                }
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical = Alignment.Companion.l;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVSegmentedControlInternal");
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                ComposeUiNode.b0.getClass();
                function2 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function2);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                gapComposerH.L(-41718189);
                it = list.iterator();
                i8 = 0;
                gapComposer2 = gapComposerH;
                while (it.hasNext()) {
                    next = it.next();
                    i9 = i8 + 1;
                    if (i8 >= 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    str = (String) next;
                    zA = DensityUtilsKt.a(gapComposer2);
                    rowScopeInstance = RowScopeInstance.f5040a;
                    if (zA) {
                        modifierB = rowScopeInstance.a(new DTFunctionNameModifier("LVSegmentedControlInternal"), 1.0f, !z2);
                    } else if (z2) {
                        modifierB = new DTFunctionNameModifier("LVSegmentedControlInternal");
                    } else {
                        modifierB = cj.b("LVSegmentedControlInternal", rowScopeInstance, 1.0f, true);
                    }
                    Modifier modifierE2 = ModifierExtKt.e(ClipKt.a(modifierB, shape), "segmentedControl_tab" + i8 + "_button");
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVSegmentedControlInternal");
                    zD = gapComposer2.d(i8);
                    Object objX9 = gapComposer2.x();
                    if (!zD || objX9 == obj5) {
                        mutableState2 = mutableState;
                        Object koVar = new ko(i8, mutableState2, 4);
                        gapComposer2.q(koVar);
                        obj7 = koVar;
                    } else {
                        mutableState2 = mutableState;
                        obj7 = objX9;
                    }
                    Modifier modifierO = modifierE2.o(OnRemeasuredModifierKt.a(dTFunctionNameModifier3, (Function1) obj7));
                    objX2 = gapComposer2.x();
                    obj8 = objX2;
                    if (objX2 == obj5) {
                        Object objA = InteractionSourceKt.a();
                        gapComposer2.q(objA);
                        obj8 = objA;
                    }
                    MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) obj8;
                    if (segmentedControlState2.a() == i8 && z) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    hapticFeedback2 = hapticFeedback;
                    boolean zY = gapComposer2.y(hapticFeedback2);
                    i10 = i7;
                    if (i10 == 32) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    boolean zD2 = zY | z7 | gapComposer2.d(i8);
                    if (i24 == 131072) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zD2 | z8;
                    Object objX10 = gapComposer2.x();
                    obj9 = objX10;
                    if (z9 || objX10 == obj5) {
                        Object qwVar = new qw(hapticFeedback2, segmentedControlState2, i8, function0);
                        gapComposer2.q(qwVar);
                        obj9 = qwVar;
                    }
                    Modifier modifierH2 = PaddingKt.h(ClickableKt.b(modifierO, mutableInteractionSource, null, z6, null, null, (Function0) obj9, 24), segmentedControlConfiguration2.d);
                    Alignment.f8582a.getClass();
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    i11 = i24;
                    iHashCode3 = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU3 = gapComposer2.U();
                    modifierC3 = ComposedModifierKt.c(gapComposer2, modifierH2);
                    ComposeUiNode.b0.getClass();
                    function3 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function3);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer2, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer2, modifierC3, ComposeUiNode.Companion.d);
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVSegmentedControlInternal");
                    BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                    Modifier modifierB2 = ModifierExtKt.b(boxScopeInstance.g(dTFunctionNameModifier4, biasAlignment), null, null, 7);
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer2).o;
                    Color.f8866b.getClass();
                    long j6 = Color.f8870h;
                    TextOverflow.f10989a.getClass();
                    int i27 = TextOverflow.f10991c;
                    TextAlign.f10959b.getClass();
                    MutableState mutableState5 = mutableState2;
                    i7 = i10;
                    gapComposer3 = gapComposer2;
                    itemConfiguration3 = itemConfiguration2;
                    TextKt.c(str, modifierB2, j6, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i27, false, i18, 0, null, textStyle2, gapComposer3, KyberEngine.KyberPolyBytes, KyberEngine.KyberPolyBytes, 109560);
                    Modifier modifierG = boxScopeInstance.g(new DTFunctionNameModifier("LVSegmentedControlInternal"), biasAlignment);
                    if (segmentedControlState.a() == i8) {
                        gapComposer3.L(187388616);
                        textStyle = LVAppDesignKitTheme.n(gapComposer3).o;
                        gapComposer3.Z(false);
                    } else {
                        gapComposer3.L(187493799);
                        textStyle = LVAppDesignKitTheme.n(gapComposer3).m;
                        gapComposer3.Z(false);
                    }
                    TextStyle textStyle3 = textStyle;
                    if (segmentedControlState.a() == i8) {
                        j2 = itemConfiguration3.f48696b;
                        itemConfiguration4 = itemConfiguration;
                    } else {
                        itemConfiguration4 = itemConfiguration;
                        j2 = itemConfiguration4.f48696b;
                    }
                    TextKt.c(str, modifierG, j2, 0L, null, 0L, null, null, 0L, i27, false, i18, 0, null, textStyle3, gapComposer3, 0, KyberEngine.KyberPolyBytes, 110584);
                    GapComposer gapComposer4 = gapComposer3;
                    gapComposer4.Z(true);
                    it = it;
                    mutableState = mutableState5;
                    segmentedControlConfiguration2 = segmentedControlConfiguration;
                    itemConfiguration = itemConfiguration4;
                    itemConfiguration2 = itemConfiguration3;
                    i24 = i11;
                    i8 = i9;
                    hapticFeedback = hapticFeedback2;
                    segmentedControlState2 = segmentedControlState;
                    gapComposer2 = gapComposer4;
                }
                pq0.x(gapComposer2, false, true, true);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                gapComposer = gapComposer2;
            }
            final int i28 = 0;
            Object obj15 = new Function0() { // from class: k70
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i29 = i28;
                    Function0 function5 = function0;
                    SegmentedControlState segmentedControlState3 = segmentedControlState2;
                    switch (i29) {
                        case 0:
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                            segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() + 1);
                            if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                function5.mo47invoke();
                            }
                            break;
                        default:
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSegmentedControlKt.f48661b;
                            segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() - 1);
                            if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                function5.mo47invoke();
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            gapComposerH.q(obj15);
            obj3 = obj15;
            Function0 function5 = (Function0) obj3;
            if (i23 == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i24 == 131072) {
                z4 = true;
            } else {
                z4 = false;
            }
            z5 = z3 | z4;
            Object objX11 = gapComposerH.x();
            if (z5) {
                i5 = 1;
                Object obj16 = new Function0() { // from class: k70
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i29 = i5;
                        Function0 function6 = function0;
                        SegmentedControlState segmentedControlState3 = segmentedControlState2;
                        switch (i29) {
                            case 0:
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                                segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() + 1);
                                if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                    function6.mo47invoke();
                                }
                                break;
                            default:
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSegmentedControlKt.f48661b;
                                segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() - 1);
                                if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                    function6.mo47invoke();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(obj16);
                obj4 = obj16;
            } else {
                i5 = 1;
                Object obj17 = new Function0() { // from class: k70
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i29 = i5;
                        Function0 function6 = function0;
                        SegmentedControlState segmentedControlState3 = segmentedControlState2;
                        switch (i29) {
                            case 0:
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                                segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() + 1);
                                if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                    function6.mo47invoke();
                                }
                                break;
                            default:
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSegmentedControlKt.f48661b;
                                segmentedControlState3.b(((SnapshotMutableIntStateImpl) segmentedControlState3.f48699b).f() - 1);
                                if (((Float) ((SnapshotMutableStateImpl) segmentedControlState3.f48700c).getF10755b()) != null) {
                                    function6.mo47invoke();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(obj17);
                obj4 = obj17;
            }
            itemConfiguration = itemConfiguration6;
            i6 = i5;
            i7 = i23;
            mutableState = mutableState3;
            hapticFeedback = hapticFeedback3;
            obj5 = obj2;
            Modifier modifierA5 = HorizontalSwipeDetectorKt.a(modifierH, z12, j5, function5, (Function0) obj4, gapComposerH);
            objX = gapComposerH.x();
            obj6 = objX;
            if (objX == obj5) {
                Object c30Var2 = new c30(6, mutableState4);
                gapComposerH.q(c30Var2);
                obj6 = c30Var2;
            }
            Modifier modifierA6 = OnRemeasuredModifierKt.a(modifierA5, (Function1) obj6);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA6);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Map map2 = (Map) mutableState.getF10755b();
            int iA2 = segmentedControlState2.a();
            list = segmentedControlState2.f48698a;
            num = (Integer) map2.get(Integer.valueOf(iA2));
            if (num != null) {
                gapComposerH.L(2126649674);
                f2 = (Float) ((SnapshotMutableStateImpl) segmentedControlState2.f48700c).getF10755b();
                if (f2 != null) {
                    fA = f2.floatValue();
                } else {
                    fA = segmentedControlState2.a();
                }
                int iD2 = RangesKt.d((int) fA, 0, CollectionsKt.F(list));
                i12 = iD2 + 1;
                size = list.size() - 1;
                if (i12 > size) {
                    i12 = size;
                }
                float f4 = fA - iD2;
                int i29 = i12;
                num2 = (Integer) ((Map) mutableState.getF10755b()).get(Integer.valueOf(iD2));
                if (num2 != null) {
                    iIntValue = num2.intValue();
                } else {
                    iIntValue = num.intValue();
                }
                num3 = (Integer) ((Map) mutableState.getF10755b()).get(Integer.valueOf(i29));
                if (num3 != null) {
                    iIntValue2 = num3.intValue();
                } else {
                    iIntValue2 = iIntValue;
                }
                it2 = RangesKt.j(0, iD2).iterator();
                i13 = 0;
                while (((IntProgressionIterator) it2).d) {
                    int i210 = iIntValue2;
                    num4 = (Integer) ((Map) mutableState.getF10755b()).get(Integer.valueOf(((IntIterator) it2).nextInt()));
                    if (num4 != null) {
                        iIntValue4 = num4.intValue();
                    } else {
                        iIntValue4 = 0;
                    }
                    i13 += iIntValue4;
                    iIntValue2 = i210;
                }
                i14 = i13 + ((int) (iIntValue * f4));
                i15 = iIntValue + ((int) (f4 * (iIntValue2 - iIntValue)));
                if (f2 == null) {
                    z10 = i6;
                } else {
                    z10 = 0;
                }
                boolean zB3 = gapComposerH.b(z10);
                if (i24 == 131072) {
                    i16 = i6;
                } else {
                    i16 = 0;
                }
                i17 = (zB3 ? 1 : 0) | i16;
                Object objX12 = gapComposerH.x();
                obj10 = objX12;
                if (i17 == 0) {
                    Object b70Var2 = new b70(z10, function0, i6);
                    gapComposerH.q(b70Var2);
                    obj10 = b70Var2;
                } else {
                    Object b70Var3 = new b70(z10, function0, i6);
                    gapComposerH.q(b70Var3);
                    obj10 = b70Var3;
                }
                stateC = AnimateAsStateKt.c(i14, "indicator offset", (Function1) obj10, gapComposerH, 2);
                stateC2 = AnimateAsStateKt.c(i15, "width", null, gapComposerH, 10);
                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVSegmentedControlInternal");
                zB = gapComposerH.b(z10) | gapComposerH.K(stateC) | gapComposerH.d(i14);
                Object objX13 = gapComposerH.x();
                obj11 = objX13;
                if (zB) {
                    Object obj18 = new Function1() { // from class: l70
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj19) {
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                            ((Density) obj19).getClass();
                            return new IntOffset(((long) (z10 ? ((Number) stateC.getF10755b()).intValue() : i14)) << 32);
                        }
                    };
                    gapComposerH.q(obj18);
                    obj11 = obj18;
                } else {
                    Object obj19 = new Function1() { // from class: l70
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj110) {
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                            ((Density) obj110).getClass();
                            return new IntOffset(((long) (z10 ? ((Number) stateC.getF10755b()).intValue() : i14)) << 32);
                        }
                    };
                    gapComposerH.q(obj19);
                    obj11 = obj19;
                }
                Modifier modifierA7 = OffsetKt.a(dTFunctionNameModifier5, (Function1) obj11);
                if (z10 != 0) {
                    iIntValue3 = ((Number) stateC2.getF10755b()).intValue();
                } else {
                    iIntValue3 = i15;
                }
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                CompositionLocal compositionLocal2 = CompositionLocalsKt.f10031h;
                Modifier modifierF2 = SizeKt.f(SizeKt.s(modifierA7, ((Density) gapComposerH.k(compositionLocal2)).k1(iIntValue3)), ((Density) gapComposerH.k(compositionLocal2)).k1((int) (((IntSize) mutableState4.getF10755b()).f11021a & BodyPartID.bodyIdMax)));
                shape = shape2;
                itemConfiguration2 = itemConfiguration5;
                BoxKt.a(BackgroundKt.b(ClipKt.a(modifierF2, shape), itemConfiguration2.f48695a, rectangleShapeKt$RectangleShape$1), gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                shape = shape2;
                itemConfiguration2 = itemConfiguration5;
                gapComposerH.L(2128266076);
                gapComposerH.Z(false);
            }
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("LVSegmentedControlInternal");
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier6);
            ComposeUiNode.b0.getClass();
            function2 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            gapComposerH.L(-41718189);
            it = list.iterator();
            i8 = 0;
            gapComposer2 = gapComposerH;
            while (it.hasNext()) {
                next = it.next();
                i9 = i8 + 1;
                if (i8 >= 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                str = (String) next;
                zA = DensityUtilsKt.a(gapComposer2);
                rowScopeInstance = RowScopeInstance.f5040a;
                if (zA) {
                    modifierB = rowScopeInstance.a(new DTFunctionNameModifier("LVSegmentedControlInternal"), 1.0f, !z2);
                } else if (z2) {
                    modifierB = new DTFunctionNameModifier("LVSegmentedControlInternal");
                } else {
                    modifierB = cj.b("LVSegmentedControlInternal", rowScopeInstance, 1.0f, true);
                }
                Modifier modifierE3 = ModifierExtKt.e(ClipKt.a(modifierB, shape), "segmentedControl_tab" + i8 + "_button");
                DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("LVSegmentedControlInternal");
                zD = gapComposer2.d(i8);
                Object objX14 = gapComposer2.x();
                if (zD) {
                    mutableState2 = mutableState;
                    Object koVar2 = new ko(i8, mutableState2, 4);
                    gapComposer2.q(koVar2);
                    obj7 = koVar2;
                } else {
                    mutableState2 = mutableState;
                    Object koVar3 = new ko(i8, mutableState2, 4);
                    gapComposer2.q(koVar3);
                    obj7 = koVar3;
                }
                Modifier modifierO2 = modifierE3.o(OnRemeasuredModifierKt.a(dTFunctionNameModifier7, (Function1) obj7));
                objX2 = gapComposer2.x();
                obj8 = objX2;
                if (objX2 == obj5) {
                    Object objA2 = InteractionSourceKt.a();
                    gapComposer2.q(objA2);
                    obj8 = objA2;
                }
                MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) obj8;
                if (segmentedControlState2.a() == i8) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                hapticFeedback2 = hapticFeedback;
                boolean zY2 = gapComposer2.y(hapticFeedback2);
                i10 = i7;
                if (i10 == 32) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                boolean zD3 = zY2 | z7 | gapComposer2.d(i8);
                if (i24 == 131072) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = zD3 | z8;
                Object objX15 = gapComposer2.x();
                obj9 = objX15;
                if (z9) {
                    Object qwVar2 = new qw(hapticFeedback2, segmentedControlState2, i8, function0);
                    gapComposer2.q(qwVar2);
                    obj9 = qwVar2;
                } else {
                    Object qwVar3 = new qw(hapticFeedback2, segmentedControlState2, i8, function0);
                    gapComposer2.q(qwVar3);
                    obj9 = qwVar3;
                }
                Modifier modifierH3 = PaddingKt.h(ClickableKt.b(modifierO2, mutableInteractionSource2, null, z6, null, null, (Function0) obj9, 24), segmentedControlConfiguration2.d);
                Alignment.f8582a.getClass();
                measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                i11 = i24;
                iHashCode3 = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU3 = gapComposer2.U();
                modifierC3 = ComposedModifierKt.c(gapComposer2, modifierH3);
                ComposeUiNode.b0.getClass();
                function3 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function3);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer2, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer2, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer2, modifierC3, ComposeUiNode.Companion.d);
                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("LVSegmentedControlInternal");
                BiasAlignment biasAlignment2 = Alignment.Companion.f8587f;
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
                Modifier modifierB3 = ModifierExtKt.b(boxScopeInstance2.g(dTFunctionNameModifier8, biasAlignment2), null, null, 7);
                TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposer2).o;
                Color.f8866b.getClass();
                long j7 = Color.f8870h;
                TextOverflow.f10989a.getClass();
                int i211 = TextOverflow.f10991c;
                TextAlign.f10959b.getClass();
                MutableState mutableState6 = mutableState2;
                i7 = i10;
                gapComposer3 = gapComposer2;
                itemConfiguration3 = itemConfiguration2;
                TextKt.c(str, modifierB3, j7, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i211, false, i18, 0, null, textStyle4, gapComposer3, KyberEngine.KyberPolyBytes, KyberEngine.KyberPolyBytes, 109560);
                Modifier modifierG2 = boxScopeInstance2.g(new DTFunctionNameModifier("LVSegmentedControlInternal"), biasAlignment2);
                if (segmentedControlState.a() == i8) {
                    gapComposer3.L(187388616);
                    textStyle = LVAppDesignKitTheme.n(gapComposer3).o;
                    gapComposer3.Z(false);
                } else {
                    gapComposer3.L(187493799);
                    textStyle = LVAppDesignKitTheme.n(gapComposer3).m;
                    gapComposer3.Z(false);
                }
                TextStyle textStyle5 = textStyle;
                if (segmentedControlState.a() == i8) {
                    j2 = itemConfiguration3.f48696b;
                    itemConfiguration4 = itemConfiguration;
                } else {
                    itemConfiguration4 = itemConfiguration;
                    j2 = itemConfiguration4.f48696b;
                }
                TextKt.c(str, modifierG2, j2, 0L, null, 0L, null, null, 0L, i211, false, i18, 0, null, textStyle5, gapComposer3, 0, KyberEngine.KyberPolyBytes, 110584);
                GapComposer gapComposer5 = gapComposer3;
                gapComposer5.Z(true);
                it = it;
                mutableState = mutableState6;
                segmentedControlConfiguration2 = segmentedControlConfiguration;
                itemConfiguration = itemConfiguration4;
                itemConfiguration2 = itemConfiguration3;
                i24 = i11;
                i8 = i9;
                hapticFeedback = hapticFeedback2;
                segmentedControlState2 = segmentedControlState;
                gapComposer2 = gapComposer5;
            }
            pq0.x(gapComposer2, false, true, true);
            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new eb(modifierE, segmentedControlState, z, segmentedControlConfiguration, z2, function0, i2, 1);
        }
    }

    public static final SegmentedControlState c(int i2, Composer composer, List list) {
        list.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = {list, null};
        SegmentedControlState.d.getClass();
        SegmentedControlState$Companion$Saver$1 segmentedControlState$Companion$Saver$1 = SegmentedControlState.f48697e;
        boolean zY = composer.y(list) | composer.d(i2);
        Object objX = composer.x();
        if (zY || objX == Composer.Companion.f7939a) {
            objX = new j70(list, i2, 0);
            composer.q(objX);
        }
        return (SegmentedControlState) RememberSaveableKt.b(objArr, segmentedControlState$Companion$Saver$1, (Function0) objX, composer, 0);
    }
}
