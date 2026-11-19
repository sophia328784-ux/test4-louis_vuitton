package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.SkuInfo;
import com.vuitton.android.presentation.screen.pdp.models.PdpAppConfigValues;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001BÃ\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\r\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\b\u0002\u0010!\u001a\u00020 \u0012\b\b\u0002\u0010#\u001a\u00020\"\u0012\b\b\u0002\u0010$\u001a\u00020\r\u0012\b\b\u0002\u0010%\u001a\u00020\r\u0012\b\b\u0002\u0010&\u001a\u00020\r\u0012\b\b\u0002\u0010'\u001a\u00020\r\u0012\b\b\u0002\u0010(\u001a\u00020\r¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;", "beautyVtoMode", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;", "tryOnProductList", "shadeFinderTryOnProductList", "tryOnProductStackingList", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;", "pdpAppConfigValues", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;", "picture", "", "isLoading", "isAddToCartLoading", "selectedTryOnProduct", "selectedStackingTryOnProduct", "isInWishlist", "isUserLoggedIn", "Lcom/perfectcorp/perfectlib/SkuInfo;", "simpleEffectToApply", "Lcom/perfectcorp/perfectlib/LookInfo;", "lookToApply", "dualEffectToApply", "stackingEffectToApply", "stackingLookToApply", "currentDualProduct", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;", "currentLook", "", "customerServicePhoneNumber", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;", "currentTutorial", "isNavigationSimplified", "isAutoPlayDisabled", "shouldDisplayStackingButton", "shouldDisplayCartButton", "isShadeFinder", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;ZZLcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/LookInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/LookInfo;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BeautyVtoViewState {
    public final boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BeautyVtoMode f62149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f62150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f62151c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PdpAppConfigValues f62152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BeautyPictureUiModel f62153f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f62154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TryOnProductUiModel f62155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TryOnProductUiModel f62156j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f62157k;
    public final boolean l;
    public final SkuInfo m;
    public final LookInfo n;
    public final SkuInfo o;
    public final SkuInfo p;
    public final LookInfo q;
    public final TryOnProductUiModel r;
    public final LookUiModel s;
    public final String t;
    public final BeautyFeatureFlags u;
    public final TutorialState v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final boolean z;

    public /* synthetic */ BeautyVtoViewState(BeautyVtoMode beautyVtoMode, List list, List list2, List list3, PdpAppConfigValues pdpAppConfigValues, BeautyPictureUiModel beautyPictureUiModel, boolean z, boolean z2, TryOnProductUiModel tryOnProductUiModel, TryOnProductUiModel tryOnProductUiModel2, boolean z3, boolean z4, SkuInfo skuInfo, LookInfo lookInfo, SkuInfo skuInfo2, SkuInfo skuInfo3, LookInfo lookInfo2, TryOnProductUiModel tryOnProductUiModel3, LookUiModel lookUiModel, String str, BeautyFeatureFlags beautyFeatureFlags, TutorialState tutorialState, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? BeautyVtoMode.SIMPLE : beautyVtoMode, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : list2, (i2 & 8) != 0 ? null : list3, (i2 & 16) != 0 ? new PdpAppConfigValues(null, null, null, null, null, null, null, CertificateBody.profileType, null) : pdpAppConfigValues, (i2 & 32) != 0 ? null : beautyPictureUiModel, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? false : z2, (i2 & 256) != 0 ? null : tryOnProductUiModel, (i2 & 512) != 0 ? null : tryOnProductUiModel2, (i2 & 1024) != 0 ? false : z3, (i2 & 2048) != 0 ? false : z4, (i2 & 4096) != 0 ? null : skuInfo, (i2 & 8192) != 0 ? null : lookInfo, (i2 & 16384) != 0 ? null : skuInfo2, (i2 & 32768) != 0 ? null : skuInfo3, (i2 & 65536) != 0 ? null : lookInfo2, (i2 & 131072) != 0 ? null : tryOnProductUiModel3, (i2 & 262144) != 0 ? null : lookUiModel, (i2 & 524288) != 0 ? null : str, (i2 & 1048576) != 0 ? new BeautyFeatureFlags(false, false, false, false, false, 31, null) : beautyFeatureFlags, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? TutorialState.Loading.f62199a : tutorialState, (i2 & 4194304) != 0 ? false : z5, (i2 & 8388608) != 0 ? false : z6, (i2 & 16777216) != 0 ? true : z7, (i2 & 33554432) == 0 ? z8 : true, (i2 & 67108864) != 0 ? false : z9);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BeautyVtoViewState)) {
            return false;
        }
        BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) obj;
        return this.f62149a == beautyVtoViewState.f62149a && Intrinsics.c(this.f62150b, beautyVtoViewState.f62150b) && Intrinsics.c(this.f62151c, beautyVtoViewState.f62151c) && Intrinsics.c(this.d, beautyVtoViewState.d) && Intrinsics.c(this.f62152e, beautyVtoViewState.f62152e) && Intrinsics.c(this.f62153f, beautyVtoViewState.f62153f) && this.g == beautyVtoViewState.g && this.f62154h == beautyVtoViewState.f62154h && Intrinsics.c(this.f62155i, beautyVtoViewState.f62155i) && Intrinsics.c(this.f62156j, beautyVtoViewState.f62156j) && this.f62157k == beautyVtoViewState.f62157k && this.l == beautyVtoViewState.l && Intrinsics.c(this.m, beautyVtoViewState.m) && Intrinsics.c(this.n, beautyVtoViewState.n) && Intrinsics.c(this.o, beautyVtoViewState.o) && Intrinsics.c(this.p, beautyVtoViewState.p) && Intrinsics.c(this.q, beautyVtoViewState.q) && Intrinsics.c(this.r, beautyVtoViewState.r) && Intrinsics.c(this.s, beautyVtoViewState.s) && Intrinsics.c(this.t, beautyVtoViewState.t) && Intrinsics.c(this.u, beautyVtoViewState.u) && Intrinsics.c(this.v, beautyVtoViewState.v) && this.w == beautyVtoViewState.w && this.x == beautyVtoViewState.x && this.y == beautyVtoViewState.y && this.z == beautyVtoViewState.z && this.A == beautyVtoViewState.A;
    }

    public final int hashCode() {
        int iHashCode = this.f62149a.hashCode() * 31;
        List list = this.f62150b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f62151c;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.d;
        int iHashCode4 = (this.f62152e.hashCode() + ((iHashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31)) * 31;
        BeautyPictureUiModel beautyPictureUiModel = this.f62153f;
        int iB = o60.b(o60.b((iHashCode4 + (beautyPictureUiModel == null ? 0 : beautyPictureUiModel.hashCode())) * 31, 31, this.g), 31, this.f62154h);
        TryOnProductUiModel tryOnProductUiModel = this.f62155i;
        int iHashCode5 = (iB + (tryOnProductUiModel == null ? 0 : tryOnProductUiModel.hashCode())) * 31;
        TryOnProductUiModel tryOnProductUiModel2 = this.f62156j;
        int iB2 = o60.b(o60.b((iHashCode5 + (tryOnProductUiModel2 == null ? 0 : tryOnProductUiModel2.hashCode())) * 31, 31, this.f62157k), 31, this.l);
        SkuInfo skuInfo = this.m;
        int iHashCode6 = (iB2 + (skuInfo == null ? 0 : skuInfo.hashCode())) * 31;
        LookInfo lookInfo = this.n;
        int iHashCode7 = (iHashCode6 + (lookInfo == null ? 0 : lookInfo.hashCode())) * 31;
        SkuInfo skuInfo2 = this.o;
        int iHashCode8 = (iHashCode7 + (skuInfo2 == null ? 0 : skuInfo2.hashCode())) * 31;
        SkuInfo skuInfo3 = this.p;
        int iHashCode9 = (iHashCode8 + (skuInfo3 == null ? 0 : skuInfo3.hashCode())) * 31;
        LookInfo lookInfo2 = this.q;
        int iHashCode10 = (iHashCode9 + (lookInfo2 == null ? 0 : lookInfo2.hashCode())) * 31;
        TryOnProductUiModel tryOnProductUiModel3 = this.r;
        int iHashCode11 = (iHashCode10 + (tryOnProductUiModel3 == null ? 0 : tryOnProductUiModel3.hashCode())) * 31;
        LookUiModel lookUiModel = this.s;
        int iHashCode12 = (iHashCode11 + (lookUiModel == null ? 0 : lookUiModel.hashCode())) * 31;
        String str = this.t;
        return Boolean.hashCode(this.A) + o60.b(o60.b(o60.b(o60.b((this.v.hashCode() + ((this.u.hashCode() + ((iHashCode12 + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31, 31, this.w), 31, this.x), 31, this.y), 31, this.z);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BeautyVtoViewState(beautyVtoMode=");
        sb.append(this.f62149a);
        sb.append(", tryOnProductList=");
        sb.append(this.f62150b);
        sb.append(", shadeFinderTryOnProductList=");
        a.C(sb, this.f62151c, ", tryOnProductStackingList=", this.d, ", pdpAppConfigValues=");
        sb.append(this.f62152e);
        sb.append(", picture=");
        sb.append(this.f62153f);
        sb.append(", isLoading=");
        fc.y(sb, this.g, ", isAddToCartLoading=", this.f62154h, ", selectedTryOnProduct=");
        sb.append(this.f62155i);
        sb.append(", selectedStackingTryOnProduct=");
        sb.append(this.f62156j);
        sb.append(", isInWishlist=");
        fc.y(sb, this.f62157k, ", isUserLoggedIn=", this.l, ", simpleEffectToApply=");
        sb.append(this.m);
        sb.append(", lookToApply=");
        sb.append(this.n);
        sb.append(", dualEffectToApply=");
        sb.append(this.o);
        sb.append(", stackingEffectToApply=");
        sb.append(this.p);
        sb.append(", stackingLookToApply=");
        sb.append(this.q);
        sb.append(", currentDualProduct=");
        sb.append(this.r);
        sb.append(", currentLook=");
        sb.append(this.s);
        sb.append(", customerServicePhoneNumber=");
        sb.append(this.t);
        sb.append(", featureFlags=");
        sb.append(this.u);
        sb.append(", currentTutorial=");
        sb.append(this.v);
        sb.append(", isNavigationSimplified=");
        fc.y(sb, this.w, ", isAutoPlayDisabled=", this.x, ", shouldDisplayStackingButton=");
        fc.y(sb, this.y, ", shouldDisplayCartButton=", this.z, ", isShadeFinder=");
        return a.p(sb, this.A, ")");
    }

    public BeautyVtoViewState(BeautyVtoMode beautyVtoMode, List<TryOnProductUiModel> list, List<TryOnProductUiModel> list2, List<TryOnProductUiModel> list3, PdpAppConfigValues pdpAppConfigValues, BeautyPictureUiModel beautyPictureUiModel, boolean z, boolean z2, TryOnProductUiModel tryOnProductUiModel, TryOnProductUiModel tryOnProductUiModel2, boolean z3, boolean z4, SkuInfo skuInfo, LookInfo lookInfo, SkuInfo skuInfo2, SkuInfo skuInfo3, LookInfo lookInfo2, TryOnProductUiModel tryOnProductUiModel3, LookUiModel lookUiModel, String str, BeautyFeatureFlags beautyFeatureFlags, TutorialState tutorialState, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        beautyVtoMode.getClass();
        pdpAppConfigValues.getClass();
        beautyFeatureFlags.getClass();
        tutorialState.getClass();
        this.f62149a = beautyVtoMode;
        this.f62150b = list;
        this.f62151c = list2;
        this.d = list3;
        this.f62152e = pdpAppConfigValues;
        this.f62153f = beautyPictureUiModel;
        this.g = z;
        this.f62154h = z2;
        this.f62155i = tryOnProductUiModel;
        this.f62156j = tryOnProductUiModel2;
        this.f62157k = z3;
        this.l = z4;
        this.m = skuInfo;
        this.n = lookInfo;
        this.o = skuInfo2;
        this.p = skuInfo3;
        this.q = lookInfo2;
        this.r = tryOnProductUiModel3;
        this.s = lookUiModel;
        this.t = str;
        this.u = beautyFeatureFlags;
        this.v = tutorialState;
        this.w = z5;
        this.x = z6;
        this.y = z7;
        this.z = z8;
        this.A = z9;
    }

    public BeautyVtoViewState() {
        this(null, null, null, null, null, null, false, false, null, null, false, false, null, null, null, null, null, null, null, null, null, null, false, false, false, false, false, 134217727, null);
    }
}
