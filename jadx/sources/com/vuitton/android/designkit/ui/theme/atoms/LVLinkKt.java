package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationLink;
import defpackage.c10;
import defpackage.d21;
import defpackage.gv;
import defpackage.k40;
import defpackage.n00;
import defpackage.py;
import defpackage.x20;
import defpackage.xd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/graphics/Color;", "color", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVLinkKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48485a = new StaticProvidableCompositionLocal(new k40(19));

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48486a;

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
            f48486a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0141  */
    /* JADX WARN: Code duplicated, block: B:103:0x0150  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:44:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x0088  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x00da  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:88:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:95:0x010e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0117  */
    public static final void a(Modifier modifier, String str, boolean z, LVColorScheme lVColorScheme, boolean z2, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        int i5;
        int iOrdinal;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        Function0 function1;
        int i10;
        Modifier modifier2;
        boolean z5;
        LVColorScheme lVColorScheme2;
        boolean z6;
        Modifier modifier3;
        boolean z7;
        Function0 function2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        boolean z8;
        LVColorScheme lVColorScheme3;
        int i11;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        ConfigurationLink configurationLink;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVLinkPrimary");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(1347350976);
        int i12 = i3 & 1;
        if (i12 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i13 = i3 & 4;
        if (i13 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z3 = z;
                i4 |= gapComposerH.b(z3) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
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
                    i4 |= i8;
                }
                i9 = i3 & 32;
                if (i9 != 0) {
                    if ((196608 & i2) == 0) {
                        function1 = function0;
                        if (gapComposerH.y(function1)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i4 |= i10;
                    }
                    modifier2 = modifierE;
                    if ((74899 & i4) != 74898) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (gapComposerH.p(i4 & 1, z5)) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            z8 = true;
                        } else {
                            z8 = z3;
                        }
                        if (i5 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        if (i9 != 0) {
                            function1 = null;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                        staticProvidableCompositionLocal = f48485a;
                        if (i11 != 1) {
                            gapComposerH.L(2019143047);
                            configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                            gapComposerH.Z(false);
                        } else {
                            if (i11 == 2) {
                                throw d21.u(gapComposerH, 2019140645, false);
                            }
                            gapComposerH.L(2019145165);
                            configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                            gapComposerH.Z(false);
                        }
                        c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                        lVColorScheme2 = lVColorScheme3;
                        modifier3 = dTFunctionNameModifier;
                        z6 = z8;
                    } else {
                        gapComposerH.D();
                        lVColorScheme2 = lVColorScheme;
                        z6 = z3;
                        modifier3 = modifier2;
                    }
                    z7 = z4;
                    function2 = function1;
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                function1 = function0;
                modifier2 = modifierE;
                if ((74899 & i4) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i4 & 1, z5)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i5 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    if (i9 != 0) {
                        function1 = null;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                    staticProvidableCompositionLocal = f48485a;
                    if (i11 != 1) {
                        gapComposerH.L(2019143047);
                        configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                        gapComposerH.Z(false);
                    } else {
                        if (i11 == 2) {
                            throw d21.u(gapComposerH, 2019140645, false);
                        }
                        gapComposerH.L(2019145165);
                        configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                        gapComposerH.Z(false);
                    }
                    c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                    lVColorScheme2 = lVColorScheme3;
                    modifier3 = dTFunctionNameModifier;
                    z6 = z8;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    z6 = z3;
                    modifier3 = modifier2;
                }
                z7 = z4;
                function2 = function1;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
                }
            }
            i4 |= 24576;
            z4 = z2;
            i9 = i3 & 32;
            if (i9 != 0) {
                if ((196608 & i2) == 0) {
                    function1 = function0;
                    if (gapComposerH.y(function1)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((74899 & i4) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i4 & 1, z5)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i5 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    if (i9 != 0) {
                        function1 = null;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                    staticProvidableCompositionLocal = f48485a;
                    if (i11 != 1) {
                        gapComposerH.L(2019143047);
                        configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                        gapComposerH.Z(false);
                    } else {
                        if (i11 == 2) {
                            throw d21.u(gapComposerH, 2019140645, false);
                        }
                        gapComposerH.L(2019145165);
                        configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                        gapComposerH.Z(false);
                    }
                    c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                    lVColorScheme2 = lVColorScheme3;
                    modifier3 = dTFunctionNameModifier;
                    z6 = z8;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    z6 = z3;
                    modifier3 = modifier2;
                }
                z7 = z4;
                function2 = function1;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            function1 = function0;
            modifier2 = modifierE;
            if ((74899 & i4) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i4 & 1, z5)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i5 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i7 != 0) {
                    z4 = false;
                }
                if (i9 != 0) {
                    function1 = null;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48485a;
                if (i11 != 1) {
                    gapComposerH.L(2019143047);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                    gapComposerH.Z(false);
                } else {
                    if (i11 == 2) {
                        throw d21.u(gapComposerH, 2019140645, false);
                    }
                    gapComposerH.L(2019145165);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                    gapComposerH.Z(false);
                }
                c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                lVColorScheme2 = lVColorScheme3;
                modifier3 = dTFunctionNameModifier;
                z6 = z8;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                z6 = z3;
                modifier3 = modifier2;
            }
            z7 = z4;
            function2 = function1;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z3 = z;
        i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i4 |= i6;
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
                i4 |= i8;
            }
            i9 = i3 & 32;
            if (i9 != 0) {
                if ((196608 & i2) == 0) {
                    function1 = function0;
                    if (gapComposerH.y(function1)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                modifier2 = modifierE;
                if ((74899 & i4) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i4 & 1, z5)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i5 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    if (i9 != 0) {
                        function1 = null;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                    staticProvidableCompositionLocal = f48485a;
                    if (i11 != 1) {
                        gapComposerH.L(2019143047);
                        configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                        gapComposerH.Z(false);
                    } else {
                        if (i11 == 2) {
                            throw d21.u(gapComposerH, 2019140645, false);
                        }
                        gapComposerH.L(2019145165);
                        configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                        gapComposerH.Z(false);
                    }
                    c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                    lVColorScheme2 = lVColorScheme3;
                    modifier3 = dTFunctionNameModifier;
                    z6 = z8;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    z6 = z3;
                    modifier3 = modifier2;
                }
                z7 = z4;
                function2 = function1;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            function1 = function0;
            modifier2 = modifierE;
            if ((74899 & i4) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i4 & 1, z5)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i5 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i7 != 0) {
                    z4 = false;
                }
                if (i9 != 0) {
                    function1 = null;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48485a;
                if (i11 != 1) {
                    gapComposerH.L(2019143047);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                    gapComposerH.Z(false);
                } else {
                    if (i11 == 2) {
                        throw d21.u(gapComposerH, 2019140645, false);
                    }
                    gapComposerH.L(2019145165);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                    gapComposerH.Z(false);
                }
                c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                lVColorScheme2 = lVColorScheme3;
                modifier3 = dTFunctionNameModifier;
                z6 = z8;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                z6 = z3;
                modifier3 = modifier2;
            }
            z7 = z4;
            function2 = function1;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
            }
        }
        i4 |= 24576;
        z4 = z2;
        i9 = i3 & 32;
        if (i9 != 0) {
            if ((196608 & i2) == 0) {
                function1 = function0;
                if (gapComposerH.y(function1)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i4 |= i10;
            }
            modifier2 = modifierE;
            if ((74899 & i4) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i4 & 1, z5)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i5 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i7 != 0) {
                    z4 = false;
                }
                if (i9 != 0) {
                    function1 = null;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48485a;
                if (i11 != 1) {
                    gapComposerH.L(2019143047);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                    gapComposerH.Z(false);
                } else {
                    if (i11 == 2) {
                        throw d21.u(gapComposerH, 2019140645, false);
                    }
                    gapComposerH.L(2019145165);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                    gapComposerH.Z(false);
                }
                c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
                lVColorScheme2 = lVColorScheme3;
                modifier3 = dTFunctionNameModifier;
                z6 = z8;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                z6 = z3;
                modifier3 = modifier2;
            }
            z7 = z4;
            function2 = function1;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function1 = function0;
        modifier2 = modifierE;
        if ((74899 & i4) != 74898) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (gapComposerH.p(i4 & 1, z5)) {
            if (i12 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVLinkPrimary");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i13 != 0) {
                z8 = true;
            } else {
                z8 = z3;
            }
            if (i5 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i7 != 0) {
                z4 = false;
            }
            if (i9 != 0) {
                function1 = null;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            i11 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
            staticProvidableCompositionLocal = f48485a;
            if (i11 != 1) {
                gapComposerH.L(2019143047);
                configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48487a;
                gapComposerH.Z(false);
            } else {
                if (i11 == 2) {
                    throw d21.u(gapComposerH, 2019140645, false);
                }
                gapComposerH.L(2019145165);
                configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48488b;
                gapComposerH.Z(false);
            }
            c(dTFunctionNameModifier, str, z8, z4, configurationLink, function1, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168) | (458752 & i4), 0);
            lVColorScheme2 = lVColorScheme3;
            modifier3 = dTFunctionNameModifier;
            z6 = z8;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            z6 = z3;
            modifier3 = modifier2;
        }
        z7 = z4;
        function2 = function1;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c10(modifier3, str, z6, lVColorScheme2, z7, function2, i2, i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0061  */
    /* JADX WARN: Code duplicated, block: B:34:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:45:0x0095  */
    /* JADX WARN: Code duplicated, block: B:47:0x009d  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    public static final void b(Modifier modifier, String str, boolean z, LVColorScheme lVColorScheme, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        Function0 function1;
        boolean z2;
        boolean z3;
        LVColorScheme lVColorScheme2;
        Function0 function2;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i5;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        ConfigurationLink configurationLink;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVLinkSmall");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        GapComposer gapComposerH = composer.h(869325367);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i6 = i4 | 3456;
        int i7 = i3 & 16;
        if (i7 == 0) {
            if ((i2 & 24576) == 0) {
                function1 = function0;
                i6 |= gapComposerH.y(function1) ? 16384 : 8192;
            }
            if ((i6 & 9363) != 9362) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i6 & 1, z2)) {
                LVColorScheme lVColorScheme3 = LVColorScheme.DEFAULT;
                if (i7 != 0) {
                    function1 = null;
                }
                Function0 function3 = function1;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                i5 = WhenMappings.f48486a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48485a;
                if (i5 != 1) {
                    gapComposerH.L(-2096935364);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48489c;
                    gapComposerH.Z(false);
                } else {
                    if (i5 == 2) {
                        throw d21.u(gapComposerH, -2096937768, false);
                    }
                    gapComposerH.L(-2096933310);
                    configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).d;
                    gapComposerH.Z(false);
                }
                c(modifier2, str, true, false, configurationLink, function3, gapComposerH, (i6 & 1022) | ((i6 << 3) & ImageMetadata.JPEG_GPS_COORDINATES), 8);
                lVColorScheme2 = lVColorScheme3;
                z3 = true;
                function2 = function3;
            } else {
                gapComposerH.D();
                z3 = z;
                lVColorScheme2 = lVColorScheme;
                function2 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new xd(modifier2, str, z3, lVColorScheme2, function2, i2, i3);
            }
        }
        i6 = i4 | 28032;
        function1 = function0;
        if ((i6 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i6 & 1, z2)) {
            LVColorScheme lVColorScheme4 = LVColorScheme.DEFAULT;
            if (i7 != 0) {
                function1 = null;
            }
            Function0 function4 = function1;
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            i5 = WhenMappings.f48486a[lVColorScheme4.ordinal()];
            staticProvidableCompositionLocal = f48485a;
            if (i5 != 1) {
                gapComposerH.L(-2096935364);
                configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).f48489c;
                gapComposerH.Z(false);
            } else {
                if (i5 == 2) {
                    throw d21.u(gapComposerH, -2096937768, false);
                }
                gapComposerH.L(-2096933310);
                configurationLink = ((LVLinks) gapComposerH.k(staticProvidableCompositionLocal)).d;
                gapComposerH.Z(false);
            }
            c(modifier2, str, true, false, configurationLink, function4, gapComposerH, (i6 & 1022) | ((i6 << 3) & ImageMetadata.JPEG_GPS_COORDINATES), 8);
            lVColorScheme2 = lVColorScheme4;
            z3 = true;
            function2 = function4;
        } else {
            gapComposerH.D();
            z3 = z;
            lVColorScheme2 = lVColorScheme;
            function2 = function1;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xd(modifier2, str, z3, lVColorScheme2, function2, i2, i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x019d  */
    /* JADX WARN: Code duplicated, block: B:102:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:105:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x006d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0084  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x0096  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:75:0x010d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0110  */
    /* JADX WARN: Code duplicated, block: B:82:0x011d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0137  */
    /* JADX WARN: Code duplicated, block: B:88:0x014a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0167  */
    /* JADX WARN: Code duplicated, block: B:92:0x017c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0193  */
    public static final void c(Modifier modifier, String str, boolean z, boolean z2, ConfigurationLink configurationLink, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        GapComposer gapComposer;
        boolean z5;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z6;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableInteractionSource mutableInteractionSource;
        Object objX2;
        MutableState mutableState;
        long j2;
        Function0 function1;
        Modifier modifierJ;
        Modifier modifierO;
        Modifier modifier2;
        boolean z7;
        Modifier modifierJ2;
        boolean z8;
        Object objX3;
        Object objX4;
        boolean z9;
        Object objX5;
        int i6;
        int i7;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LinkInternal");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-1078444647);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier3) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        int i8 = i3 & 8;
        if (i8 == 0) {
            if ((i2 & 3072) == 0) {
                z3 = z2;
                i4 |= gapComposerH.b(z3) ? 2048 : 1024;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerH.K(configurationLink)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function0)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i4 |= i6;
            }
            i5 = i4;
            if ((74899 & i5) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i5 & 1, z4)) {
                if (i8 != 0) {
                    z6 = false;
                } else {
                    z6 = z3;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource = (MutableInteractionSource) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(new Color(configurationLink.f48562a));
                    gapComposerH.q(objX2);
                }
                mutableState = (MutableState) objX2;
                if (z) {
                    j2 = configurationLink.f48562a;
                } else {
                    j2 = configurationLink.f48563b;
                }
                mutableState.setValue(new Color(j2));
                TextStyle textStyle = configurationLink.f48564c;
                long j3 = ((Color) mutableState.getF10755b()).f8872a;
                TextAlign.f10959b.getClass();
                int i9 = TextAlign.g;
                TextOverflow.f10989a.getClass();
                int i10 = TextOverflow.f10991c;
                if (z6) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1588306662, "LinkInternal");
                    if ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objX5 = gapComposerH.x();
                    if (!z9 || objX5 == composer$Companion$Empty$1) {
                        function1 = function0;
                        objX5 = new py(function1, 16);
                        gapComposerH.q(objX5);
                    } else {
                        function1 = function0;
                    }
                    modifierJ = ModifierExtKt.d(dTFunctionNameModifierI, mutableInteractionSource, (Function0) objX5, gapComposerH, 54);
                    gapComposerH.Z(false);
                } else {
                    function1 = function0;
                    modifierJ = n00.j(gapComposerH, -1588069543, false, "LinkInternal");
                }
                modifierO = modifier3.o(modifierJ);
                if (function1 != null) {
                    modifier2 = modifierO;
                    Modifier modifierC = ModifierExtKt.c(n00.i(gapComposerH, -1587942970, "LinkInternal"), z, null, null, function1, 26);
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new x20(27);
                        gapComposerH.q(objX4);
                    }
                    z7 = false;
                    modifierJ2 = SemanticsModifierKt.b(modifierC, false, (Function1) objX4);
                    gapComposerH.Z(false);
                } else {
                    modifier2 = modifierO;
                    z7 = false;
                    modifierJ2 = n00.j(gapComposerH, -1587655879, false, "LinkInternal");
                }
                Modifier modifierO2 = modifier2.o(modifierJ2);
                z8 = (57344 & i5) != 16384 ? z7 : true;
                objX3 = gapComposerH.x();
                if (z8 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new gv(configurationLink, mutableState, 28);
                    gapComposerH.q(objX3);
                }
                gapComposer = gapComposerH;
                TextKt.c(str, DrawModifierKt.b(modifierO2, (Function1) objX3), j3, 0L, null, 0L, null, new TextAlign(i9), 0L, i10, false, 1, 0, null, textStyle, gapComposer, (i5 >> 3) & 14, 24960, 109560);
                z5 = z6;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z5 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier3, str, z, z5, configurationLink, function0, i2, i3, 3);
            }
        }
        i4 |= 3072;
        z3 = z2;
        if ((i2 & 24576) == 0) {
            if (gapComposerH.K(configurationLink)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i4 |= i7;
        }
        if ((196608 & i2) == 0) {
            if (gapComposerH.y(function0)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i4 |= i6;
        }
        i5 = i4;
        if ((74899 & i5) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i5 & 1, z4)) {
            if (i8 != 0) {
                z6 = false;
            } else {
                z6 = z3;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            mutableInteractionSource = (MutableInteractionSource) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(new Color(configurationLink.f48562a));
                gapComposerH.q(objX2);
            }
            mutableState = (MutableState) objX2;
            if (z) {
                j2 = configurationLink.f48562a;
            } else {
                j2 = configurationLink.f48563b;
            }
            mutableState.setValue(new Color(j2));
            TextStyle textStyle2 = configurationLink.f48564c;
            long j4 = ((Color) mutableState.getF10755b()).f8872a;
            TextAlign.f10959b.getClass();
            int i11 = TextAlign.g;
            TextOverflow.f10989a.getClass();
            int i12 = TextOverflow.f10991c;
            if (z6) {
                DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, -1588306662, "LinkInternal");
                if ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                objX5 = gapComposerH.x();
                if (z9) {
                    function1 = function0;
                    objX5 = new py(function1, 16);
                    gapComposerH.q(objX5);
                } else {
                    function1 = function0;
                    objX5 = new py(function1, 16);
                    gapComposerH.q(objX5);
                }
                modifierJ = ModifierExtKt.d(dTFunctionNameModifierI2, mutableInteractionSource, (Function0) objX5, gapComposerH, 54);
                gapComposerH.Z(false);
            } else {
                function1 = function0;
                modifierJ = n00.j(gapComposerH, -1588069543, false, "LinkInternal");
            }
            modifierO = modifier3.o(modifierJ);
            if (function1 != null) {
                modifier2 = modifierO;
                Modifier modifierC2 = ModifierExtKt.c(n00.i(gapComposerH, -1587942970, "LinkInternal"), z, null, null, function1, 26);
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new x20(27);
                    gapComposerH.q(objX4);
                }
                z7 = false;
                modifierJ2 = SemanticsModifierKt.b(modifierC2, false, (Function1) objX4);
                gapComposerH.Z(false);
            } else {
                modifier2 = modifierO;
                z7 = false;
                modifierJ2 = n00.j(gapComposerH, -1587655879, false, "LinkInternal");
            }
            Modifier modifierO3 = modifier2.o(modifierJ2);
            if ((57344 & i5) != 16384) {
            }
            objX3 = gapComposerH.x();
            if (z8) {
                objX3 = new gv(configurationLink, mutableState, 28);
                gapComposerH.q(objX3);
            } else {
                objX3 = new gv(configurationLink, mutableState, 28);
                gapComposerH.q(objX3);
            }
            gapComposer = gapComposerH;
            TextKt.c(str, DrawModifierKt.b(modifierO3, (Function1) objX3), j4, 0L, null, 0L, null, new TextAlign(i11), 0L, i12, false, 1, 0, null, textStyle2, gapComposer, (i5 >> 3) & 14, 24960, 109560);
            z5 = z6;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z5 = z3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c10(modifier3, str, z, z5, configurationLink, function0, i2, i3, 3);
        }
    }
}
