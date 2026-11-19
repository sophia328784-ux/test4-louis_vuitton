package com.vuitton.android.presentation.screen.mylv;

import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.redirectlink.RedirectionArgs;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.options.settings.SettingsActivity;
import com.vuitton.android.presentation.screen.orders.OrderActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MyLvDeeplinkRouter {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59236a;

        static {
            int[] iArr = new int[MyLvRoutes$Routes.values().length];
            try {
                iArr[MyLvRoutes$Routes.MY_PROFILE_SETTINGS_FROM_DEEPLINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_MY_PROFILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_MY_ORDERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_ORDER_DETAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_WISH_LIST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_CERTIFICATES_LIST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_CERTIFICATES_DETAIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_SECTION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_CATEGORY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_EXCLUSIVE_DETAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_LVPASS_QRCODE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[MyLvRoutes$Routes.REDIRECTION_PRIVACY_SETTINGS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            f59236a = iArr;
        }
    }

    @Inject
    public MyLvDeeplinkRouter() {
    }

    public static void a(AppCompatActivity appCompatActivity, MyLvRoutes$Routes myLvRoutes$Routes, RedirectionArgs redirectionArgs) {
        String str;
        myLvRoutes$Routes.getClass();
        int[] iArr = WhenMappings.f59236a;
        switch (iArr[myLvRoutes$Routes.ordinal()]) {
            case 1:
                SettingsActivity.p.getClass();
                appCompatActivity.startActivity(new Intent(appCompatActivity, (Class<?>) SettingsActivity.class));
                break;
            case 2:
                MyInformationActivity.r.getClass();
                appCompatActivity.startActivity(new Intent(appCompatActivity, (Class<?>) MyInformationActivity.class));
                break;
            case 3:
                OrderActivity.q.getClass();
                appCompatActivity.startActivity(OrderActivity.Companion.a(appCompatActivity, "list", null, null));
                break;
            case 4:
                RedirectionArgs.OrderDetail orderDetail = redirectionArgs instanceof RedirectionArgs.OrderDetail ? (RedirectionArgs.OrderDetail) redirectionArgs : null;
                str = orderDetail != null ? orderDetail.f52041a : null;
                if (str != null) {
                    OrderActivity.q.getClass();
                    Intent intent = new Intent(appCompatActivity, (Class<?>) OrderActivity.class);
                    intent.putExtra("rootScreen", "list");
                    intent.putExtra("shippingGroupId", str);
                    appCompatActivity.startActivity(intent);
                }
                break;
            case 5:
                appCompatActivity.startActivity(WishlistActivity.Companion.a(WishlistActivity.t, appCompatActivity, false, null, null, 14));
                break;
            case 6:
                appCompatActivity.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToCertificatesPage(null, 1, null), appCompatActivity));
                break;
            case 7:
                RedirectionArgs.Certificate certificate = redirectionArgs instanceof RedirectionArgs.Certificate ? (RedirectionArgs.Certificate) redirectionArgs : null;
                appCompatActivity.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToCertificatesPage(certificate != null ? certificate.f52039a : null), appCompatActivity));
                break;
            case 8:
                appCompatActivity.startActivity(CertificateActivity.Companion.a(CertificateActivity.x, appCompatActivity, null, 2));
                break;
            case 9:
            case 10:
            case 11:
                switch (iArr[myLvRoutes$Routes.ordinal()]) {
                    case 9:
                        appCompatActivity.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToExclusiveSalesPage.f59244a, appCompatActivity));
                        break;
                    case 10:
                        RedirectionArgs.Exclusive exclusive = redirectionArgs instanceof RedirectionArgs.Exclusive ? (RedirectionArgs.Exclusive) redirectionArgs : null;
                        str = exclusive != null ? exclusive.f52040a : null;
                        if (str != null) {
                            appCompatActivity.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToExclusiveCategoryPage(str), appCompatActivity));
                        }
                        break;
                    case 11:
                        RedirectionArgs.Exclusive exclusive2 = redirectionArgs instanceof RedirectionArgs.Exclusive ? (RedirectionArgs.Exclusive) redirectionArgs : null;
                        String str2 = exclusive2 != null ? exclusive2.f52040a : null;
                        if (str2 != null) {
                            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                            appCompatActivity.startActivity(MyLvDestinationsKt.a(new MyLvDestinations.ToExclusiveProductPage(str2, null), appCompatActivity));
                        }
                        break;
                }
                break;
            case 12:
                LVPassActivity.s.getClass();
                appCompatActivity.startActivity(LVPassActivity.Companion.a(appCompatActivity));
                break;
            case 13:
                SettingsActivity.p.getClass();
                appCompatActivity.startActivity(new Intent(appCompatActivity, (Class<?>) SettingsActivity.class));
                break;
        }
    }
}
