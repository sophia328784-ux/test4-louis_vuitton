package com.vuitton.android.presentation.screen.services;

import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.redirectlink.RedirectionArgs;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceRoutes$Routes;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ServicesDeeplinkRouter {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64290a;

        static {
            int[] iArr = new int[ServicesRoutes$Routes.values().length];
            try {
                iArr[ServicesRoutes$Routes.SERVICES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServicesRoutes$Routes.REDIRECTION_REPAIR_SECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServicesRoutes$Routes.REDIRECTION_REPAIR_CREATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ServicesRoutes$Routes.REDIRECTION_REPAIR_DETAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ServicesRoutes$Routes.REDIRECTION_OSA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ServicesRoutes$Routes.REDIRECTION_OSA_MY_APPOINTMENTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f64290a = iArr;
        }
    }

    @Inject
    public ServicesDeeplinkRouter() {
    }

    public static void a(AppCompatActivity appCompatActivity, ServicesRoutes$Routes servicesRoutes$Routes, RedirectionArgs redirectionArgs) {
        servicesRoutes$Routes.getClass();
        switch (WhenMappings.f64290a[servicesRoutes$Routes.ordinal()]) {
            case 1:
                appCompatActivity.startActivity(MainActivity.Companion.a(MainActivity.L, appCompatActivity, MainTopLevelDestination.SERVICES, null, null, null, 28));
                break;
            case 2:
                CareServiceRoutes$Routes careServiceRoutes$Routes = CareServiceRoutes$Routes.REPAIR_LIST;
                RedirectionArgs.Repair repair = redirectionArgs instanceof RedirectionArgs.Repair ? (RedirectionArgs.Repair) redirectionArgs : null;
                b(appCompatActivity, careServiceRoutes$Routes, repair != null ? repair.f52042a : null);
                break;
            case 3:
                CareServiceRoutes$Routes careServiceRoutes$Routes2 = CareServiceRoutes$Routes.REPAIR_CREATE;
                RedirectionArgs.Repair repair2 = redirectionArgs instanceof RedirectionArgs.Repair ? (RedirectionArgs.Repair) redirectionArgs : null;
                b(appCompatActivity, careServiceRoutes$Routes2, repair2 != null ? repair2.f52042a : null);
                break;
            case 4:
                CareServiceRoutes$Routes careServiceRoutes$Routes3 = CareServiceRoutes$Routes.REPAIR_DETAIL;
                RedirectionArgs.Repair repair3 = redirectionArgs instanceof RedirectionArgs.Repair ? (RedirectionArgs.Repair) redirectionArgs : null;
                b(appCompatActivity, careServiceRoutes$Routes3, repair3 != null ? repair3.f52042a : null);
                break;
            case 5:
                OsaActivity.Companion companion = OsaActivity.u;
                OsaRoutesName osaRoutesName = OsaRoutesName.LOCATION_FORM;
                OsaOriginScreen osaOriginScreen = OsaOriginScreen.APP_LINK;
                companion.getClass();
                appCompatActivity.startActivity(OsaActivity.Companion.a(appCompatActivity, osaRoutesName, osaOriginScreen));
                break;
            case 6:
                OsaActivity.Companion companion2 = OsaActivity.u;
                OsaRoutesName osaRoutesName2 = OsaRoutesName.LIST;
                OsaOriginScreen osaOriginScreen2 = OsaOriginScreen.APP_LINK;
                companion2.getClass();
                appCompatActivity.startActivity(OsaActivity.Companion.a(appCompatActivity, osaRoutesName2, osaOriginScreen2));
                break;
            default:
                v40.g();
                break;
        }
    }

    public static void b(AppCompatActivity appCompatActivity, CareServiceRoutes$Routes careServiceRoutes$Routes, String str) {
        RepairActivity.Companion companion = RepairActivity.t;
        String strName = careServiceRoutes$Routes != null ? careServiceRoutes$Routes.name() : null;
        companion.getClass();
        appCompatActivity.startActivity(RepairActivity.Companion.a(appCompatActivity, strName, str));
    }
}
