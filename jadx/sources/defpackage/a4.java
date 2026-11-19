package defpackage;

import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.DependencyDao_Impl;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.mylv.components.ComposableSingletons$MyLvComposableKt;
import com.vuitton.foundation.model.domain.model.product.LastViewedProduct;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a4 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f397c;

    public /* synthetic */ a4(String str, int i2) {
        this.f396b = i2;
        this.f397c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        int i2 = this.f396b;
        boolean z = false;
        String str = this.f397c;
        switch (i2) {
            case 0:
                LastViewedProduct lastViewedProduct = (LastViewedProduct) obj;
                lastViewedProduct.getClass();
                String str2 = lastViewedProduct.f67896a;
                SkuId.Companion companion = SkuId.INSTANCE;
                return Boolean.valueOf(str2.equals(str));
            case 1:
                LastViewedProduct lastViewedProduct2 = (LastViewedProduct) obj;
                lastViewedProduct2.getClass();
                return Boolean.valueOf(lastViewedProduct2.f67897b.equals(str));
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver2, LiveRegionMode.f10282c);
                SemanticsPropertiesKt.n(semanticsPropertyReceiver2, str);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver3, str);
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver4, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver4, 0);
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver5, str);
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver6, str);
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver6, 0);
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver7, str);
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver8, str);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver9.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver9, str);
                return Unit.f71739a;
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver10.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver10, str);
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver10, 0);
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver11 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver11.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver11, str);
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver12 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver12.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver12, str);
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver13 = (SemanticsPropertyReceiver) obj;
                int i3 = BookingReservationScreenKt.f54457b;
                semanticsPropertyReceiver13.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver13, str);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver14 = (SemanticsPropertyReceiver) obj;
                int i4 = BookingReservationScreenKt.f54457b;
                semanticsPropertyReceiver14.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver14, str);
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver14, 0);
                return Unit.f71739a;
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver15 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver15.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver15, str);
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver15, 0);
                return Unit.f71739a;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver16 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver16.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver16, str);
                return Unit.f71739a;
            case 18:
                SemanticsPropertyReceiver semanticsPropertyReceiver17 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver17.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver17, str);
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver17, 0);
                return Unit.f71739a;
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver18 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver18.getClass();
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver18, LiveRegionMode.f10282c);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver18, str);
                return Unit.f71739a;
            case 20:
                BottomSheetDefaults bottomSheetDefaults = BottomSheetDefaults.f6575a;
                SemanticsPropertiesKt.i((SemanticsPropertyReceiver) obj, str);
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver19 = (SemanticsPropertyReceiver) obj;
                ComposableSingletons$MyLvComposableKt composableSingletons$MyLvComposableKt = ComposableSingletons$MyLvComposableKt.f59385a;
                semanticsPropertyReceiver19.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver19, str);
                SemanticsPropertiesKt.d(semanticsPropertyReceiver19);
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver20 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver20.getClass();
                SemanticsPropertiesKt.n(semanticsPropertyReceiver20, str);
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver21 = (SemanticsPropertyReceiver) obj;
                DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver21, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver21, str);
                return Unit.f71739a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver22 = (SemanticsPropertyReceiver) obj;
                float f2 = DatePickerKt.f6780a;
                SemanticsPropertiesKt.t(semanticsPropertyReceiver22, new AnnotatedString(str, null, 2, null));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver22, 0);
                return Unit.f71739a;
            case 25:
                SemanticsPropertyReceiver semanticsPropertyReceiver23 = (SemanticsPropertyReceiver) obj;
                float f3 = DatePickerKt.f6780a;
                SemanticsPropertiesKt.t(semanticsPropertyReceiver23, new AnnotatedString(str, null, 2, null));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver23, 0);
                return Unit.f71739a;
            case 26:
                SemanticsPropertiesKt.n((SemanticsPropertyReceiver) obj, str);
                return Unit.f71739a;
            case 27:
                SemanticsPropertyReceiver semanticsPropertyReceiver24 = (SemanticsPropertyReceiver) obj;
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver24, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver24, str);
                return Unit.f71739a;
            case 28:
                SemanticsPropertiesKt.n((SemanticsPropertyReceiver) obj, str);
                return Unit.f71739a;
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                DependencyDao_Impl.Companion companion2 = DependencyDao_Impl.f20484c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?");
                try {
                    sQLiteStatementT1.A(1, str);
                    if (sQLiteStatementT1.Q1() && ((int) sQLiteStatementT1.getLong(0)) != 0) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                } finally {
                    sQLiteStatementT1.close();
                }
        }
    }
}
