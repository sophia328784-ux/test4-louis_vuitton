package com.vuitton.android.presentation.screen.booking.form.components.module;

import android.content.Context;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleMultipleTextKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.a;
import defpackage.cj;
import defpackage.f0;
import defpackage.lc;
import defpackage.n00;
import defpackage.o60;
import defpackage.o8;
import defpackage.re;
import defpackage.tf;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0003²\u0006\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;", "options", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleMultipleTextKt {
    public static final void a(Modifier modifier, final BookingFormModuleDataUiModel.MultipleText multipleText, final boolean z, final Function1 function1, Composer composer, final int i2) {
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        boolean z2;
        boolean z3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingModuleMultipleText");
        }
        multipleText.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-71320017);
        int i3 = 2048;
        int i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(multipleText) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        boolean z4 = true;
        boolean z5 = false;
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BookingFormModuleDataUiModel.FreeTypingUiModel freeTypingUiModel = multipleText.f54517c;
            List list = multipleText.f54515a;
            if (freeTypingUiModel == null) {
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!((BookingFormModuleDataUiModel.MultipleTextCategory) it.next()).f54520c.isEmpty()) {
                                z2 = true;
                            }
                        }
                    }
                }
                z2 = false;
            } else {
                z2 = true;
            }
            if (z || z2) {
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
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
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                float f2 = 1.0f;
                if (z) {
                    Modifier modifierF = SizeKt.f(o60.c(gapComposerH, 1620183818, "BookingModuleMultipleText", 1.0f), configurationButton.m);
                    float f3 = configurationButton.m / 2.0f;
                    Dp.Companion companion = Dp.f11004c;
                    LVSkeletonKt.b(ClipKt.a(modifierF, RoundedCornerShapeKt.a(f3)), null, null, gapComposerH, 0, 6);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                    z3 = true;
                } else {
                    gapComposerH.L(1620438731);
                    ArrayList<BookingFormModuleDataUiModel.MultipleTextCategory> arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (!((BookingFormModuleDataUiModel.MultipleTextCategory) obj).f54520c.isEmpty()) {
                            arrayList.add(obj);
                        }
                    }
                    for (BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory : arrayList) {
                        ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48449e;
                        Modifier modifierD = tr.d("BookingModuleMultipleText", f2);
                        String str = multipleTextCategory.f54519b;
                        String strD = StringKtExtKt.d(StringResourceUiModelKt.a(multipleTextCategory.b() == 0 ? new StringResourceUiModel.ResId(R.string.booking_form_request_card_unselected_cta_format, CollectionsKt.O(str)) : new StringResourceUiModel.PluralResId(R.plurals.booking_form_request_card_cta_format, multipleTextCategory.b(), CollectionsKt.P(Integer.valueOf(multipleTextCategory.b()), str)), (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)));
                        boolean zY = ((i4 & 7168) == i3 ? z4 : z5) | gapComposerH.y(multipleTextCategory);
                        Object objX = gapComposerH.x();
                        if (zY || objX == Composer.Companion.f7939a) {
                            objX = new tf(function1, multipleTextCategory, 6);
                            gapComposerH.q(objX);
                        }
                        LVButtonKt.b(6, 504, gapComposerH, modifierD, configurationButton2, null, null, strD, (Function0) objX, false, false, false);
                        z5 = z5;
                        i3 = i3;
                        f2 = 1.0f;
                        z4 = true;
                    }
                    gapComposerH.Z(z5);
                    z3 = true;
                }
                gapComposerH.Z(z3);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            } else {
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final Modifier modifier2 = modifierE;
                final int i5 = 0;
                function2 = new Function2(modifier2, multipleText, z, function1, i2, i5) { // from class: cg

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f21147b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f21148c;
                    public final /* synthetic */ BookingFormModuleDataUiModel.MultipleText d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ boolean f21149e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function1 f21150f;

                    {
                        this.f21147b = i5;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        switch (this.f21147b) {
                            case 0:
                                ((Integer) obj3).getClass();
                                int iA = RecomposeScopeImplKt.a(1);
                                BookingModuleMultipleTextKt.a(this.f21148c, this.d, this.f21149e, this.f21150f, (Composer) obj2, iA);
                                break;
                            default:
                                ((Integer) obj3).getClass();
                                int iA2 = RecomposeScopeImplKt.a(1);
                                BookingModuleMultipleTextKt.a(this.f21148c, this.d, this.f21149e, this.f21150f, (Composer) obj2, iA2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            }
            recomposeScopeImplB0.d = function2;
        }
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifierE;
            final int i6 = 1;
            function2 = new Function2(modifier3, multipleText, z, function1, i2, i6) { // from class: cg

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f21147b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f21148c;
                public final /* synthetic */ BookingFormModuleDataUiModel.MultipleText d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f21149e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f21150f;

                {
                    this.f21147b = i6;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    switch (this.f21147b) {
                        case 0:
                            ((Integer) obj3).getClass();
                            int iA = RecomposeScopeImplKt.a(1);
                            BookingModuleMultipleTextKt.a(this.f21148c, this.d, this.f21149e, this.f21150f, (Composer) obj2, iA);
                            break;
                        default:
                            ((Integer) obj3).getClass();
                            int iA2 = RecomposeScopeImplKt.a(1);
                            BookingModuleMultipleTextKt.a(this.f21148c, this.d, this.f21149e, this.f21150f, (Composer) obj2, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }

    public static final void b(BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory, Function1 function1, Composer composer, int i2) {
        Function1 function2;
        multipleTextCategory.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1907285208);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(multipleTextCategory) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(multipleTextCategory.f54518a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(multipleTextCategory.f54520c);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("BookingMultipleTextSelectionBottomSheet"), 1.0f));
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            Modifier modifierK = PaddingKt.k(ScrollKt.d(ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("BookingMultipleTextSelectionBottomSheet"), 1.0f, false), ScrollKt.b(gapComposerH), false, 14), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierM = PaddingKt.m(n00.e(gapComposerH, modifierC2, function7, "BookingMultipleTextSelectionBottomSheet", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new re(16);
                gapComposerH.q(objX2);
            }
            boolean z = false;
            TextKt.c(multipleTextCategory.f54519b, SemanticsModifierKt.b(modifierM, false, (Function1) objX2), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(LVAppDesignKitTheme.n(gapComposerH).f48426f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), gapComposerH, 0, 0, 131068);
            FlowLayoutKt.a(tr.d("BookingMultipleTextSelectionBottomSheet", 1.0f), Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), null, 0, 0, ComposableLambdaKt.b(-707773257, new lc(1, mutableState), gapComposerH), gapComposerH, 1572870, 56);
            gapComposerH = gapComposerH;
            Modifier modifierK2 = PaddingKt.k(PaddingKt.k(o60.d(gapComposerH, true, "BookingMultipleTextSelectionBottomSheet", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_confirm_cta);
            if ((i3 & 112) == 32) {
                z = true;
            }
            boolean zK2 = z | gapComposerH.K(mutableState);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                function2 = function1;
                objX3 = new o8(function2, mutableState, 4);
                gapComposerH.q(objX3);
            } else {
                function2 = function1;
            }
            LVButtonKt.b(0, 504, gapComposerH, modifierK2, configurationButton, null, null, strC, (Function0) objX3, false, false, false);
            gapComposerH.Z(true);
        } else {
            function2 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0((Object) multipleTextCategory, function2, i2, 17);
        }
    }
}
