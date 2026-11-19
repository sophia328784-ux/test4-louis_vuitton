package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;", "", "PageFromPlp", "PageFromExclusive", "PageFromStoreMode", "ToWishlistPage", "ToAICompanionPage", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PLPDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PageFromExclusive implements PLPDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlpProductUiModel f62710a;

        public PageFromExclusive(PlpProductUiModel plpProductUiModel) {
            plpProductUiModel.getClass();
            this.f62710a = plpProductUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PageFromExclusive) && Intrinsics.c(this.f62710a, ((PageFromExclusive) obj).f62710a);
        }

        public final int hashCode() {
            return this.f62710a.hashCode();
        }

        public final String toString() {
            return "PageFromExclusive(product=" + this.f62710a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "", "rmsCode", "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;", "catalogMode", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PageFromStoreMode implements PLPDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlpProductUiModel f62713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CatalogMode f62715c;

        public PageFromStoreMode(PlpProductUiModel plpProductUiModel, String str, CatalogMode catalogMode) {
            plpProductUiModel.getClass();
            str.getClass();
            catalogMode.getClass();
            this.f62713a = plpProductUiModel;
            this.f62714b = str;
            this.f62715c = catalogMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PageFromStoreMode)) {
                return false;
            }
            PageFromStoreMode pageFromStoreMode = (PageFromStoreMode) obj;
            return Intrinsics.c(this.f62713a, pageFromStoreMode.f62713a) && Intrinsics.c(this.f62714b, pageFromStoreMode.f62714b) && this.f62715c == pageFromStoreMode.f62715c;
        }

        public final int hashCode() {
            return this.f62715c.hashCode() + fc.b(this.f62713a.hashCode() * 31, 31, this.f62714b);
        }

        public final String toString() {
            return "PageFromStoreMode(product=" + this.f62713a + ", rmsCode=" + this.f62714b + ", catalogMode=" + this.f62715c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToAICompanionPage implements PLPDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToAICompanionPage f62716a = new ToAICompanionPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToAICompanionPage);
        }

        public final int hashCode() {
            return 939292059;
        }

        public final String toString() {
            return "ToAICompanionPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWishlistPage implements PLPDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToWishlistPage f62717a = new ToWishlistPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToWishlistPage);
        }

        public final int hashCode() {
            return 864013804;
        }

        public final String toString() {
            return "ToWishlistPage";
        }
    }

    static Intent a(Context context, PlpProductUiModel plpProductUiModel, String str, CatalogMode catalogMode, String str2, int i2) {
        boolean z = (i2 & 4) == 0;
        String str3 = (i2 & 8) != 0 ? null : str;
        CatalogMode catalogMode2 = (i2 & 16) != 0 ? null : catalogMode;
        String str4 = (i2 & 32) != 0 ? null : str2;
        context.getClass();
        plpProductUiModel.getClass();
        return PdpActivity.Companion.a(PdpActivity.D, context, ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62943a, z, str3, catalogMode2, str4, false, 64);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;", "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "", "category", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PageFromPlp implements PLPDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlpProductUiModel f62711a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f62712b;

        public PageFromPlp(PlpProductUiModel plpProductUiModel, String str) {
            plpProductUiModel.getClass();
            this.f62711a = plpProductUiModel;
            this.f62712b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PageFromPlp)) {
                return false;
            }
            PageFromPlp pageFromPlp = (PageFromPlp) obj;
            return Intrinsics.c(this.f62711a, pageFromPlp.f62711a) && Intrinsics.c(this.f62712b, pageFromPlp.f62712b);
        }

        public final int hashCode() {
            int iHashCode = this.f62711a.hashCode() * 31;
            String str = this.f62712b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "PageFromPlp(product=" + this.f62711a + ", category=" + this.f62712b + ")";
        }

        public /* synthetic */ PageFromPlp(PlpProductUiModel plpProductUiModel, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(plpProductUiModel, (i2 & 2) != 0 ? null : str);
        }
    }
}
