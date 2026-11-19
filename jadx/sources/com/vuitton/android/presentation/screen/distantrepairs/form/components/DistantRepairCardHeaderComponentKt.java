package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairCardHeaderComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import defpackage.bp;
import defpackage.cj;
import defpackage.dt;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairCardHeaderComponentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57217a;

        static {
            int[] iArr = new int[Step.values().length];
            try {
                iArr[Step.ONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Step.TWO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Step.THREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Step.FOUR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f57217a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0309  */
    /* JADX WARN: Code duplicated, block: B:120:0x031c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0320  */
    /* JADX WARN: Code duplicated, block: B:124:0x0324  */
    /* JADX WARN: Code duplicated, block: B:127:0x0330  */
    /* JADX WARN: Code duplicated, block: B:129:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:40:0x007e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0088  */
    /* JADX WARN: Code duplicated, block: B:45:0x008a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:50:0x0098  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:77:0x0100 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:80:0x0107  */
    /* JADX WARN: Code duplicated, block: B:83:0x0127  */
    /* JADX WARN: Code duplicated, block: B:85:0x012e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0132  */
    /* JADX WARN: Code duplicated, block: B:89:0x0195  */
    /* JADX WARN: Code duplicated, block: B:91:0x019c  */
    /* JADX WARN: Code duplicated, block: B:92:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:95:0x0225  */
    /* JADX WARN: Code duplicated, block: B:98:0x0276 A[ADDED_TO_REGION] */
    public static final void a(final Step step, final int i2, final StepState stepState, boolean z, Function1 function1, Composer composer, final int i3, final int i4) {
        int i5;
        boolean z2;
        boolean z3;
        final boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        int i6;
        String str;
        String str2;
        int i7;
        String str3;
        String str4;
        StepState stepState2;
        Arrangement.Horizontal horizontal;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        RowMeasurePolicy rowMeasurePolicyA2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i8;
        final Function1 function7 = function1;
        step.getClass();
        stepState.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(2098474940);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.d(step.ordinal()) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.d(stepState.ordinal()) ? 256 : 128;
        }
        int i9 = i4 & 8;
        if (i9 == 0) {
            if ((i3 & 3072) == 0) {
                z2 = z;
                i5 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            if ((i3 & 24576) == 0) {
                if (gapComposerH.y(function7)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i5 |= i8;
            }
            if ((i5 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i9 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                int[] iArr = WhenMappings.f57217a;
                i6 = iArr[step.ordinal()];
                if (i6 != 1) {
                    str = "careservicesForm_initiateRepairTitle_text";
                } else if (i6 != 2) {
                    if (i6 != 3) {
                        str = "careservicesForm_productDetailsTitle_text";
                    } else {
                        if (i6 == 4) {
                            v40.g();
                            return;
                        }
                        str2 = null;
                    }
                    i7 = iArr[step.ordinal()];
                    if (i7 != 1) {
                        str3 = "careservicesFormRecap_initiateRepairEdit_button";
                    } else if (i7 != 2) {
                        if (i7 != 3) {
                            str3 = "careservicesFormRecap_productDetailsEdit_button";
                        } else {
                            if (i7 == 4) {
                                v40.g();
                                return;
                            }
                            str4 = null;
                        }
                        Modifier modifierB = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        BiasAlignment.Vertical vertical = Alignment.Companion.l;
                        stepState2 = StepState.READ;
                        if (stepState == stepState2 || !z5) {
                            horizontal = Arrangement.f4918a;
                        } else {
                            horizontal = Arrangement.g;
                        }
                        rowMeasurePolicyA = RowKt.a(horizontal, vertical, gapComposerH, 48);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                        ComposeUiNode.b0.getClass();
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        Updater.c(gapComposerH, modifierC, function6);
                        BiasAlignment.Vertical vertical2 = Alignment.Companion.f8591k;
                        int i10 = i5;
                        Modifier modifierM = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                        String strC = StringResources_androidKt.c(gapComposerH, i2);
                        long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                        TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                        Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new bp(21);
                            gapComposerH.q(objX);
                        }
                        TextKt.c(strC, SemanticsModifierKt.b(modifierE, false, (Function1) objX), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(true);
                        if (stepState == stepState2 || !z5) {
                            function7 = function1;
                            gapComposerH.L(1163653194);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(1163131061);
                            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).w, gapComposerH, 0);
                            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_edit);
                            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                            Modifier modifierO = SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).m);
                            if (str4 == null) {
                                str4 = "";
                            }
                            Modifier modifierE2 = ModifierExtKt.e(modifierO, str4);
                            boolean z6 = ((i10 & 14) == 4) | ((i10 & 57344) == 16384);
                            Object objX2 = gapComposerH.x();
                            if (z6 || objX2 == composer$Companion$Empty$1) {
                                function7 = function1;
                                objX2 = new dt(function7, step, 3);
                                gapComposerH.q(objX2);
                            } else {
                                function7 = function1;
                            }
                            IconKt.a(painterA, strC2, ModifierExtKt.c(modifierE2, false, null, null, (Function0) objX2, 31), j3, gapComposerH, 8, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                    } else {
                        str3 = "careservicesFormRecap_contactInformationEdit_button";
                    }
                    str4 = str3;
                    Modifier modifierB2 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical3 = Alignment.Companion.l;
                    stepState2 = StepState.READ;
                    if (stepState == stepState2) {
                        horizontal = Arrangement.f4918a;
                    } else {
                        horizontal = Arrangement.f4918a;
                    }
                    rowMeasurePolicyA = RowKt.a(horizontal, vertical3, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf2 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf2, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function6);
                    BiasAlignment.Vertical vertical4 = Alignment.Companion.f8591k;
                    int i11 = i5;
                    Modifier modifierM2 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical4, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                    String strC3 = StringResources_androidKt.c(gapComposerH, i2);
                    long j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    Modifier modifierE3 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new bp(21);
                        gapComposerH.q(objX);
                    }
                    TextKt.c(strC3, SemanticsModifierKt.b(modifierE3, false, (Function1) objX), j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    if (stepState == stepState2) {
                        function7 = function1;
                        gapComposerH.L(1163653194);
                        gapComposerH.Z(false);
                    } else {
                        function7 = function1;
                        gapComposerH.L(1163653194);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                } else {
                    str = "careservicesForm_contactInformationTitle_text";
                }
                str2 = str;
                i7 = iArr[step.ordinal()];
                if (i7 != 1) {
                    str3 = "careservicesFormRecap_initiateRepairEdit_button";
                } else if (i7 != 2) {
                    if (i7 != 3) {
                        str3 = "careservicesFormRecap_productDetailsEdit_button";
                    } else {
                        if (i7 == 4) {
                            v40.g();
                            return;
                        }
                        str4 = null;
                    }
                    Modifier modifierB3 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical5 = Alignment.Companion.l;
                    stepState2 = StepState.READ;
                    if (stepState == stepState2) {
                        horizontal = Arrangement.f4918a;
                    } else {
                        horizontal = Arrangement.f4918a;
                    }
                    rowMeasurePolicyA = RowKt.a(horizontal, vertical5, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf3 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf3, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function6);
                    BiasAlignment.Vertical vertical6 = Alignment.Companion.f8591k;
                    int i12 = i5;
                    Modifier modifierM3 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical6, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM3);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                    String strC4 = StringResources_androidKt.c(gapComposerH, i2);
                    long j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    Modifier modifierE4 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new bp(21);
                        gapComposerH.q(objX);
                    }
                    TextKt.c(strC4, SemanticsModifierKt.b(modifierE4, false, (Function1) objX), j5, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    if (stepState == stepState2) {
                        function7 = function1;
                        gapComposerH.L(1163653194);
                        gapComposerH.Z(false);
                    } else {
                        function7 = function1;
                        gapComposerH.L(1163653194);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                } else {
                    str3 = "careservicesFormRecap_contactInformationEdit_button";
                }
                str4 = str3;
                Modifier modifierB4 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical7 = Alignment.Companion.l;
                stepState2 = StepState.READ;
                if (stepState == stepState2) {
                    horizontal = Arrangement.f4918a;
                } else {
                    horizontal = Arrangement.f4918a;
                }
                rowMeasurePolicyA = RowKt.a(horizontal, vertical7, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf4 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf4, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                BiasAlignment.Vertical vertical8 = Alignment.Companion.f8591k;
                int i13 = i5;
                Modifier modifierM4 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical8, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                String strC5 = StringResources_androidKt.c(gapComposerH, i2);
                long j6 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                Modifier modifierE5 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new bp(21);
                    gapComposerH.q(objX);
                }
                TextKt.c(strC5, SemanticsModifierKt.b(modifierE5, false, (Function1) objX), j6, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                if (stepState == stepState2) {
                    function7 = function1;
                    gapComposerH.L(1163653194);
                    gapComposerH.Z(false);
                } else {
                    function7 = function1;
                    gapComposerH.L(1163653194);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                gapComposerH.D();
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: yt
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        DistantRepairCardHeaderComponentKt.a(step, i2, stepState, z4, function7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 3072;
        z2 = z;
        if ((i3 & 24576) == 0) {
            if (gapComposerH.y(function7)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i5 |= i8;
        }
        if ((i5 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i9 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int[] iArr2 = WhenMappings.f57217a;
            i6 = iArr2[step.ordinal()];
            if (i6 != 1) {
                str = "careservicesForm_initiateRepairTitle_text";
            } else if (i6 != 2) {
                if (i6 != 3) {
                    str = "careservicesForm_productDetailsTitle_text";
                } else {
                    if (i6 == 4) {
                        v40.g();
                        return;
                    }
                    str2 = null;
                }
                i7 = iArr2[step.ordinal()];
                if (i7 != 1) {
                    str3 = "careservicesFormRecap_initiateRepairEdit_button";
                } else if (i7 != 2) {
                    if (i7 != 3) {
                        str3 = "careservicesFormRecap_productDetailsEdit_button";
                    } else {
                        if (i7 == 4) {
                            v40.g();
                            return;
                        }
                        str4 = null;
                    }
                    Modifier modifierB5 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical9 = Alignment.Companion.l;
                    stepState2 = StepState.READ;
                    if (stepState == stepState2) {
                        horizontal = Arrangement.f4918a;
                    } else {
                        horizontal = Arrangement.f4918a;
                    }
                    rowMeasurePolicyA = RowKt.a(horizontal, vertical9, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB5);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf5 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf5, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function6);
                    BiasAlignment.Vertical vertical10 = Alignment.Companion.f8591k;
                    int i14 = i5;
                    Modifier modifierM5 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical10, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM5);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                    String strC6 = StringResources_androidKt.c(gapComposerH, i2);
                    long j7 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    TextStyle textStyle5 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    Modifier modifierE6 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new bp(21);
                        gapComposerH.q(objX);
                    }
                    TextKt.c(strC6, SemanticsModifierKt.b(modifierE6, false, (Function1) objX), j7, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    if (stepState == stepState2) {
                        function7 = function1;
                        gapComposerH.L(1163653194);
                        gapComposerH.Z(false);
                    } else {
                        function7 = function1;
                        gapComposerH.L(1163653194);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                } else {
                    str3 = "careservicesFormRecap_contactInformationEdit_button";
                }
                str4 = str3;
                Modifier modifierB6 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical11 = Alignment.Companion.l;
                stepState2 = StepState.READ;
                if (stepState == stepState2) {
                    horizontal = Arrangement.f4918a;
                } else {
                    horizontal = Arrangement.f4918a;
                }
                rowMeasurePolicyA = RowKt.a(horizontal, vertical11, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB6);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf6 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf6, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                BiasAlignment.Vertical vertical12 = Alignment.Companion.f8591k;
                int i15 = i5;
                Modifier modifierM6 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical12, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM6);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                String strC7 = StringResources_androidKt.c(gapComposerH, i2);
                long j8 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextStyle textStyle6 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                Modifier modifierE7 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new bp(21);
                    gapComposerH.q(objX);
                }
                TextKt.c(strC7, SemanticsModifierKt.b(modifierE7, false, (Function1) objX), j8, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle6, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                if (stepState == stepState2) {
                    function7 = function1;
                    gapComposerH.L(1163653194);
                    gapComposerH.Z(false);
                } else {
                    function7 = function1;
                    gapComposerH.L(1163653194);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                str = "careservicesForm_contactInformationTitle_text";
            }
            str2 = str;
            i7 = iArr2[step.ordinal()];
            if (i7 != 1) {
                str3 = "careservicesFormRecap_initiateRepairEdit_button";
            } else if (i7 != 2) {
                if (i7 != 3) {
                    str3 = "careservicesFormRecap_productDetailsEdit_button";
                } else {
                    if (i7 == 4) {
                        v40.g();
                        return;
                    }
                    str4 = null;
                }
                Modifier modifierB7 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical13 = Alignment.Companion.l;
                stepState2 = StepState.READ;
                if (stepState == stepState2) {
                    horizontal = Arrangement.f4918a;
                } else {
                    horizontal = Arrangement.f4918a;
                }
                rowMeasurePolicyA = RowKt.a(horizontal, vertical13, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB7);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf7 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf7, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                BiasAlignment.Vertical vertical14 = Alignment.Companion.f8591k;
                int i16 = i5;
                Modifier modifierM7 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical14, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM7);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                String strC8 = StringResources_androidKt.c(gapComposerH, i2);
                long j9 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextStyle textStyle7 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                Modifier modifierE8 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new bp(21);
                    gapComposerH.q(objX);
                }
                TextKt.c(strC8, SemanticsModifierKt.b(modifierE8, false, (Function1) objX), j9, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle7, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                if (stepState == stepState2) {
                    function7 = function1;
                    gapComposerH.L(1163653194);
                    gapComposerH.Z(false);
                } else {
                    function7 = function1;
                    gapComposerH.L(1163653194);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                str3 = "careservicesFormRecap_contactInformationEdit_button";
            }
            str4 = str3;
            Modifier modifierB8 = BackgroundKt.b(tr.d("CardHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical15 = Alignment.Companion.l;
            stepState2 = StepState.READ;
            if (stepState == stepState2) {
                horizontal = Arrangement.f4918a;
            } else {
                horizontal = Arrangement.f4918a;
            }
            rowMeasurePolicyA = RowKt.a(horizontal, vertical15, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB8);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf8 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf8, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            BiasAlignment.Vertical vertical16 = Alignment.Companion.f8591k;
            int i17 = i5;
            Modifier modifierM8 = PaddingKt.m(PaddingKt.k(new DTFunctionNameModifier("CardHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, vertical16, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM8);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            TextKt.c(cj.d(step.ordinal() + 1, ". "), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
            String strC9 = StringResources_androidKt.c(gapComposerH, i2);
            long j10 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextStyle textStyle8 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            Modifier modifierE9 = ModifierExtKt.e(new DTFunctionNameModifier("CardHeader"), String.valueOf(str2));
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new bp(21);
                gapComposerH.q(objX);
            }
            TextKt.c(strC9, SemanticsModifierKt.b(modifierE9, false, (Function1) objX), j10, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle8, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            if (stepState == stepState2) {
                function7 = function1;
                gapComposerH.L(1163653194);
                gapComposerH.Z(false);
            } else {
                function7 = function1;
                gapComposerH.L(1163653194);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            z4 = z5;
        } else {
            gapComposerH.D();
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: yt
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    DistantRepairCardHeaderComponentKt.a(step, i2, stepState, z4, function7, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
