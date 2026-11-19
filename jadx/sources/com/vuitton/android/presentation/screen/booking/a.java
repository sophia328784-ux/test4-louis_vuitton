package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.foundation.model.domain.model.booking.ExperienceId;
import defpackage.k;
import defpackage.k60;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f54368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BaseActivity f54369c;

    public /* synthetic */ a(BaseActivity baseActivity, int i2) {
        this.f54368b = i2;
        this.f54369c = baseActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f54368b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        BaseActivity baseActivity = this.f54369c;
        switch (i2) {
            case 0:
                BookingActivity bookingActivity = (BookingActivity) baseActivity;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                BookingActivity.Companion companion = BookingActivity.r;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
                    NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{new BookingRoutes.Reservation(((ExperienceId) bookingActivity.q.getF71699b()).f66755a, null, false, 6, null)}, composer);
                    boolean zY = composer.y(bookingActivity) | composer.y(context);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new k(bookingActivity, context, 16);
                        composer.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    boolean zY2 = composer.y(bookingActivity);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new BookingActivity$onCreate$1$1$2$1(0, bookingActivity, BookingActivity.class, "finish", "finish()V", 0);
                        composer.q(objX2);
                    }
                    NavBackStack.Companion companion2 = NavBackStack.INSTANCE;
                    BookingNavDisplayKt.a(navBackStackA, function1, (Function0) ((KFunction) objX2), composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                MyExperiencesActivity myExperiencesActivity = (MyExperiencesActivity) baseActivity;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                MyExperiencesActivity.Companion companion3 = MyExperiencesActivity.r;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Context context2 = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                    BookingListViewModelImpl bookingListViewModelImpl = (BookingListViewModelImpl) myExperiencesActivity.p.getF71699b();
                    NavBackStack navBackStackA2 = RememberNavBackStackKt.a(new NavKey[]{MyBookingsRoutes.List.INSTANCE}, composer2);
                    boolean zY3 = composer2.y(myExperiencesActivity) | composer2.y(context2);
                    Object objX3 = composer2.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new k60(myExperiencesActivity, context2, 15);
                        composer2.q(objX3);
                    }
                    Function1 function2 = (Function1) objX3;
                    boolean zY4 = composer2.y(myExperiencesActivity);
                    Object objX4 = composer2.x();
                    if (zY4 || objX4 == composer$Companion$Empty$1) {
                        MyExperiencesActivity$onCreate$1$1$2$1 myExperiencesActivity$onCreate$1$1$2$1 = new MyExperiencesActivity$onCreate$1$1$2$1(0, myExperiencesActivity, MyExperiencesActivity.class, "finish", "finish()V", 0);
                        composer2.q(myExperiencesActivity$onCreate$1$1$2$1);
                        objX4 = myExperiencesActivity$onCreate$1$1$2$1;
                    }
                    NavBackStack.Companion companion4 = NavBackStack.INSTANCE;
                    MyExperiencesNavDisplayKt.a(bookingListViewModelImpl, navBackStackA2, function2, (Function0) ((KFunction) objX4), composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
