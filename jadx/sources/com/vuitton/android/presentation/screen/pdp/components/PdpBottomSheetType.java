package com.vuitton.android.presentation.screen.pdp.components;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0012\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0082\u0001\u0012\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%¨\u0006&À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "", "AddToCart", "CrossSellAddToCart", "BackInStock", "Permissions", "Reinsurance", "Variations", "SizeGuide", "FindInStore", "UserConsentVtoPopIn", "Disclaimer", "CancelProductCustomization", "CameraPermission", "ServerOverload", "ContactUs", "TermsAndConditions", "EditCustomization", "MultipleCustomizations", "VirtualStudioConsents", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$BackInStock;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CameraPermission;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CancelProductCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ContactUs;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Disclaimer;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$FindInStore;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$TermsAndConditions;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$UserConsentVtoPopIn;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PdpBottomSheetType {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "addedProduct", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCart implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CartItemUiModel f61370a;

        public AddToCart(CartItemUiModel cartItemUiModel) {
            this.f61370a = cartItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToCart) && Intrinsics.c(this.f61370a, ((AddToCart) obj).f61370a);
        }

        public final int hashCode() {
            CartItemUiModel cartItemUiModel = this.f61370a;
            if (cartItemUiModel == null) {
                return 0;
            }
            return cartItemUiModel.hashCode();
        }

        public final String toString() {
            return "AddToCart(addedProduct=" + this.f61370a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CameraPermission;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CameraPermission implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CameraPermission f61372a = new CameraPermission();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CameraPermission);
        }

        public final int hashCode() {
            return 124531945;
        }

        public final String toString() {
            return "CameraPermission";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CancelProductCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CancelProductCustomization implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CancelProductCustomization f61373a = new CancelProductCustomization();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CancelProductCustomization);
        }

        public final int hashCode() {
            return 1483410579;
        }

        public final String toString() {
            return "CancelProductCustomization";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ContactUs;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContactUs implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContactUs f61374a = new ContactUs();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContactUs);
        }

        public final int hashCode() {
            return 1071377001;
        }

        public final String toString() {
            return "ContactUs";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CrossSellAddToCart;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lkotlinx/collections/immutable/ImmutableList;", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "crossSellProductList", "<init>", "(Lkotlinx/collections/immutable/ImmutableList;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CrossSellAddToCart implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f61375a;

        public CrossSellAddToCart(ImmutableList<CarouselSItemUiModel> immutableList) {
            immutableList.getClass();
            this.f61375a = immutableList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CrossSellAddToCart) && Intrinsics.c(this.f61375a, ((CrossSellAddToCart) obj).f61375a);
        }

        public final int hashCode() {
            return this.f61375a.hashCode();
        }

        public final String toString() {
            return "CrossSellAddToCart(crossSellProductList=" + this.f61375a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Disclaimer;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "description", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Disclaimer implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringResourceUiModel f61376a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StringResourceUiModel f61377b;

        public Disclaimer(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2) {
            stringResourceUiModel.getClass();
            stringResourceUiModel2.getClass();
            this.f61376a = stringResourceUiModel;
            this.f61377b = stringResourceUiModel2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Disclaimer)) {
                return false;
            }
            Disclaimer disclaimer = (Disclaimer) obj;
            return Intrinsics.c(this.f61376a, disclaimer.f61376a) && Intrinsics.c(this.f61377b, disclaimer.f61377b);
        }

        public final int hashCode() {
            return this.f61377b.hashCode() + (this.f61376a.hashCode() * 31);
        }

        public final String toString() {
            return "Disclaimer(title=" + this.f61376a + ", description=" + this.f61377b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "customizationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditCustomization implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61378a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomizationType f61379b;

        public EditCustomization(String str, CustomizationType customizationType) {
            str.getClass();
            customizationType.getClass();
            this.f61378a = str;
            this.f61379b = customizationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EditCustomization)) {
                return false;
            }
            EditCustomization editCustomization = (EditCustomization) obj;
            return Intrinsics.c(this.f61378a, editCustomization.f61378a) && this.f61379b == editCustomization.f61379b;
        }

        public final int hashCode() {
            return this.f61379b.hashCode() + (this.f61378a.hashCode() * 31);
        }

        public final String toString() {
            return "EditCustomization(url=" + this.f61378a + ", customizationType=" + this.f61379b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$FindInStore;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FindInStore implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FindInStore f61380a = new FindInStore();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FindInStore);
        }

        public final int hashCode() {
            return 1524262798;
        }

        public final String toString() {
            return "FindInStore";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "customizationType", "previousCustomizationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleCustomizations implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomizationType f61382b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CustomizationType f61383c;

        public MultipleCustomizations(String str, CustomizationType customizationType, CustomizationType customizationType2) {
            str.getClass();
            customizationType.getClass();
            customizationType2.getClass();
            this.f61381a = str;
            this.f61382b = customizationType;
            this.f61383c = customizationType2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleCustomizations)) {
                return false;
            }
            MultipleCustomizations multipleCustomizations = (MultipleCustomizations) obj;
            return Intrinsics.c(this.f61381a, multipleCustomizations.f61381a) && this.f61382b == multipleCustomizations.f61382b && this.f61383c == multipleCustomizations.f61383c;
        }

        public final int hashCode() {
            return this.f61383c.hashCode() + ((this.f61382b.hashCode() + (this.f61381a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "MultipleCustomizations(url=" + this.f61381a + ", customizationType=" + this.f61382b + ", previousCustomizationType=" + this.f61383c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", "uiModel", "<init>", "(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Permissions implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PermissionsBottomSheet f61384a;

        public Permissions(PermissionsBottomSheet permissionsBottomSheet) {
            permissionsBottomSheet.getClass();
            this.f61384a = permissionsBottomSheet;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Permissions) && Intrinsics.c(this.f61384a, ((Permissions) obj).f61384a);
        }

        public final int hashCode() {
            return this.f61384a.hashCode();
        }

        public final String toString() {
            return "Permissions(uiModel=" + this.f61384a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "reinsurance", "<init>", "(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Reinsurance implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ReinsuranceUiModel f61385a;

        public Reinsurance(ReinsuranceUiModel reinsuranceUiModel) {
            reinsuranceUiModel.getClass();
            this.f61385a = reinsuranceUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Reinsurance) && Intrinsics.c(this.f61385a, ((Reinsurance) obj).f61385a);
        }

        public final int hashCode() {
            return this.f61385a.hashCode();
        }

        public final String toString() {
            return "Reinsurance(reinsurance=" + this.f61385a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "description", "", "assetUrl", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ServerOverload implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringResourceUiModel f61386a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StringResourceUiModel f61387b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61388c;

        public ServerOverload(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, String str) {
            stringResourceUiModel.getClass();
            stringResourceUiModel2.getClass();
            this.f61386a = stringResourceUiModel;
            this.f61387b = stringResourceUiModel2;
            this.f61388c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ServerOverload)) {
                return false;
            }
            ServerOverload serverOverload = (ServerOverload) obj;
            return Intrinsics.c(this.f61386a, serverOverload.f61386a) && Intrinsics.c(this.f61387b, serverOverload.f61387b) && Intrinsics.c(this.f61388c, serverOverload.f61388c);
        }

        public final int hashCode() {
            int iHashCode = (this.f61387b.hashCode() + (this.f61386a.hashCode() * 31)) * 31;
            String str = this.f61388c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ServerOverload(title=");
            sb.append(this.f61386a);
            sb.append(", description=");
            sb.append(this.f61387b);
            sb.append(", assetUrl=");
            return n00.r(this.f61388c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;", "sizeGuide", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SizeGuide implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SizeGuideUiModel f61389a;

        public SizeGuide(SizeGuideUiModel sizeGuideUiModel) {
            sizeGuideUiModel.getClass();
            this.f61389a = sizeGuideUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SizeGuide) && Intrinsics.c(this.f61389a, ((SizeGuide) obj).f61389a);
        }

        public final int hashCode() {
            return this.f61389a.hashCode();
        }

        public final String toString() {
            return "SizeGuide(sizeGuide=" + this.f61389a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$TermsAndConditions;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TermsAndConditions implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TermsAndConditions f61390a = new TermsAndConditions();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TermsAndConditions);
        }

        public final int hashCode() {
            return -198848899;
        }

        public final String toString() {
            return "TermsAndConditions";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$UserConsentVtoPopIn;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UserConsentVtoPopIn implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final UserConsentVtoPopIn f61391a = new UserConsentVtoPopIn();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UserConsentVtoPopIn);
        }

        public final int hashCode() {
            return 1995262239;
        }

        public final String toString() {
            return "UserConsentVtoPopIn";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;", "variations", "", "shouldDisplayAvailability", "<init>", "(Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Variations implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f61392a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f61393b;

        public Variations(List<VariationUiModel> list, boolean z) {
            list.getClass();
            this.f61392a = list;
            this.f61393b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Variations)) {
                return false;
            }
            Variations variations = (Variations) obj;
            return Intrinsics.c(this.f61392a, variations.f61392a) && this.f61393b == variations.f61393b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f61393b) + (this.f61392a.hashCode() * 31);
        }

        public final String toString() {
            return "Variations(variations=" + this.f61392a + ", shouldDisplayAvailability=" + this.f61393b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;", "virtualStudioConfigValues", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VirtualStudioConsents implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PdpVirtualStudioConfigValues f61394a;

        public VirtualStudioConsents(PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues) {
            pdpVirtualStudioConfigValues.getClass();
            this.f61394a = pdpVirtualStudioConfigValues;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VirtualStudioConsents) && Intrinsics.c(this.f61394a, ((VirtualStudioConsents) obj).f61394a);
        }

        public final int hashCode() {
            return this.f61394a.hashCode();
        }

        public final String toString() {
            return "VirtualStudioConsents(virtualStudioConfigValues=" + this.f61394a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$BackInStock;", "Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;", "", "hasLegalConsent", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BackInStock implements PdpBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f61371a;

        public /* synthetic */ BackInStock(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BackInStock) && this.f61371a == ((BackInStock) obj).f61371a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f61371a);
        }

        public final String toString() {
            return tr.i("BackInStock(hasLegalConsent=", ")", this.f61371a);
        }

        public BackInStock(boolean z) {
            this.f61371a = z;
        }

        public BackInStock() {
            this(false, 1, null);
        }
    }
}
