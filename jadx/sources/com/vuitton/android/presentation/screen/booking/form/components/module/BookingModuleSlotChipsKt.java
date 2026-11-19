package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleSlotChipsKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import defpackage.a;
import defpackage.f1;
import defpackage.i1;
import defpackage.n00;
import defpackage.t;
import defpackage.tr;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleSlotChipsKt {
    public static final void a(Modifier modifier, final BookingFormModuleDataUiModel.Slot slot, final boolean z, final Function1 function1, Composer composer, final int i2) {
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        if (modifier != null) {
            modifier = a.e(modifier, "BookingModuleSlotChips");
        }
        final Modifier modifier2 = modifier;
        slot.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1537455322);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(slot) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BookingFormModuleDataUiModel.SlotDate slotDate = slot.f54528b;
            BookingFormModuleDataUiModel.TimeSlot timeSlot = slot.f54529c;
            if (slotDate == null) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i4 = 0;
                function2 = new Function2(modifier2, slot, z, function1, i2, i4) { // from class: dg

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f68574b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f68575c;
                    public final /* synthetic */ BookingFormModuleDataUiModel.Slot d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ boolean f68576e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function1 f68577f;

                    {
                        this.f68574b = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (this.f68574b) {
                            case 0:
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(1);
                                BookingModuleSlotChipsKt.a(this.f68575c, this.d, this.f68576e, this.f68577f, (Composer) obj, iA);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                int iA2 = RecomposeScopeImplKt.a(1);
                                BookingModuleSlotChipsKt.a(this.f68575c, this.d, this.f68576e, this.f68577f, (Composer) obj, iA2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
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
                if (z) {
                    gapComposerH.L(1625072505);
                    c(gapComposerH, 0);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1625158127);
                    List list = slotDate.f54531b;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                gapComposerH.L(1625524082);
                                gapComposerH.Z(false);
                                break;
                            } else if (!((BookingFormModuleDataUiModel.TimeSlot) it.next()).d) {
                                gapComposerH.L(1625208874);
                                b(StringResources_androidKt.c(gapComposerH, R.string.booking_form_time_card_morning_category), slotDate.f54531b, timeSlot != null ? timeSlot.f54533a : null, function1, gapComposerH, i3 & 7168);
                                gapComposerH.Z(false);
                                break;
                            }
                        }
                    } else {
                        gapComposerH.L(1625524082);
                        gapComposerH.Z(false);
                        break;
                    }
                    List list2 = slotDate.f54532c;
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        Iterator it2 = list2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                gapComposerH.L(1625919890);
                                gapComposerH.Z(false);
                                break;
                            } else if (!((BookingFormModuleDataUiModel.TimeSlot) it2.next()).d) {
                                gapComposerH.L(1625600838);
                                b(StringResources_androidKt.c(gapComposerH, R.string.booking_form_time_card_afternoon_category), slotDate.f54532c, timeSlot != null ? timeSlot.f54533a : null, function1, gapComposerH, i3 & 7168);
                                gapComposerH.Z(false);
                                break;
                            }
                        }
                    } else {
                        gapComposerH.L(1625919890);
                        gapComposerH.Z(false);
                        break;
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            recomposeScopeImplB0.d = function2;
        }
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i5 = 1;
            function2 = new Function2(modifier2, slot, z, function1, i2, i5) { // from class: dg

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f68574b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f68575c;
                public final /* synthetic */ BookingFormModuleDataUiModel.Slot d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f68576e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f68577f;

                {
                    this.f68574b = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    switch (this.f68574b) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(1);
                            BookingModuleSlotChipsKt.a(this.f68575c, this.d, this.f68576e, this.f68577f, (Composer) obj, iA);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            int iA2 = RecomposeScopeImplKt.a(1);
                            BookingModuleSlotChipsKt.a(this.f68575c, this.d, this.f68576e, this.f68577f, (Composer) obj, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }

    public static final void b(String str, List list, String str2, Function1 function1, Composer composer, int i2) {
        int i3;
        List list2;
        GapComposer gapComposerH = composer.h(2062066781);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            list2 = list;
            i3 |= gapComposerH.y(list2) ? 32 : 16;
        } else {
            list2 = list;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingModuleSlotPeriod");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            TextKt.c(str, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, i3 & 14, 0, 131070);
            gapComposerH = gapComposerH;
            BookingModuleGridKt.a(list2, tr.d("BookingModuleSlotPeriod", 1.0f), 0, ComposableLambdaKt.b(1980828059, new f1(str2, function1, 9), gapComposerH), gapComposerH, ((i3 >> 3) & 14) | 3120, 4);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(str, list, str2, function1, i2);
        }
    }

    public static final void c(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1810333349);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingModuleSlotPeriodSkeleton");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            LVSkeletonKt.e(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "BookingModuleSlotPeriodSkeleton", 0.1f), null, null, gapComposerH, 6, 6);
            BookingModuleGridKt.b(SizeKt.d(new DTFunctionNameModifier("BookingModuleSlotPeriodSkeleton"), 1.0f), gapComposerH, 6, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 18);
        }
    }
}
