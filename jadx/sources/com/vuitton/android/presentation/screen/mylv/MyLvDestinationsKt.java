package com.vuitton.android.presentation.screen.mylv;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarActivity;
import com.vuitton.android.presentation.screen.account.inbox.InboxActivity;
import com.vuitton.android.presentation.screen.account.lvpass.LVPassActivity;
import com.vuitton.android.presentation.screen.account.myicons.MyIconsActivity;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity;
import com.vuitton.android.presentation.screen.booking.MyExperiencesActivity;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityActivity;
import com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesActivity;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.options.OptionsActivity;
import com.vuitton.android.presentation.screen.orders.OrderActivity;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyLvDestinationsKt {
    public static final Intent a(MyLvDestinations myLvDestinations, Context context) {
        myLvDestinations.getClass();
        context.getClass();
        if (myLvDestinations.equals(MyLvDestinations.ToOptionsPage.f59251a)) {
            OptionsActivity.u.getClass();
            return new Intent(context, (Class<?>) OptionsActivity.class);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToMyInformationPage.f59250a)) {
            MyInformationActivity.r.getClass();
            return new Intent(context, (Class<?>) MyInformationActivity.class);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToAddressBookPage.f59237a)) {
            AddressBookActivity.q.getClass();
            return new Intent(context, (Class<?>) AddressBookActivity.class);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToInboxPage.f59246a)) {
            InboxActivity.s.getClass();
            return new Intent(context, (Class<?>) InboxActivity.class);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToCareServicesPage.f59238a)) {
            return RepairActivity.Companion.b(RepairActivity.t, context, 6);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToRepairDetailPage) {
            RepairActivity.Companion companion = RepairActivity.t;
            String str = ((MyLvDestinations.ToRepairDetailPage) myLvDestinations).f59258a;
            companion.getClass();
            return RepairActivity.Companion.a(context, "REPAIR_DETAIL", str);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToRepairPreliminaryAssessmentConfirmationPage) {
            RepairActivity.Companion companion2 = RepairActivity.t;
            String str2 = ((MyLvDestinations.ToRepairPreliminaryAssessmentConfirmationPage) myLvDestinations).f59259a;
            companion2.getClass();
            return RepairActivity.Companion.a(context, "PRELIMINARY_ASSESSMENT_CONFIRMATION", str2);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToRepairAddressConfirmationPage) {
            RepairActivity.Companion companion3 = RepairActivity.t;
            String str3 = ((MyLvDestinations.ToRepairAddressConfirmationPage) myLvDestinations).f59256a;
            companion3.getClass();
            return RepairActivity.Companion.a(context, "ADDRESS_CONFIRMATION", str3);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToRepairAwaitingPaymentPage) {
            RepairActivity.Companion companion4 = RepairActivity.t;
            String str4 = ((MyLvDestinations.ToRepairAwaitingPaymentPage) myLvDestinations).f59257a;
            companion4.getClass();
            return RepairActivity.Companion.a(context, "PAYMENT_CONFIRMATION", str4);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToOsaPage.f59255a)) {
            OsaActivity.Companion companion5 = OsaActivity.u;
            OsaRoutesName osaRoutesName = OsaRoutesName.LIST;
            OsaOriginScreen osaOriginScreen = OsaOriginScreen.APPOINTMENT_LIST;
            companion5.getClass();
            return OsaActivity.Companion.a(context, osaRoutesName, osaOriginScreen);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToMyExperiencesPage.f59248a)) {
            MyExperiencesActivity.r.getClass();
            return new Intent(context, (Class<?>) MyExperiencesActivity.class);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToOrdersPage.f59254a)) {
            OrderActivity.q.getClass();
            return OrderActivity.Companion.a(context, "list", null, null);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToOrderDetailPage) {
            OrderActivity.Companion companion6 = OrderActivity.q;
            MyLvDestinations.ToOrderDetailPage toOrderDetailPage = (MyLvDestinations.ToOrderDetailPage) myLvDestinations;
            String str5 = toOrderDetailPage.f59252a;
            TransactionItemUiModel transactionItemUiModel = toOrderDetailPage.f59253b;
            companion6.getClass();
            return OrderActivity.Companion.a(context, "detail", str5, transactionItemUiModel);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToCertificatesPage) {
            return CertificateActivity.Companion.a(CertificateActivity.x, context, ((MyLvDestinations.ToCertificatesPage) myLvDestinations).f59239a, 4);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToConnectivityPage.f59240a)) {
            ConnectivityActivity.q.getClass();
            return new Intent(context, (Class<?>) ConnectivityActivity.class);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToExclusiveSalesPage.f59244a)) {
            ExclusiveSalesActivity.q.getClass();
            return new Intent(context, (Class<?>) ExclusiveSalesActivity.class);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToExclusiveProductPage) {
            return PdpActivity.Companion.a(PdpActivity.D, context, ((MyLvDestinations.ToExclusiveProductPage) myLvDestinations).f59243a, true, null, null, null, false, 120);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToLVPassPage.f59247a)) {
            LVPassActivity.s.getClass();
            return LVPassActivity.Companion.a(context);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToExclusiveCategoryPage) {
            ExclusivePLPActivity.Companion companion7 = ExclusivePLPActivity.p;
            String str6 = ((MyLvDestinations.ToExclusiveCategoryPage) myLvDestinations).f59242a;
            companion7.getClass();
            return ExclusivePLPActivity.Companion.a(context, str6);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToMyIcons.f59249a)) {
            MyIconsActivity.q.getClass();
            return new Intent(context, (Class<?>) MyIconsActivity.class);
        }
        if (myLvDestinations instanceof MyLvDestinations.ToImmersiveArticlePage) {
            return ImmersiveArticleActivity.Companion.a(ImmersiveArticleActivity.H, context, ((MyLvDestinations.ToImmersiveArticlePage) myLvDestinations).f59245a, null, null, null, null, 124);
        }
        if (myLvDestinations.equals(MyLvDestinations.ToEditAvatarPage.f59241a)) {
            EditAvatarActivity.q.getClass();
            return new Intent(context, (Class<?>) EditAvatarActivity.class);
        }
        v40.g();
        return null;
    }
}
