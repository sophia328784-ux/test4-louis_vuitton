package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import com.kizitonwose.calendar.core.CalendarDay;
import com.kizitonwose.calendar.core.DayPosition;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.components.precompliance.PrivacyPreComplianceComposableKt;
import java.time.LocalDate;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class j50 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f71303c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71305f;
    public final /* synthetic */ Function g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71306h;

    public /* synthetic */ j50(Object obj, boolean z, Object obj2, Object obj3, Function function, Object obj4, int i2) {
        this.f71302b = i2;
        this.d = obj;
        this.f71303c = z;
        this.f71304e = obj2;
        this.f71305f = obj3;
        this.g = function;
        this.f71306h = obj4;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        Object k3Var;
        List list;
        LocalDate localDate;
        int i2 = this.f71302b;
        int i3 = 14;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f71306h;
        Function function = this.g;
        Object obj6 = this.f71305f;
        Object obj7 = this.f71304e;
        Object obj8 = this.d;
        switch (i2) {
            case 0:
                LocalDate localDate2 = (LocalDate) obj8;
                List list2 = (List) obj7;
                Locale locale = (Locale) obj6;
                Function1 function1 = (Function1) function;
                MutableState mutableState = (MutableState) obj5;
                CalendarDay calendarDay = (CalendarDay) obj2;
                Composer composer = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                float f2 = LVCalendarKt.f50961a;
                ((BoxScope) obj).getClass();
                calendarDay.getClass();
                if ((iIntValue & 48) == 0) {
                    iIntValue |= composer.K(calendarDay) ? 32 : 16;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 145) != 144)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (calendarDay.f35956c == DayPosition.MonthDate) {
                        composer.L(-1682503843);
                        localDate2.getClass();
                        LocalDate localDate3 = (LocalDate) mutableState.getF10755b();
                        if (localDate3 == null) {
                            localDate3 = null;
                            if (this.f71303c && list2 != null) {
                                localDate3 = (LocalDate) CollectionsKt.firstOrNull(list2);
                            }
                        }
                        LocalDate localDate4 = localDate3;
                        boolean zY = composer.y(localDate2) | composer.y(list2) | composer.K(function1);
                        Object objX = composer.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            list = list2;
                            localDate = localDate2;
                            k3Var = new k3(17, localDate, list, function1, mutableState, false);
                            composer.q(k3Var);
                        } else {
                            k3Var = objX;
                            list = list2;
                            localDate = localDate2;
                        }
                        LVCalendarKt.c(calendarDay, localDate, localDate4, list, locale, (Function1) k3Var, composer, (iIntValue >> 3) & 14);
                        composer.F();
                    } else {
                        composer.L(-1681740809);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                PrivacyViewModelImpl privacyViewModelImpl = (PrivacyViewModelImpl) obj8;
                NavHostController navHostController = (NavHostController) obj7;
                Function0 function0 = (Function0) obj6;
                Function0 function2 = (Function0) function;
                Function0 function3 = (Function0) obj5;
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                boolean zY2 = composer2.y(navHostController) | composer2.K(function0);
                Object objX2 = composer2.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new np0(navHostController, function0, 1);
                    composer2.q(objX2);
                }
                Function0 function4 = (Function0) objX2;
                boolean zY3 = composer2.y(navHostController);
                Object objX3 = composer2.x();
                if (zY3 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new yj(navHostController, i3);
                    composer2.q(objX3);
                }
                PrivacyPreComplianceComposableKt.a(privacyViewModelImpl, this.f71303c, function4, function2, (Function0) objX3, function3, composer2, 0);
                break;
        }
        return Unit.f71739a;
    }
}
