package com.vuitton.android.presentation.screen.pdp;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0010\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0082\u0001\u0010\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\"À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "", "ToProductPage", "ToWelcomePage", "ToArPage", "ToBeautyVtoPage", "ToWishlistPage", "ToCatalogAfterStoreModePage", "ToWebViewPage", "ToCustomizationWebViewPage", "ToPrivacyPolicyPage", "ToStoreLocatorPage", "ToWifiDeviceToPage", "ToTrunkSpeakerSectionToPage", "ToNativeCartPage", "ToShadeFinderPage", "ToAICompanionPage", "ToVirtualStudioOsaPage", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToAICompanionPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToArPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCatalogAfterStoreModePage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCustomizationWebViewPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToNativeCartPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToShadeFinderPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToTrunkSpeakerSectionToPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWelcomePage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWifiDeviceToPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PdpDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToAICompanionPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAICompanionPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToAICompanionPage f61103a = new ToAICompanionPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToAICompanionPage);
        }

        public final int hashCode() {
            return 428260378;
        }

        public final String toString() {
            return "ToAICompanionPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToArPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuIdUiModel", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToArPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61104a;

        public ToArPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61104a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToArPage)) {
                return false;
            }
            String str = ((ToArPage) obj).f61104a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61104a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f61104a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ToArPage(skuIdUiModel=", this.f61104a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;", "product", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToBeautyVtoPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ProductUiModel f61105a;

        public ToBeautyVtoPage(ProductUiModel productUiModel) {
            productUiModel.getClass();
            this.f61105a = productUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToBeautyVtoPage) && Intrinsics.c(this.f61105a, ((ToBeautyVtoPage) obj).f61105a);
        }

        public final int hashCode() {
            return this.f61105a.hashCode();
        }

        public final String toString() {
            return "ToBeautyVtoPage(product=" + this.f61105a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCatalogAfterStoreModePage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCatalogAfterStoreModePage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToCatalogAfterStoreModePage f61106a = new ToCatalogAfterStoreModePage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToCatalogAfterStoreModePage);
        }

        public final int hashCode() {
            return -363289321;
        }

        public final String toString() {
            return "ToCatalogAfterStoreModePage";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToCustomizationWebViewPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "", "configuratorUrl", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "customizationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCustomizationWebViewPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomizationType f61108b;

        public ToCustomizationWebViewPage(String str, CustomizationType customizationType) {
            str.getClass();
            customizationType.getClass();
            this.f61107a = str;
            this.f61108b = customizationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToCustomizationWebViewPage)) {
                return false;
            }
            ToCustomizationWebViewPage toCustomizationWebViewPage = (ToCustomizationWebViewPage) obj;
            return Intrinsics.c(this.f61107a, toCustomizationWebViewPage.f61107a) && this.f61108b == toCustomizationWebViewPage.f61108b;
        }

        public final int hashCode() {
            return this.f61108b.hashCode() + (this.f61107a.hashCode() * 31);
        }

        public final String toString() {
            return "ToCustomizationWebViewPage(configuratorUrl=" + this.f61107a + ", customizationType=" + this.f61108b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToNativeCartPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToNativeCartPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToNativeCartPage f61109a = new ToNativeCartPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToNativeCartPage);
        }

        public final int hashCode() {
            return 316500639;
        }

        public final String toString() {
            return "ToNativeCartPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPrivacyPolicyPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPrivacyPolicyPage f61110a = new ToPrivacyPolicyPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPrivacyPolicyPage);
        }

        public final int hashCode() {
            return 1318222416;
        }

        public final String toString() {
            return "ToPrivacyPolicyPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToShadeFinderPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToShadeFinderPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToShadeFinderPage f61114a = new ToShadeFinderPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToShadeFinderPage);
        }

        public final int hashCode() {
            return 824334697;
        }

        public final String toString() {
            return "ToShadeFinderPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "", "storeLocatorUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToStoreLocatorPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61115a;

        public ToStoreLocatorPage(String str) {
            str.getClass();
            this.f61115a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToStoreLocatorPage) && Intrinsics.c(this.f61115a, ((ToStoreLocatorPage) obj).f61115a);
        }

        public final int hashCode() {
            return this.f61115a.hashCode();
        }

        public final String toString() {
            return fc.h("ToStoreLocatorPage(storeLocatorUrl=", this.f61115a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToTrunkSpeakerSectionToPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToTrunkSpeakerSectionToPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToTrunkSpeakerSectionToPage f61116a = new ToTrunkSpeakerSectionToPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToTrunkSpeakerSectionToPage);
        }

        public final int hashCode() {
            return -802444341;
        }

        public final String toString() {
            return "ToTrunkSpeakerSectionToPage";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToVirtualStudioOsaPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;", "virtualStudioConfig", "", "", "storeCodes", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToVirtualStudioOsaPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PdpVirtualStudioConfigValues f61117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f61118b;

        public ToVirtualStudioOsaPage(PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues, List<String> list) {
            pdpVirtualStudioConfigValues.getClass();
            list.getClass();
            this.f61117a = pdpVirtualStudioConfigValues;
            this.f61118b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToVirtualStudioOsaPage)) {
                return false;
            }
            ToVirtualStudioOsaPage toVirtualStudioOsaPage = (ToVirtualStudioOsaPage) obj;
            return Intrinsics.c(this.f61117a, toVirtualStudioOsaPage.f61117a) && Intrinsics.c(this.f61118b, toVirtualStudioOsaPage.f61118b);
        }

        public final int hashCode() {
            return this.f61118b.hashCode() + (this.f61117a.hashCode() * 31);
        }

        public final String toString() {
            return "ToVirtualStudioOsaPage(virtualStudioConfig=" + this.f61117a + ", storeCodes=" + this.f61118b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWelcomePage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWelcomePage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f61121a;

        public ToWelcomePage(LoginContext loginContext) {
            loginContext.getClass();
            this.f61121a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWelcomePage) && this.f61121a == ((ToWelcomePage) obj).f61121a;
        }

        public final int hashCode() {
            return this.f61121a.hashCode();
        }

        public final String toString() {
            return "ToWelcomePage(loginContext=" + this.f61121a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWifiDeviceToPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWifiDeviceToPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToWifiDeviceToPage f61122a = new ToWifiDeviceToPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToWifiDeviceToPage);
        }

        public final int hashCode() {
            return -671471954;
        }

        public final String toString() {
            return "ToWifiDeviceToPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "isCart", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWebViewPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61120b;

        public /* synthetic */ ToWebViewPage(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToWebViewPage)) {
                return false;
            }
            ToWebViewPage toWebViewPage = (ToWebViewPage) obj;
            return Intrinsics.c(this.f61119a, toWebViewPage.f61119a) && this.f61120b == toWebViewPage.f61120b;
        }

        public final int hashCode() {
            String str = this.f61119a;
            return Boolean.hashCode(this.f61120b) + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return d21.m("ToWebViewPage(url=", this.f61119a, ", isCart=", ")", this.f61120b);
        }

        public ToWebViewPage(String str, boolean z) {
            this.f61119a = str;
            this.f61120b = z;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToWishlistPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "", "isStoreModeContext", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWishlistPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f61123a;

        public /* synthetic */ ToWishlistPage(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWishlistPage) && this.f61123a == ((ToWishlistPage) obj).f61123a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f61123a);
        }

        public final String toString() {
            return tr.i("ToWishlistPage(isStoreModeContext=", ")", this.f61123a);
        }

        public ToWishlistPage(boolean z) {
            this.f61123a = z;
        }

        public ToWishlistPage() {
            this(false, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToProductPage;", "Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuIdUiModel", "", "isExclusiveSale", "", "rmsCode", "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;", "catalogMode", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToProductPage implements PdpDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61111a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61112b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61113c;
        public final CatalogMode d;

        public /* synthetic */ ToProductPage(String str, boolean z, String str2, CatalogMode catalogMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : catalogMode, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToProductPage)) {
                return false;
            }
            ToProductPage toProductPage = (ToProductPage) obj;
            String str = toProductPage.f61111a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f61111a, str) && this.f61112b == toProductPage.f61112b && Intrinsics.c(this.f61113c, toProductPage.f61113c) && this.d == toProductPage.d;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iB = o60.b(this.f61111a.hashCode() * 31, 31, this.f61112b);
            String str = this.f61113c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            CatalogMode catalogMode = this.d;
            return iHashCode + (catalogMode != null ? catalogMode.hashCode() : 0);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sbS = d21.s("ToProductPage(skuIdUiModel=", this.f61111a, ", isExclusiveSale=", ", rmsCode=", this.f61112b);
            sbS.append(this.f61113c);
            sbS.append(", catalogMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public ToProductPage(String str, boolean z, String str2, CatalogMode catalogMode, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f61111a = str;
            this.f61112b = z;
            this.f61113c = str2;
            this.d = catalogMode;
        }
    }
}
