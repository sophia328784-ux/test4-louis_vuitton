package com.vuitton.android.presentation.screen.booking.confirmation.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingInfoRowKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingActionTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingActionUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoTypeUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingInfoUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.r0;
import defpackage.re;
import defpackage.tr;
import defpackage.z2;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingConfirmationCardKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54385a;

        static {
            int[] iArr = new int[BookingInfoTypeUiModel.values().length];
            try {
                iArr[BookingInfoTypeUiModel.PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingInfoTypeUiModel.ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f54385a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Modifier modifier, BookingUiModel bookingUiModel, Function1 function1, Function1 function2, Function2 function3, final Function1 function4, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        float f2;
        float f3;
        Object next;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        boolean z;
        char c2;
        int i3;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        Modifier modifierE = modifier;
        final BookingUiModel bookingUiModel2 = bookingUiModel;
        final Function1 function5 = function1;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingConfirmationCard");
        }
        Modifier modifier2 = modifierE;
        bookingUiModel2.getClass();
        GapComposer gapComposerH = composer.h(735856677);
        Applier applier = gapComposerH.f7976a;
        int i4 = (i2 & 6) == 0 ? (gapComposerH.K(modifier2) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(bookingUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function5) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(modifier2, LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Object obj = null;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Modifier modifierA = AspectRatioKt.a(n00.e(gapComposerH, modifierC, function10, "BookingConfirmationCard", 1.0f), 1.0f, false);
            String str = bookingUiModel2.f54619h;
            List list = bookingUiModel2.m;
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3462, 2032);
            GapComposer gapComposer = gapComposerH;
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("BookingConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 1);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA2, function6);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposer, function8, gapComposer, function9);
            Modifier modifierK2 = PaddingKt.k(tr.e(gapComposer, modifierC2, function10, "BookingConfirmationCard"), LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Object objX = gapComposer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$4) {
                objX = new re(4);
                gapComposer.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierK2, true, (Function1) objX);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
            int iHashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA3, function6);
            Updater.c(gapComposer, persistentCompositionLocalMapU3, function7);
            cj.t(iHashCode3, gapComposer, function8, gapComposer, function9);
            Updater.c(gapComposer, modifierC3, function10);
            if (bookingUiModel2.f54617e != null) {
                gapComposer.L(449585536);
                String str2 = bookingUiModel2.f54617e;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).p;
                long j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.v;
                TextOverflow.f10989a.getClass();
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
                TextKt.c(str2, null, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposer, 0, 24960, 110586);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
                gapComposer.L(449909951);
                gapComposer.Z(false);
            }
            GapComposer gapComposer2 = gapComposer;
            TextKt.c(bookingUiModel2.d, PaddingKt.m(new DTFunctionNameModifier("BookingConfirmationCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, 5), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48426f, gapComposer2, 0, 0, 131064);
            gapComposerH = gapComposer2;
            Modifier modifierK3 = PaddingKt.k(o60.f(gapComposerH, true, "BookingConfirmationCard"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean z2 = false;
            ColumnMeasurePolicy columnMeasurePolicyA4 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierK3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA4, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function7);
            cj.t(iHashCode4, gapComposerH, function8, gapComposerH, function9);
            Updater.c(gapComposerH, modifierC4, function10);
            gapComposerH.L(706351148);
            for (BookingInfoUiModel bookingInfoUiModel : bookingUiModel2.f54621j) {
                boolean z3 = z2;
                String str3 = bookingInfoUiModel.f54607a;
                String str4 = bookingInfoUiModel.f54608b;
                boolean z4 = bookingInfoUiModel.f54609c != BookingInfoTypeUiModel.TEXT ? true : z3;
                boolean zK = gapComposerH.K(bookingInfoUiModel) | ((i4 & 7168) == 2048 ? true : z3) | ((57344 & i4) == 16384 ? true : z3) | gapComposerH.y(bookingUiModel2);
                Object objX2 = gapComposerH.x();
                if (zK) {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                } else {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    if (objX2 != composer$Companion$Empty$2) {
                        i3 = i4;
                        composer$Companion$Empty$3 = composer$Companion$Empty$2;
                        c2 = 0;
                        z = true;
                    }
                    i4 = i3;
                    GapComposer gapComposer3 = gapComposerH;
                    BookingInfoRowKt.a(null, str3, str4, z4, (Function0) objX2, gapComposer3, 0);
                    z2 = z3;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    gapComposerH = gapComposer3;
                }
                composer$Companion$Empty$3 = composer$Companion$Empty$2;
                i3 = i4;
                c2 = 0;
                z = true;
                BookingUiModel bookingUiModel3 = bookingUiModel2;
                r0 r0Var = new r0(bookingInfoUiModel, function2, function3, bookingUiModel3, 6);
                bookingUiModel2 = bookingUiModel3;
                gapComposerH.q(r0Var);
                objX2 = r0Var;
                i4 = i3;
                GapComposer gapComposer4 = gapComposerH;
                BookingInfoRowKt.a(null, str3, str4, z4, (Function0) objX2, gapComposer4, 0);
                z2 = z3;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                gapComposerH = gapComposer4;
            }
            Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$1;
            boolean z5 = z2;
            final int i5 = 1;
            gapComposerH.Z(z5);
            gapComposerH.Z(true);
            String str5 = bookingUiModel2.f54622k;
            if (str5 == null) {
                gapComposerH.L(-757159600);
                gapComposerH.Z(z5);
                f2 = 1.0f;
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            } else {
                f2 = 1.0f;
                Modifier modifierM = PaddingKt.m(o60.c(gapComposerH, -757159599, "BookingConfirmationCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                float f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                GapComposer gapComposer5 = gapComposerH;
                LVDisclaimerKt.a(PaddingKt.k(modifierM, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), str5, null, 0L, null, null, gapComposer5, 0, 60);
                gapComposerH = gapComposer5;
                gapComposerH.Z(z5);
            }
            List list2 = list;
            Iterator it = list2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((BookingActionUiModel) next).f54601a != BookingActionTypeUiModel.ADD_TO_CALENDAR);
            if (((BookingActionUiModel) next) == null) {
                gapComposerH.L(-756720020);
                gapComposerH.Z(z5);
            } else {
                Modifier modifierK4 = PaddingKt.k(PaddingKt.m(o60.c(gapComposerH, -756720019, "BookingConfirmationCard", f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48415c, f3, 2);
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                int i6 = LVAppDesignKitTheme.g(gapComposerH).C1;
                String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_confirmation_add_calendar_cta);
                Integer numValueOf2 = Integer.valueOf(i6);
                boolean z6 = ((458752 & i4) == 131072 ? (char) 1 : z5 ? 1 : 0) | (gapComposerH.y(bookingUiModel2) ? 1 : 0);
                Object objX3 = gapComposerH.x();
                if (z6 != 0 || objX3 == composer$Companion$Empty$5) {
                    final int i7 = z5 ? 1 : 0;
                    objX3 = new Function0() { // from class: df
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i7) {
                                case 0:
                                    function4.invoke(bookingUiModel2);
                                    break;
                                default:
                                    function4.invoke(bookingUiModel2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX3);
                }
                LVButtonKt.b(0, 496, gapComposerH, modifierK4, configurationButton, numValueOf2, null, strC, (Function0) objX3, false, false, false);
                gapComposerH.Z(z5);
            }
            for (Object obj2 : list2) {
                if (((BookingActionUiModel) obj2).f54601a == BookingActionTypeUiModel.QR_CODE) {
                    obj = obj2;
                    break;
                }
            }
            if (((BookingActionUiModel) obj) == null) {
                gapComposerH.L(-756038795);
                gapComposerH.Z(z5);
                function5 = function1;
            } else {
                Modifier modifierK5 = PaddingKt.k(PaddingKt.m(o60.c(gapComposerH, -756038794, "BookingConfirmationCard", f2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48415c, f3, 2);
                ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48446a;
                int i8 = LVAppDesignKitTheme.g(gapComposerH).G0;
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.booking_confirmation_view_pass_cta);
                Integer numValueOf3 = Integer.valueOf(i8);
                boolean z7 = ((i4 & 896) == 256 ? (char) 1 : z5 ? 1 : 0) | (gapComposerH.y(bookingUiModel2) ? 1 : 0);
                Object objX4 = gapComposerH.x();
                if (z7 != 0 || objX4 == composer$Companion$Empty$5) {
                    function5 = function1;
                    objX4 = new Function0() { // from class: df
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i5) {
                                case 0:
                                    function5.invoke(bookingUiModel2);
                                    break;
                                default:
                                    function5.invoke(bookingUiModel2);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX4);
                } else {
                    function5 = function1;
                }
                LVButtonKt.b(0, 496, gapComposerH, modifierK5, configurationButton2, numValueOf3, null, strC2, (Function0) objX4, false, false, false);
                gapComposerH.Z(z5);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, (Object) bookingUiModel2, function5, function2, (Function) function3, function4, i2, 1);
        }
    }
}
