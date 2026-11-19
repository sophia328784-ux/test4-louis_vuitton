package com.vuitton.android.presentation.screen.booking.details.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.details.components.BookingCarouselKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
import defpackage.a;
import defpackage.cf;
import defpackage.db;
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
public abstract class BookingCarouselKt {
    public static final void a(Modifier modifier, final List list, final String str, final Function1 function1, Composer composer, final int i2) {
        GapComposer gapComposer;
        final Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingCarousel-X0wkCjc");
        }
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1604701476);
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            final DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BookingCarousel-X0wkCjc");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (list.isEmpty()) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i4 = 0;
                function2 = new Function2() { // from class: bf
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i5 = i4;
                        int i6 = i2;
                        switch (i5) {
                            case 0:
                                ((Integer) obj2).getClass();
                                BookingCarouselKt.a(dTFunctionNameModifier, list, str, function1, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1));
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                BookingCarouselKt.a(dTFunctionNameModifier, list, str, function1, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                modifier2 = dTFunctionNameModifier;
                Iterator it = list.iterator();
                int i5 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i5 = -1;
                        break;
                    }
                    String str2 = ((BookingUiModel) it.next()).f54614a;
                    BookingId.Companion companion = BookingId.INSTANCE;
                    if (str2.equals(str)) {
                        break;
                    } else {
                        i5++;
                    }
                }
                if (i5 < 0) {
                    i5 = 0;
                }
                boolean zY = gapComposerH.y(list);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new db(list, 1);
                    gapComposerH.q(objX);
                }
                PagerState pagerStateB = PagerStateKt.b(i5, (Function0) objX, gapComposerH, 0, 2);
                boolean zK = gapComposerH.K(pagerStateB) | ((i3 & 7168) == 2048) | gapComposerH.y(list);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new BookingCarouselKt$BookingCarousel$2$1(pagerStateB, list, null, function1);
                    gapComposerH.q(objX2);
                }
                EffectsKt.g(pagerStateB, list, (Function2) objX2, gapComposerH);
                gapComposer = gapComposerH;
                PagerKt.a(pagerStateB, modifier2.o(SizeKt.f5052c), PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48416e, 2), null, 0, LVAppDesignKitTheme.l(gapComposerH).f48415c, null, null, false, false, null, null, null, ComposableLambdaKt.b(692035493, new cf(list, pagerStateB, 0), gapComposerH), gapComposer, 0, 24576, 16344);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            recomposeScopeImplB0.d = function2;
        }
        gapComposer = gapComposerH;
        gapComposer.D();
        modifier2 = modifierE;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final int i6 = 1;
            function2 = new Function2() { // from class: bf
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i7 = i6;
                    int i8 = i2;
                    switch (i7) {
                        case 0:
                            ((Integer) obj2).getClass();
                            BookingCarouselKt.a(modifier2, list, str, function1, (Composer) obj, RecomposeScopeImplKt.a(i8 | 1));
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            BookingCarouselKt.a(modifier2, list, str, function1, (Composer) obj, RecomposeScopeImplKt.a(i8 | 1));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }
}
