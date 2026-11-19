package com.vuitton.android.presentation.screen.pdp;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.UtilsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "", "AddedToCart", "CrossSellAddToCart", "CameraSettings", "VtoConsent", "ServerOverload", "EditCustomization", "MultipleCustomizations", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CameraSettings;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$VtoConsent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PdpBottomSheetAction {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "addedProduct", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddedToCart implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CartItemUiModel f61091a;

        public AddedToCart(CartItemUiModel cartItemUiModel) {
            this.f61091a = cartItemUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddedToCart) && Intrinsics.c(this.f61091a, ((AddedToCart) obj).f61091a);
        }

        public final int hashCode() {
            CartItemUiModel cartItemUiModel = this.f61091a;
            if (cartItemUiModel == null) {
                return 0;
            }
            return cartItemUiModel.hashCode();
        }

        public final String toString() {
            return "AddedToCart(addedProduct=" + this.f61091a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CameraSettings;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CameraSettings implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CameraSettings f61092a = new CameraSettings();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CameraSettings);
        }

        public final int hashCode() {
            return -941338601;
        }

        public final String toString() {
            return "CameraSettings";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$EditCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "customizationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EditCustomization implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomizationType f61095b;

        public EditCustomization(String str, CustomizationType customizationType) {
            str.getClass();
            customizationType.getClass();
            this.f61094a = str;
            this.f61095b = customizationType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EditCustomization)) {
                return false;
            }
            EditCustomization editCustomization = (EditCustomization) obj;
            return Intrinsics.c(this.f61094a, editCustomization.f61094a) && this.f61095b == editCustomization.f61095b;
        }

        public final int hashCode() {
            return this.f61095b.hashCode() + (this.f61094a.hashCode() * 31);
        }

        public final String toString() {
            return "EditCustomization(url=" + this.f61094a + ", customizationType=" + this.f61095b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$MultipleCustomizations;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "customizationType", "previousCustomizationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MultipleCustomizations implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f61096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomizationType f61097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CustomizationType f61098c;

        public MultipleCustomizations(String str, CustomizationType customizationType, CustomizationType customizationType2) {
            str.getClass();
            customizationType.getClass();
            customizationType2.getClass();
            this.f61096a = str;
            this.f61097b = customizationType;
            this.f61098c = customizationType2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultipleCustomizations)) {
                return false;
            }
            MultipleCustomizations multipleCustomizations = (MultipleCustomizations) obj;
            return Intrinsics.c(this.f61096a, multipleCustomizations.f61096a) && this.f61097b == multipleCustomizations.f61097b && this.f61098c == multipleCustomizations.f61098c;
        }

        public final int hashCode() {
            return this.f61098c.hashCode() + ((this.f61097b.hashCode() + (this.f61096a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "MultipleCustomizations(url=" + this.f61096a + ", customizationType=" + this.f61097b + ", previousCustomizationType=" + this.f61098c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "description", "", "assetUrl", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ServerOverload implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringResourceUiModel f61099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StringResourceUiModel f61100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61101c;

        public ServerOverload(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, String str) {
            stringResourceUiModel.getClass();
            stringResourceUiModel2.getClass();
            this.f61099a = stringResourceUiModel;
            this.f61100b = stringResourceUiModel2;
            this.f61101c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ServerOverload)) {
                return false;
            }
            ServerOverload serverOverload = (ServerOverload) obj;
            return Intrinsics.c(this.f61099a, serverOverload.f61099a) && Intrinsics.c(this.f61100b, serverOverload.f61100b) && Intrinsics.c(this.f61101c, serverOverload.f61101c);
        }

        public final int hashCode() {
            int iHashCode = (this.f61100b.hashCode() + (this.f61099a.hashCode() * 31)) * 31;
            String str = this.f61101c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ServerOverload(title=");
            sb.append(this.f61099a);
            sb.append(", description=");
            sb.append(this.f61100b);
            sb.append(", assetUrl=");
            return n00.r(this.f61101c, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$VtoConsent;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VtoConsent implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final VtoConsent f61102a = new VtoConsent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof VtoConsent);
        }

        public final int hashCode() {
            return -148582760;
        }

        public final String toString() {
            return "VtoConsent";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;", "Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction;", "Lkotlinx/collections/immutable/ImmutableList;", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "crossSellProductList", "<init>", "(Lkotlinx/collections/immutable/ImmutableList;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CrossSellAddToCart implements PdpBottomSheetAction {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f61093a;

        public CrossSellAddToCart(ImmutableList immutableList, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? UtilsKt.b() : immutableList);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CrossSellAddToCart) && Intrinsics.c(this.f61093a, ((CrossSellAddToCart) obj).f61093a);
        }

        public final int hashCode() {
            return this.f61093a.hashCode();
        }

        public final String toString() {
            return "CrossSellAddToCart(crossSellProductList=" + this.f61093a + ")";
        }

        public CrossSellAddToCart(ImmutableList<CarouselSItemUiModel> immutableList) {
            immutableList.getClass();
            this.f61093a = immutableList;
        }

        public CrossSellAddToCart() {
            this(null, 1, null);
        }
    }
}
