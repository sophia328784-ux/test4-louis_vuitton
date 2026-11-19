package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0016\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0082\u0001\u0016\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-¨\u0006.À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "", "ToOptionsPage", "ToMyInformationPage", "ToAddressBookPage", "ToInboxPage", "ToCareServicesPage", "ToRepairDetailPage", "ToRepairPreliminaryAssessmentConfirmationPage", "ToRepairAddressConfirmationPage", "ToRepairAwaitingPaymentPage", "ToOsaPage", "ToMyExperiencesPage", "ToOrdersPage", "ToOrderDetailPage", "ToCertificatesPage", "ToConnectivityPage", "ToExclusiveSalesPage", "ToExclusiveProductPage", "ToLVPassPage", "ToExclusiveCategoryPage", "ToMyIcons", "ToImmersiveArticlePage", "ToEditAvatarPage", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToAddressBookPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCareServicesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToEditAvatarPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToInboxPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToLVPassPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyExperiencesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyIcons;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyInformationPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrderDetailPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrdersPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOsaPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAddressConfirmationPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAwaitingPaymentPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairDetailPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairPreliminaryAssessmentConfirmationPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MyLvDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToAddressBookPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAddressBookPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToAddressBookPage f59237a = new ToAddressBookPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToAddressBookPage);
        }

        public final int hashCode() {
            return 1528916919;
        }

        public final String toString() {
            return "ToAddressBookPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCareServicesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCareServicesPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToCareServicesPage f59238a = new ToCareServicesPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToCareServicesPage);
        }

        public final int hashCode() {
            return -2075431789;
        }

        public final String toString() {
            return "ToCareServicesPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToConnectivityPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToConnectivityPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToConnectivityPage f59240a = new ToConnectivityPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToConnectivityPage);
        }

        public final int hashCode() {
            return -1459702853;
        }

        public final String toString() {
            return "ToConnectivityPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToEditAvatarPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToEditAvatarPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToEditAvatarPage f59241a = new ToEditAvatarPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToEditAvatarPage);
        }

        public final int hashCode() {
            return 1439293767;
        }

        public final String toString() {
            return "ToEditAvatarPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveCategoryPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "", "dimId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToExclusiveCategoryPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59242a;

        public ToExclusiveCategoryPage(String str) {
            str.getClass();
            this.f59242a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToExclusiveCategoryPage) && Intrinsics.c(this.f59242a, ((ToExclusiveCategoryPage) obj).f59242a);
        }

        public final int hashCode() {
            return this.f59242a.hashCode();
        }

        public final String toString() {
            return fc.h("ToExclusiveCategoryPage(dimId=", this.f59242a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveProductPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToExclusiveProductPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59243a;

        public ToExclusiveProductPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f59243a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToExclusiveProductPage)) {
                return false;
            }
            String str = ((ToExclusiveProductPage) obj).f59243a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f59243a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f59243a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ToExclusiveProductPage(sku=", this.f59243a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToExclusiveSalesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToExclusiveSalesPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToExclusiveSalesPage f59244a = new ToExclusiveSalesPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToExclusiveSalesPage);
        }

        public final int hashCode() {
            return 1743352402;
        }

        public final String toString() {
            return "ToExclusiveSalesPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "", "articleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToImmersiveArticlePage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59245a;

        public ToImmersiveArticlePage(String str) {
            str.getClass();
            this.f59245a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToImmersiveArticlePage) && Intrinsics.c(this.f59245a, ((ToImmersiveArticlePage) obj).f59245a);
        }

        public final int hashCode() {
            return this.f59245a.hashCode();
        }

        public final String toString() {
            return fc.h("ToImmersiveArticlePage(articleKey=", this.f59245a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToInboxPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToInboxPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToInboxPage f59246a = new ToInboxPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToInboxPage);
        }

        public final int hashCode() {
            return 1380971776;
        }

        public final String toString() {
            return "ToInboxPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToLVPassPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLVPassPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToLVPassPage f59247a = new ToLVPassPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToLVPassPage);
        }

        public final int hashCode() {
            return -1257153441;
        }

        public final String toString() {
            return "ToLVPassPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyExperiencesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToMyExperiencesPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToMyExperiencesPage f59248a = new ToMyExperiencesPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToMyExperiencesPage);
        }

        public final int hashCode() {
            return -1941754121;
        }

        public final String toString() {
            return "ToMyExperiencesPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyIcons;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToMyIcons implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToMyIcons f59249a = new ToMyIcons();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToMyIcons);
        }

        public final int hashCode() {
            return -49813927;
        }

        public final String toString() {
            return "ToMyIcons";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyInformationPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToMyInformationPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToMyInformationPage f59250a = new ToMyInformationPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToMyInformationPage);
        }

        public final int hashCode() {
            return 1516480090;
        }

        public final String toString() {
            return "ToMyInformationPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOptionsPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOptionsPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToOptionsPage f59251a = new ToOptionsPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToOptionsPage);
        }

        public final int hashCode() {
            return -1179974056;
        }

        public final String toString() {
            return "ToOptionsPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrderDetailPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "", "transactionId", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "item", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOrderDetailPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59252a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TransactionItemUiModel f59253b;

        public ToOrderDetailPage(String str, TransactionItemUiModel transactionItemUiModel) {
            str.getClass();
            transactionItemUiModel.getClass();
            this.f59252a = str;
            this.f59253b = transactionItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToOrderDetailPage)) {
                return false;
            }
            ToOrderDetailPage toOrderDetailPage = (ToOrderDetailPage) obj;
            return Intrinsics.c(this.f59252a, toOrderDetailPage.f59252a) && Intrinsics.c(this.f59253b, toOrderDetailPage.f59253b);
        }

        public final int hashCode() {
            return this.f59253b.hashCode() + (this.f59252a.hashCode() * 31);
        }

        public final String toString() {
            return "ToOrderDetailPage(transactionId=" + this.f59252a + ", item=" + this.f59253b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOrdersPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOrdersPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToOrdersPage f59254a = new ToOrdersPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToOrdersPage);
        }

        public final int hashCode() {
            return -1192924759;
        }

        public final String toString() {
            return "ToOrdersPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToOsaPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOsaPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToOsaPage f59255a = new ToOsaPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToOsaPage);
        }

        public final int hashCode() {
            return 1575003319;
        }

        public final String toString() {
            return "ToOsaPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAddressConfirmationPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairAddressConfirmationPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59256a;

        public ToRepairAddressConfirmationPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f59256a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairAddressConfirmationPage)) {
                return false;
            }
            String str = ((ToRepairAddressConfirmationPage) obj).f59256a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59256a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59256a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairAddressConfirmationPage(careServiceId=", this.f59256a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairAwaitingPaymentPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairAwaitingPaymentPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59257a;

        public ToRepairAwaitingPaymentPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f59257a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairAwaitingPaymentPage)) {
                return false;
            }
            String str = ((ToRepairAwaitingPaymentPage) obj).f59257a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59257a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59257a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairAwaitingPaymentPage(careServiceId=", this.f59257a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairDetailPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairDetailPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59258a;

        public ToRepairDetailPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f59258a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairDetailPage)) {
                return false;
            }
            String str = ((ToRepairDetailPage) obj).f59258a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59258a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59258a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairDetailPage(careServiceId=", this.f59258a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToRepairPreliminaryAssessmentConfirmationPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "careServiceId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRepairPreliminaryAssessmentConfirmationPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59259a;

        public ToRepairPreliminaryAssessmentConfirmationPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f59259a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToRepairPreliminaryAssessmentConfirmationPage)) {
                return false;
            }
            String str = ((ToRepairPreliminaryAssessmentConfirmationPage) obj).f59259a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59259a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f59259a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("ToRepairPreliminaryAssessmentConfirmationPage(careServiceId=", this.f59259a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCertificatesPage;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;", "", "certificateId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCertificatesPage implements MyLvDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f59239a;

        public /* synthetic */ ToCertificatesPage(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToCertificatesPage) && Intrinsics.c(this.f59239a, ((ToCertificatesPage) obj).f59239a);
        }

        public final int hashCode() {
            String str = this.f59239a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("ToCertificatesPage(certificateId=", this.f59239a, ")");
        }

        public ToCertificatesPage(String str) {
            this.f59239a = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ToCertificatesPage() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }
}
