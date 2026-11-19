package com.vuitton.android.presentation.screen.feed;

import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;", "", "Unresolved", "NoSku", "Loading", "Loaded", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Unresolved;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
interface MostPurchasedWithState {

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;", "", "sku", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "headerImage", "", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", Product.TYPE, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loaded implements MostPurchasedWithState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetImageUiModel f57745b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f57746c;

        public Loaded(String str, AssetImageUiModel assetImageUiModel, List<CarouselSItemUiModel> list) {
            str.getClass();
            list.getClass();
            this.f57744a = str;
            this.f57745b = assetImageUiModel;
            this.f57746c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Loaded)) {
                return false;
            }
            Loaded loaded = (Loaded) obj;
            return Intrinsics.c(this.f57744a, loaded.f57744a) && Intrinsics.c(this.f57745b, loaded.f57745b) && Intrinsics.c(this.f57746c, loaded.f57746c);
        }

        public final int hashCode() {
            int iHashCode = this.f57744a.hashCode() * 31;
            AssetImageUiModel assetImageUiModel = this.f57745b;
            return this.f57746c.hashCode() + ((iHashCode + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode())) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Loaded(sku=");
            sb.append(this.f57744a);
            sb.append(", headerImage=");
            sb.append(this.f57745b);
            sb.append(", products=");
            return a.o(sb, this.f57746c, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;", "", "sku", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "headerImage", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements MostPurchasedWithState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetImageUiModel f57748b;

        public Loading(String str, AssetImageUiModel assetImageUiModel) {
            str.getClass();
            this.f57747a = str;
            this.f57748b = assetImageUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Loading)) {
                return false;
            }
            Loading loading = (Loading) obj;
            return Intrinsics.c(this.f57747a, loading.f57747a) && Intrinsics.c(this.f57748b, loading.f57748b);
        }

        public final int hashCode() {
            int iHashCode = this.f57747a.hashCode() * 31;
            AssetImageUiModel assetImageUiModel = this.f57748b;
            return iHashCode + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode());
        }

        public final String toString() {
            return "Loading(sku=" + this.f57747a + ", headerImage=" + this.f57748b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NoSku implements MostPurchasedWithState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NoSku f57749a = new NoSku();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NoSku);
        }

        public final int hashCode() {
            return -1711605142;
        }

        public final String toString() {
            return "NoSku";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Unresolved;", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Unresolved implements MostPurchasedWithState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unresolved f57750a = new Unresolved();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Unresolved);
        }

        public final int hashCode() {
            return 1446316931;
        }

        public final String toString() {
            return "Unresolved";
        }
    }
}
