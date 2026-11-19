package com.vuitton.android.presentation.screen.pdp.models;

import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.ProductServiceType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001BÃ\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0006\u0012\b\b\u0002\u0010 \u001a\u00020\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"\u0012\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u001b\u0012\b\b\u0002\u0010&\u001a\u00020\u0006\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010'\u0012\b\b\u0002\u0010)\u001a\u00020\u0006\u0012\b\b\u0002\u0010*\u001a\u00020\u0006\u0012\b\b\u0002\u0010+\u001a\u00020\u0006\u0012\b\b\u0002\u0010,\u001a\u00020\u0006¢\u0006\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;", "product", "", "isError", "isLoading", "isAddToCartLoading", "isAvailabilityLoading", "isWishlistLoading", "isShareAvailable", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;", "pdpFeatureFlags", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;", "pdpAppConfigValues", "Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;", "storeButtonType", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;", "productAvailability", "isStoreMode", "", "rmsCode", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;", "sizeGuide", "shouldDisplayYAMLSection", "Lkotlinx/collections/immutable/ImmutableList;", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "ymalProductList", "isYmalLoading", "isInWishlist", "isUserLogged", "traceabilityRedirectUrl", "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;", "catalogMode", "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType;", "serviceList", "shouldShowCancelProductCustomizationBottomSheet", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;", "consentBottomSheetContent", "isNavigationSimplified", "isAutoPlayDisabled", "hasAITooltipBeenDisplayed", "isExclusiveSale", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;ZLkotlinx/collections/immutable/ImmutableList;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlinx/collections/immutable/ImmutableList;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PdpViewState {
    public final boolean A;
    public final boolean B;
    public final boolean C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f61565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProductUiModel f61566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f61567c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f61568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f61569f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f61570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PdpFeatureFlags f61571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PdpAppConfigValues f61572j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StoreButtonType f61573k;
    public final ProductAvailabilityUiModel l;
    public final boolean m;
    public final String n;
    public final SizeGuideUiModel o;
    public final boolean p;
    public final ImmutableList q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final String u;
    public final CatalogMode v;
    public final ImmutableList w;
    public final boolean x;
    public final BeautyLegalConsentUiModel y;
    public final boolean z;

    public PdpViewState(InAppDispatch inAppDispatch, ProductUiModel productUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, PdpFeatureFlags pdpFeatureFlags, PdpAppConfigValues pdpAppConfigValues, StoreButtonType storeButtonType, ProductAvailabilityUiModel productAvailabilityUiModel, boolean z7, String str, SizeGuideUiModel sizeGuideUiModel, boolean z8, ImmutableList immutableList, boolean z9, boolean z10, boolean z11, String str2, CatalogMode catalogMode, ImmutableList immutableList2, boolean z12, BeautyLegalConsentUiModel beautyLegalConsentUiModel, boolean z13, boolean z14, boolean z15, boolean z16, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? null : productUiModel, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? true : z4, (i2 & 64) != 0 ? false : z5, (i2 & 128) != 0 ? false : z6, (i2 & 256) != 0 ? new PdpFeatureFlags(false, false, false, false, false, false, false, false, false, false, false, false, false, false, 16383, null) : pdpFeatureFlags, (i2 & 512) != 0 ? new PdpAppConfigValues(null, null, null, null, null, null, null, CertificateBody.profileType, null) : pdpAppConfigValues, (i2 & 1024) != 0 ? null : storeButtonType, (i2 & 2048) != 0 ? null : productAvailabilityUiModel, (i2 & 4096) != 0 ? false : z7, (i2 & 8192) != 0 ? null : str, (i2 & 16384) != 0 ? null : sizeGuideUiModel, (i2 & 32768) != 0 ? false : z8, (i2 & 65536) != 0 ? UtilsKt.b() : immutableList, (i2 & 131072) != 0 ? false : z9, (i2 & 262144) != 0 ? false : z10, (i2 & 524288) != 0 ? false : z11, (i2 & 1048576) != 0 ? null : str2, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : catalogMode, (i2 & 4194304) != 0 ? UtilsKt.b() : immutableList2, (i2 & 8388608) != 0 ? false : z12, (i2 & 16777216) != 0 ? null : beautyLegalConsentUiModel, (i2 & 33554432) != 0 ? false : z13, (i2 & 67108864) != 0 ? false : z14, (i2 & 134217728) != 0 ? false : z15, (i2 & 268435456) != 0 ? false : z16);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PdpViewState)) {
            return false;
        }
        PdpViewState pdpViewState = (PdpViewState) obj;
        return Intrinsics.c(this.f61565a, pdpViewState.f61565a) && Intrinsics.c(this.f61566b, pdpViewState.f61566b) && this.f61567c == pdpViewState.f61567c && this.d == pdpViewState.d && this.f61568e == pdpViewState.f61568e && this.f61569f == pdpViewState.f61569f && this.g == pdpViewState.g && this.f61570h == pdpViewState.f61570h && Intrinsics.c(this.f61571i, pdpViewState.f61571i) && Intrinsics.c(this.f61572j, pdpViewState.f61572j) && this.f61573k == pdpViewState.f61573k && this.l == pdpViewState.l && this.m == pdpViewState.m && Intrinsics.c(this.n, pdpViewState.n) && Intrinsics.c(this.o, pdpViewState.o) && this.p == pdpViewState.p && Intrinsics.c(this.q, pdpViewState.q) && this.r == pdpViewState.r && this.s == pdpViewState.s && this.t == pdpViewState.t && Intrinsics.c(this.u, pdpViewState.u) && this.v == pdpViewState.v && Intrinsics.c(this.w, pdpViewState.w) && this.x == pdpViewState.x && Intrinsics.c(this.y, pdpViewState.y) && this.z == pdpViewState.z && this.A == pdpViewState.A && this.B == pdpViewState.B && this.C == pdpViewState.C;
    }

    public final int hashCode() {
        int iHashCode = this.f61565a.hashCode() * 31;
        ProductUiModel productUiModel = this.f61566b;
        int iHashCode2 = (this.f61572j.hashCode() + ((this.f61571i.hashCode() + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((iHashCode + (productUiModel == null ? 0 : productUiModel.hashCode())) * 31, 31, this.f61567c), 31, this.d), 31, this.f61568e), 31, this.f61569f), 31, this.g), 31, this.f61570h)) * 31)) * 31;
        StoreButtonType storeButtonType = this.f61573k;
        int iHashCode3 = (iHashCode2 + (storeButtonType == null ? 0 : storeButtonType.hashCode())) * 31;
        ProductAvailabilityUiModel productAvailabilityUiModel = this.l;
        int iB = o60.b((iHashCode3 + (productAvailabilityUiModel == null ? 0 : productAvailabilityUiModel.hashCode())) * 31, 31, this.m);
        String str = this.n;
        int iHashCode4 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        SizeGuideUiModel sizeGuideUiModel = this.o;
        int iB2 = o60.b(o60.b(o60.b((this.q.hashCode() + o60.b((iHashCode4 + (sizeGuideUiModel == null ? 0 : sizeGuideUiModel.hashCode())) * 31, 31, this.p)) * 31, 31, this.r), 31, this.s), 31, this.t);
        String str2 = this.u;
        int iHashCode5 = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        CatalogMode catalogMode = this.v;
        int iB3 = o60.b((this.w.hashCode() + ((iHashCode5 + (catalogMode == null ? 0 : catalogMode.hashCode())) * 31)) * 31, 31, this.x);
        BeautyLegalConsentUiModel beautyLegalConsentUiModel = this.y;
        return Boolean.hashCode(this.C) + o60.b(o60.b(o60.b((iB3 + (beautyLegalConsentUiModel != null ? beautyLegalConsentUiModel.hashCode() : 0)) * 31, 31, this.z), 31, this.A), 31, this.B);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PdpViewState(inAppDispatch=");
        sb.append(this.f61565a);
        sb.append(", product=");
        sb.append(this.f61566b);
        sb.append(", isError=");
        fc.y(sb, this.f61567c, ", isLoading=", this.d, ", isAddToCartLoading=");
        fc.y(sb, this.f61568e, ", isAvailabilityLoading=", this.f61569f, ", isWishlistLoading=");
        fc.y(sb, this.g, ", isShareAvailable=", this.f61570h, ", pdpFeatureFlags=");
        sb.append(this.f61571i);
        sb.append(", pdpAppConfigValues=");
        sb.append(this.f61572j);
        sb.append(", storeButtonType=");
        sb.append(this.f61573k);
        sb.append(", productAvailability=");
        sb.append(this.l);
        sb.append(", isStoreMode=");
        cj.A(", rmsCode=", this.n, ", sizeGuide=", sb, this.m);
        sb.append(this.o);
        sb.append(", shouldDisplayYAMLSection=");
        sb.append(this.p);
        sb.append(", ymalProductList=");
        sb.append(this.q);
        sb.append(", isYmalLoading=");
        sb.append(this.r);
        sb.append(", isInWishlist=");
        fc.y(sb, this.s, ", isUserLogged=", this.t, ", traceabilityRedirectUrl=");
        sb.append(this.u);
        sb.append(", catalogMode=");
        sb.append(this.v);
        sb.append(", serviceList=");
        sb.append(this.w);
        sb.append(", shouldShowCancelProductCustomizationBottomSheet=");
        sb.append(this.x);
        sb.append(", consentBottomSheetContent=");
        sb.append(this.y);
        sb.append(", isNavigationSimplified=");
        sb.append(this.z);
        sb.append(", isAutoPlayDisabled=");
        fc.y(sb, this.A, ", hasAITooltipBeenDisplayed=", this.B, ", isExclusiveSale=");
        return a.p(sb, this.C, ")");
    }

    public PdpViewState(InAppDispatch inAppDispatch, ProductUiModel productUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, PdpFeatureFlags pdpFeatureFlags, PdpAppConfigValues pdpAppConfigValues, StoreButtonType storeButtonType, ProductAvailabilityUiModel productAvailabilityUiModel, boolean z7, String str, SizeGuideUiModel sizeGuideUiModel, boolean z8, ImmutableList<CarouselSItemUiModel> immutableList, boolean z9, boolean z10, boolean z11, String str2, CatalogMode catalogMode, ImmutableList<? extends ProductServiceType> immutableList2, boolean z12, BeautyLegalConsentUiModel beautyLegalConsentUiModel, boolean z13, boolean z14, boolean z15, boolean z16) {
        inAppDispatch.getClass();
        pdpFeatureFlags.getClass();
        pdpAppConfigValues.getClass();
        immutableList.getClass();
        immutableList2.getClass();
        this.f61565a = inAppDispatch;
        this.f61566b = productUiModel;
        this.f61567c = z;
        this.d = z2;
        this.f61568e = z3;
        this.f61569f = z4;
        this.g = z5;
        this.f61570h = z6;
        this.f61571i = pdpFeatureFlags;
        this.f61572j = pdpAppConfigValues;
        this.f61573k = storeButtonType;
        this.l = productAvailabilityUiModel;
        this.m = z7;
        this.n = str;
        this.o = sizeGuideUiModel;
        this.p = z8;
        this.q = immutableList;
        this.r = z9;
        this.s = z10;
        this.t = z11;
        this.u = str2;
        this.v = catalogMode;
        this.w = immutableList2;
        this.x = z12;
        this.y = beautyLegalConsentUiModel;
        this.z = z13;
        this.A = z14;
        this.B = z15;
        this.C = z16;
    }
}
