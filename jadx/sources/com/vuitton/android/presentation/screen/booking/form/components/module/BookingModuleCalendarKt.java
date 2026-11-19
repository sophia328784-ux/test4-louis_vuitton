package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleCalendarKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import defpackage.a;
import defpackage.n00;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleCalendarKt {
    public static final void a(Modifier modifier, final BookingFormModuleDataUiModel.Calendar calendar, final boolean z, final Function1 function1, Composer composer, final int i2) {
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingCalendarModule");
        }
        calendar.getClass();
        List list = calendar.f54507a;
        function1.getClass();
        GapComposer gapComposerH = composer.h(1625554992);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(calendar) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Locale locale = ((androidx.compose.ui.text.intl.Locale) gapComposerH.k(CompositionLocalsKt.p)).f10871a;
            if (z || !list.isEmpty()) {
                Modifier modifierB = AnimationModifierKt.b(SizeKt.d(modifierE, 1.0f), AnimationSpecKt.c(200, 0, null, 6), 2);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                DividerKt.a(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "BookingCalendarModule", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 6, 2);
                if (z) {
                    gapComposerH.L(-790412693);
                    BookingModuleSkeletonKt.a(null, gapComposerH, 0);
                    gapComposerH.Z(false);
                    z2 = true;
                } else {
                    gapComposerH.L(-790347841);
                    List list2 = list;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((LocalDateTime) it.next()).toLocalDate());
                    }
                    LocalDateTime localDateTime = calendar.f54508b;
                    z2 = true;
                    LVCalendarKt.d(null, arrayList, localDateTime != null ? localDateTime.toLocalDate() : null, locale, false, true, function1, gapComposerH, ((i3 << 9) & 3670016) | 221184, 1);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z2);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            } else {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final Modifier modifier2 = modifierE;
                final int i4 = 0;
                function2 = new Function2(modifier2, calendar, z, function1, i2, i4) { // from class: uf

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f80299b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f80300c;
                    public final /* synthetic */ BookingFormModuleDataUiModel.Calendar d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ boolean f80301e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function1 f80302f;

                    {
                        this.f80299b = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (this.f80299b) {
                            case 0:
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(1);
                                BookingModuleCalendarKt.a(this.f80300c, this.d, this.f80301e, this.f80302f, (Composer) obj, iA);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                int iA2 = RecomposeScopeImplKt.a(1);
                                BookingModuleCalendarKt.a(this.f80300c, this.d, this.f80301e, this.f80302f, (Composer) obj, iA2);
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
            final int i5 = 1;
            function2 = new Function2(modifier3, calendar, z, function1, i2, i5) { // from class: uf

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f80299b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f80300c;
                public final /* synthetic */ BookingFormModuleDataUiModel.Calendar d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f80301e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f80302f;

                {
                    this.f80299b = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    switch (this.f80299b) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(1);
                            BookingModuleCalendarKt.a(this.f80300c, this.d, this.f80301e, this.f80302f, (Composer) obj, iA);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            int iA2 = RecomposeScopeImplKt.a(1);
                            BookingModuleCalendarKt.a(this.f80300c, this.d, this.f80301e, this.f80302f, (Composer) obj, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }
}
