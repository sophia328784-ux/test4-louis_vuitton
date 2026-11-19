package com.vuitton.android.presentation.screen.services;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\b\n\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "", "ToOsaPage", "ToWelcomePage", "ToCareServicesPage", "ToCareServicesCreatePage", "ToWebViewPage", "ToImmersiveArticlePage", "ToPersonalSelectionsPage", "ToMyExperiencesPage", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToMyExperiencesPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToPersonalSelectionsPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ServicesDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCareServicesCreatePage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToCareServicesCreatePage f64291a = new ToCareServicesCreatePage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToCareServicesCreatePage);
        }

        public final int hashCode() {
            return 1159211215;
        }

        public final String toString() {
            return "ToCareServicesCreatePage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCareServicesPage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToCareServicesPage f64292a = new ToCareServicesPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToCareServicesPage);
        }

        public final int hashCode() {
            return -2008736589;
        }

        public final String toString() {
            return "ToCareServicesPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "", "articleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToImmersiveArticlePage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64293a;

        public ToImmersiveArticlePage(String str) {
            str.getClass();
            this.f64293a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToImmersiveArticlePage) && Intrinsics.c(this.f64293a, ((ToImmersiveArticlePage) obj).f64293a);
        }

        public final int hashCode() {
            return this.f64293a.hashCode();
        }

        public final String toString() {
            return fc.h("ToImmersiveArticlePage(articleKey=", this.f64293a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToMyExperiencesPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToMyExperiencesPage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToMyExperiencesPage f64294a = new ToMyExperiencesPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToMyExperiencesPage);
        }

        public final int hashCode() {
            return 125797079;
        }

        public final String toString() {
            return "ToMyExperiencesPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToPersonalSelectionsPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPersonalSelectionsPage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPersonalSelectionsPage f64301a = new ToPersonalSelectionsPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPersonalSelectionsPage);
        }

        public final int hashCode() {
            return 367991083;
        }

        public final String toString() {
            return "ToPersonalSelectionsPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWebViewPage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64302a;

        public ToWebViewPage(String str) {
            str.getClass();
            this.f64302a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWebViewPage) && Intrinsics.c(this.f64302a, ((ToWebViewPage) obj).f64302a);
        }

        public final int hashCode() {
            return this.f64302a.hashCode();
        }

        public final String toString() {
            return fc.h("ToWebViewPage(url=", this.f64302a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWelcomePage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToWelcomePage f64303a = new ToWelcomePage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToWelcomePage);
        }

        public final int hashCode() {
            return 843371772;
        }

        public final String toString() {
            return "ToWelcomePage";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;", "Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;", "Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;", "rootScreen", "", "reason", "", "prefilledStoreCodes", "prefilledStoreName", "", "isPrefilledEditable", "Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;", "origin", "selectionId", "redirectToMyExperiencesAfterLogin", "<init>", "(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToOsaPage implements ServicesDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OsaRoutesName f64295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f64296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f64297c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f64298e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final OsaOriginScreen f64299f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f64300h;

        public /* synthetic */ ToOsaPage(OsaRoutesName osaRoutesName, String str, List list, String str2, boolean z, OsaOriginScreen osaOriginScreen, String str3, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(osaRoutesName, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : list, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? null : osaOriginScreen, (i2 & 64) != 0 ? null : str3, (i2 & 128) != 0 ? false : z2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToOsaPage)) {
                return false;
            }
            ToOsaPage toOsaPage = (ToOsaPage) obj;
            return this.f64295a == toOsaPage.f64295a && Intrinsics.c(this.f64296b, toOsaPage.f64296b) && Intrinsics.c(this.f64297c, toOsaPage.f64297c) && Intrinsics.c(this.d, toOsaPage.d) && this.f64298e == toOsaPage.f64298e && this.f64299f == toOsaPage.f64299f && Intrinsics.c(this.g, toOsaPage.g) && this.f64300h == toOsaPage.f64300h;
        }

        public final int hashCode() {
            int iHashCode = this.f64295a.hashCode() * 31;
            String str = this.f64296b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            List list = this.f64297c;
            int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
            String str2 = this.d;
            int iB = o60.b((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f64298e);
            OsaOriginScreen osaOriginScreen = this.f64299f;
            int iHashCode4 = (iB + (osaOriginScreen == null ? 0 : osaOriginScreen.hashCode())) * 31;
            String str3 = this.g;
            return Boolean.hashCode(this.f64300h) + ((iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ToOsaPage(rootScreen=");
            sb.append(this.f64295a);
            sb.append(", reason=");
            sb.append(this.f64296b);
            sb.append(", prefilledStoreCodes=");
            o60.B(", prefilledStoreName=", this.d, ", isPrefilledEditable=", sb, this.f64297c);
            sb.append(this.f64298e);
            sb.append(", origin=");
            sb.append(this.f64299f);
            sb.append(", selectionId=");
            sb.append(this.g);
            sb.append(", redirectToMyExperiencesAfterLogin=");
            sb.append(this.f64300h);
            sb.append(")");
            return sb.toString();
        }

        public ToOsaPage(OsaRoutesName osaRoutesName, String str, List<String> list, String str2, boolean z, OsaOriginScreen osaOriginScreen, String str3, boolean z2) {
            osaRoutesName.getClass();
            this.f64295a = osaRoutesName;
            this.f64296b = str;
            this.f64297c = list;
            this.d = str2;
            this.f64298e = z;
            this.f64299f = osaOriginScreen;
            this.g = str3;
            this.f64300h = z2;
        }
    }
}
