package com.vuitton.android.presentation.screen.booking.form.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarNavIcon;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import defpackage.a4;
import defpackage.f0;
import defpackage.g0;
import defpackage.hg;
import defpackage.u;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "previousExpandedModuleIndex", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingReservationScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f54456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f54457b = 0;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54473a;

        static {
            int[] iArr = new int[BookingCTAState.values().length];
            try {
                iArr[BookingCTAState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f54473a = iArr;
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        f54456a = DurationKt.g(500, DurationUnit.MILLISECONDS);
    }

    /* JADX WARN: Code duplicated, block: B:174:0x0296  */
    /* JADX WARN: Code duplicated, block: B:176:0x029d  */
    /* JADX WARN: Code duplicated, block: B:177:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:181:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:183:0x0369  */
    public static final void a(final BookingExperienceViewState bookingExperienceViewState, final boolean z, final boolean z2, final BookingCTAState bookingCTAState, final SnackbarHostState snackbarHostState, final Function1 function1, final Function2 function2, final Function1 function3, final Function3 function4, final Function0 function0, final Function0 function5, final Function2 function6, final Function0 function7, final Function1 function8, final Function1 function9, final Function0 function10, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        GapComposer gapComposer;
        LVModalBottomSheetState lVModalBottomSheetState;
        Integer numValueOf;
        FillElement fillElement;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function11;
        boolean zK;
        Object objX;
        BookingFormUiModel bookingFormUiModel;
        List list;
        bookingExperienceViewState.getClass();
        bookingCTAState.getClass();
        snackbarHostState.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function0.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        GapComposer gapComposerH = composer.h(590389662);
        if ((i2 & 6) == 0) {
            i4 = ((i2 & 8) == 0 ? gapComposerH.K(bookingExperienceViewState) : gapComposerH.y(bookingExperienceViewState) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.d(bookingCTAState.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(snackbarHostState) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(function0) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.y(function5) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function6) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function7) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function8) ? 2048 : 1024;
        }
        int i6 = i4;
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.y(function9) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function10) ? 131072 : 65536;
        }
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i5 & 74899) == 74898) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TopBarNavIcon topBarNavIcon = z2 ? TopBarNavIcon.BACK : TopBarNavIcon.CLOSE;
            Function0 function12 = z2 ? function5 : function0;
            boolean z3 = bookingExperienceViewState instanceof BookingExperienceViewState.Success;
            BookingExperienceViewState.Success success = z3 ? (BookingExperienceViewState.Success) bookingExperienceViewState : null;
            final BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory = success != null ? success.f54506f : null;
            String strC = StringResources_androidKt.c(gapComposerH, z ? R.string.booking_modify_title : R.string.booking_form_title);
            final String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_loading_status);
            BackHandlerKt.a(false, function12, gapComposerH, 0, 1);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            boolean zY = gapComposerH.y(multipleTextCategory) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new BookingReservationScreenKt$BookingReservationScreen$1$1(multipleTextCategory, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, multipleTextCategory, (Function2) objX2);
            final LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            BookingExperienceViewState.Success success2 = z3 ? (BookingExperienceViewState.Success) bookingExperienceViewState : null;
            if (success2 == null || (bookingFormUiModel = success2.f54502a) == null || (list = bookingFormUiModel.d) == null) {
                lVModalBottomSheetState = lVModalBottomSheetStateF;
            } else {
                Iterator it = list.iterator();
                int i7 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        lVModalBottomSheetState = lVModalBottomSheetStateF;
                        i7 = -1;
                        break;
                    } else {
                        lVModalBottomSheetState = lVModalBottomSheetStateF;
                        if (((BookingFormModuleUiModel) it.next()).f54540f) {
                            break;
                        }
                        i7++;
                        lVModalBottomSheetStateF = lVModalBottomSheetState;
                    }
                }
                numValueOf = Integer.valueOf(i7);
                if (i7 < 0) {
                }
                b(lazyListStateA, numValueOf, gapComposerH, 0);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingReservationScreen");
                fillElement = SizeKt.f5052c;
                Modifier modifierO = dTFunctionNameModifier.o(fillElement);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
                ComposeUiNode.b0.getClass();
                function11 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function11);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Modifier modifierO2 = new DTFunctionNameModifier("BookingReservationScreen").o(fillElement);
                zK = gapComposerH.K(strC);
                objX = gapComposerH.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new a4(strC, 14);
                    gapComposerH.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierO2, false, (Function1) objX);
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(707382888, new u(strC, topBarNavIcon, function12, 16), gapComposerH);
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(229419689, new hg(bookingExperienceViewState, bookingCTAState, strC2, z, function4, function3, 0), gapComposerH);
                ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-248543510, new g0(snackbarHostState, 13), gapComposerH);
                gapComposer = gapComposerH;
                final LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                ScaffoldKt.a(modifierB, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, null, 0, j2, 0L, null, ComposableLambdaKt.b(1779890675, new Function3() { // from class: ig
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Modifier dTFunctionNameModifier2;
                        PaddingValues paddingValues = (PaddingValues) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        int i8 = BookingReservationScreenKt.f54457b;
                        paddingValues.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            BookingExperienceViewState bookingExperienceViewState2 = bookingExperienceViewState;
                            if (bookingExperienceViewState2 instanceof BookingExperienceViewState.Error) {
                                composer2.L(-943044923);
                                LVEmptyViewKt.e(PaddingKt.h(new DTFunctionNameModifier("BookingReservationScreen$lambda$3$4"), paddingValues).o(SizeKt.f5052c), null, StringResources_androidKt.c(composer2, R.string.error_generic), null, null, StringResources_androidKt.c(composer2, R.string.button_try_again), function10, composer2, 0, 122);
                                composer2.F();
                            } else {
                                composer2.L(-942463828);
                                boolean z4 = bookingExperienceViewState2 instanceof BookingExperienceViewState.Loading;
                                if (!z4 && !(bookingExperienceViewState2 instanceof BookingExperienceViewState.Success)) {
                                    throw o60.v(composer2, 1077976598);
                                }
                                composer2.L(-942310626);
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (z4) {
                                    DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-942348012, composer2, "BookingReservationScreen$lambda$3$4");
                                    String str = strC2;
                                    boolean zK2 = composer2.K(str);
                                    Object objX3 = composer2.x();
                                    if (zK2 || objX3 == composer$Companion$Empty$2) {
                                        objX3 = new a4(str, 15);
                                        composer2.q(objX3);
                                    }
                                    dTFunctionNameModifier2 = ModifierExtKt.a(dTFunctionNameModifierJ, null, (Function1) objX3, 3);
                                    composer2.F();
                                } else {
                                    composer2.L(-942067865);
                                    composer2.F();
                                    dTFunctionNameModifier2 = new DTFunctionNameModifier("BookingReservationScreen$lambda$3$4");
                                }
                                Modifier modifierO3 = dTFunctionNameModifier2.o(SizeKt.f5052c);
                                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e);
                                boolean z5 = z;
                                boolean zB = composer2.b(z5) | composer2.y(bookingExperienceViewState2);
                                BookingCTAState bookingCTAState2 = bookingCTAState;
                                boolean zD = zB | composer2.d(bookingCTAState2.ordinal());
                                Function1 function13 = function1;
                                boolean zK3 = zD | composer2.K(function13);
                                Function2 function14 = function2;
                                boolean zK4 = zK3 | composer2.K(function14);
                                Function2 function15 = function6;
                                boolean zK5 = zK4 | composer2.K(function15);
                                Function1 function16 = function9;
                                boolean zK6 = zK5 | composer2.K(function16);
                                Object objX4 = composer2.x();
                                if (zK6 || objX4 == composer$Companion$Empty$2) {
                                    kg kgVar = new kg(bookingExperienceViewState2, z5, bookingCTAState2, function13, function14, function15, function16);
                                    composer2.q(kgVar);
                                    objX4 = kgVar;
                                }
                                LazyDslKt.a(modifierO3, lazyListStateA, paddingValues, spacedAlignedF, null, null, false, null, (Function1) objX4, composer2, (iIntValue << 6) & 896, 488);
                                composer2.F();
                                composer2.F();
                            }
                            LVModalBottomSheetState lVModalBottomSheetState3 = lVModalBottomSheetState2;
                            if (lVModalBottomSheetState3.a()) {
                                composer2.L(-936824835);
                                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer2, R.string.alt_close), function7, lVModalBottomSheetState3, WindowInsets_androidKt.b(composer2), 0L, false, null, ComposableLambdaKt.b(-1450885141, new f1(multipleTextCategory, function8, 12), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 225);
                                composer2.F();
                            } else {
                                composer2.L(-936240113);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, 805309872, 432);
                gapComposer.Z(true);
            }
            numValueOf = null;
            b(lazyListStateA, numValueOf, gapComposerH, 0);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BookingReservationScreen");
            fillElement = SizeKt.f5052c;
            Modifier modifierO3 = dTFunctionNameModifier2.o(fillElement);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierO3);
            ComposeUiNode.b0.getClass();
            function11 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function11);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierO4 = new DTFunctionNameModifier("BookingReservationScreen").o(fillElement);
            zK = gapComposerH.K(strC);
            objX = gapComposerH.x();
            if (zK) {
                objX = new a4(strC, 14);
                gapComposerH.q(objX);
            } else {
                objX = new a4(strC, 14);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierO4, false, (Function1) objX);
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
            ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(707382888, new u(strC, topBarNavIcon, function12, 16), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB5 = ComposableLambdaKt.b(229419689, new hg(bookingExperienceViewState, bookingCTAState, strC2, z, function4, function3, 0), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB6 = ComposableLambdaKt.b(-248543510, new g0(snackbarHostState, 13), gapComposerH);
            gapComposer = gapComposerH;
            final LVModalBottomSheetState lVModalBottomSheetState3 = lVModalBottomSheetState;
            ScaffoldKt.a(modifierB2, composableLambdaImplB4, composableLambdaImplB5, composableLambdaImplB6, null, 0, j3, 0L, null, ComposableLambdaKt.b(1779890675, new Function3() { // from class: ig
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Modifier dTFunctionNameModifier3;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    int i8 = BookingReservationScreenKt.f54457b;
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        BookingExperienceViewState bookingExperienceViewState2 = bookingExperienceViewState;
                        if (bookingExperienceViewState2 instanceof BookingExperienceViewState.Error) {
                            composer2.L(-943044923);
                            LVEmptyViewKt.e(PaddingKt.h(new DTFunctionNameModifier("BookingReservationScreen$lambda$3$4"), paddingValues).o(SizeKt.f5052c), null, StringResources_androidKt.c(composer2, R.string.error_generic), null, null, StringResources_androidKt.c(composer2, R.string.button_try_again), function10, composer2, 0, 122);
                            composer2.F();
                        } else {
                            composer2.L(-942463828);
                            boolean z4 = bookingExperienceViewState2 instanceof BookingExperienceViewState.Loading;
                            if (!z4 && !(bookingExperienceViewState2 instanceof BookingExperienceViewState.Success)) {
                                throw o60.v(composer2, 1077976598);
                            }
                            composer2.L(-942310626);
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (z4) {
                                DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-942348012, composer2, "BookingReservationScreen$lambda$3$4");
                                String str = strC2;
                                boolean zK2 = composer2.K(str);
                                Object objX3 = composer2.x();
                                if (zK2 || objX3 == composer$Companion$Empty$2) {
                                    objX3 = new a4(str, 15);
                                    composer2.q(objX3);
                                }
                                dTFunctionNameModifier3 = ModifierExtKt.a(dTFunctionNameModifierJ, null, (Function1) objX3, 3);
                                composer2.F();
                            } else {
                                composer2.L(-942067865);
                                composer2.F();
                                dTFunctionNameModifier3 = new DTFunctionNameModifier("BookingReservationScreen$lambda$3$4");
                            }
                            Modifier modifierO5 = dTFunctionNameModifier3.o(SizeKt.f5052c);
                            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e);
                            boolean z5 = z;
                            boolean zB = composer2.b(z5) | composer2.y(bookingExperienceViewState2);
                            BookingCTAState bookingCTAState2 = bookingCTAState;
                            boolean zD = zB | composer2.d(bookingCTAState2.ordinal());
                            Function1 function13 = function1;
                            boolean zK3 = zD | composer2.K(function13);
                            Function2 function14 = function2;
                            boolean zK4 = zK3 | composer2.K(function14);
                            Function2 function15 = function6;
                            boolean zK5 = zK4 | composer2.K(function15);
                            Function1 function16 = function9;
                            boolean zK6 = zK5 | composer2.K(function16);
                            Object objX4 = composer2.x();
                            if (zK6 || objX4 == composer$Companion$Empty$2) {
                                kg kgVar = new kg(bookingExperienceViewState2, z5, bookingCTAState2, function13, function14, function15, function16);
                                composer2.q(kgVar);
                                objX4 = kgVar;
                            }
                            LazyDslKt.a(modifierO5, lazyListStateA, paddingValues, spacedAlignedF, null, null, false, null, (Function1) objX4, composer2, (iIntValue << 6) & 896, 488);
                            composer2.F();
                            composer2.F();
                        }
                        LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                        if (lVModalBottomSheetState4.a()) {
                            composer2.L(-936824835);
                            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(composer2, R.string.alt_close), function7, lVModalBottomSheetState4, WindowInsets_androidKt.b(composer2), 0L, false, null, ComposableLambdaKt.b(-1450885141, new f1(multipleTextCategory, function8, 12), composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 225);
                            composer2.F();
                        } else {
                            composer2.L(-936240113);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 805309872, 432);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: jg
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    BookingReservationScreenKt.a(bookingExperienceViewState, z, z2, bookingCTAState, snackbarHostState, function1, function2, function3, function4, function0, function5, function6, function7, function8, function9, function10, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(LazyListState lazyListState, Integer num, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1175100280);
        int i3 = (gapComposerH.K(lazyListState) ? 4 : 2) | i2 | (gapComposerH.K(num) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(-305026039);
            int iB0 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).B0(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            gapComposerH.Z(false);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            boolean zD = ((i3 & 112) == 32) | ((i3 & 14) == 4) | gapComposerH.d(iB0);
            Object objX2 = gapComposerH.x();
            if (zD || objX2 == composer$Companion$Empty$1) {
                BookingReservationScreenKt$RevealExpandedModuleEffect$1$1 bookingReservationScreenKt$RevealExpandedModuleEffect$1$1 = new BookingReservationScreenKt$RevealExpandedModuleEffect$1$1(num, lazyListState, iB0, mutableState, null);
                gapComposerH.q(bookingReservationScreenKt$RevealExpandedModuleEffect$1$1);
                objX2 = bookingReservationScreenKt$RevealExpandedModuleEffect$1$1;
            }
            EffectsKt.e(gapComposerH, num, (Function2) objX2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(lazyListState, num, i2, 20);
        }
    }
}
