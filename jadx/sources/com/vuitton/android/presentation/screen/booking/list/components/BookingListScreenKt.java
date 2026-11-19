package com.vuitton.android.presentation.screen.booking.list.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.components.BookingOverviewKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import defpackage.n00;
import defpackage.o60;
import defpackage.re;
import defpackage.tf;
import defpackage.u;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingListScreenKt {
    public static final void a(BookingListViewState bookingListViewState, Function2 function2, Function1 function1, Composer composer, int i2) {
        List<BookingAdditionalUiModel> list;
        String str;
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z2;
        boolean z3;
        bookingListViewState.getClass();
        List<BookingUiModel> list2 = bookingListViewState.d;
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-487753598);
        int i3 = i2 | (gapComposerH.y(bookingListViewState) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("BookingListScreen").o(SizeKt.f5052c), ScrollKt.b(gapComposerH), false, 14);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(modifierD, j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            List list3 = bookingListViewState.f54613e;
            boolean zIsEmpty = list2.isEmpty();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zIsEmpty) {
                Modifier modifierM = PaddingKt.m(o60.c(gapComposerH, -1448770057, "BookingListScreen", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(gapComposerH).C, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(gapComposerH).x, 5);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_my_experiences_no_experiences_description);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                list = list3;
                str = "BookingListScreen";
                z = false;
                TextKt.c(strC, modifierM, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                list = list3;
                str = "BookingListScreen";
                z = false;
                char c2 = 256;
                boolean z4 = true;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                gapComposerH.L(-1448188342);
                for (BookingUiModel bookingUiModel : list2) {
                    Modifier modifierA = ClipKt.a(new DTFunctionNameModifier(str), LVAppDesignKitTheme.j(gapComposerH).d);
                    boolean zY = gapComposerH.y(bookingUiModel) | ((i3 & 112) == 32 ? z4 : false);
                    Object objX = gapComposerH.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new tf(function2, bookingUiModel, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierI2 = PaddingKt.i(BackgroundKt.b(ModifierExtKt.c(modifierA, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Object objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new re(11);
                        gapComposerH.q(objX2);
                    }
                    BookingOverviewKt.a(SemanticsModifierKt.b(modifierI2, false, (Function1) objX2), bookingUiModel.f54619h, bookingUiModel.d, bookingUiModel.f54617e, bookingUiModel.f54618f, null, gapComposerH, 0, 32);
                    c2 = 256;
                    z4 = true;
                }
                gapComposerH.Z(false);
            }
            if (list.isEmpty()) {
                z2 = true;
                gapComposerH.L(-1446402742);
                gapComposerH.Z(z);
            } else {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposerH, -1447340678, str), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new re(12);
                    gapComposerH.q(objX3);
                }
                GapComposer gapComposer = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.booking_my_experiences_discover_title), SemanticsModifierKt.b(modifierM2, z, (Function1) objX3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposer, 0, 0, 131064);
                gapComposerH = gapComposer;
                for (BookingAdditionalUiModel bookingAdditionalUiModel : list) {
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
                    Object objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new re(13);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, z, (Function1) objX4);
                    String str2 = bookingAdditionalUiModel.f54605c;
                    String str3 = bookingAdditionalUiModel.d;
                    if (str3 == null) {
                        str3 = "";
                    }
                    String str4 = bookingAdditionalUiModel.f54606e;
                    boolean zY2 = ((i3 & 896) == 256 ? true : z) | gapComposerH.y(bookingAdditionalUiModel);
                    Object objX5 = gapComposerH.x();
                    if (zY2 || objX5 == composer$Companion$Empty$1) {
                        z3 = true;
                        objX5 = new tf(function1, bookingAdditionalUiModel, 1);
                        gapComposerH.q(objX5);
                    } else {
                        z3 = true;
                    }
                    GapComposer gapComposer2 = gapComposerH;
                    ExtendExperienceCardKt.a(modifierB, str2, str3, str4, (Function0) objX5, gapComposer2, 0);
                    gapComposerH = gapComposer2;
                }
                z2 = true;
                gapComposerH.Z(z);
            }
            gapComposerH.Z(z2);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            function1 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(bookingListViewState, function2, function1, i2, 13);
        }
    }
}
