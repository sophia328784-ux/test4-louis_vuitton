package com.vuitton.android.presentation.screen.catalog;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;", "", "ToStoreLocatorPage", "ToStoryPage", "ToPdpPage", "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoreLocatorPage;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CatalogDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoreLocatorPage;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;", "", "storeLocatorUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToStoreLocatorPage implements CatalogDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55221a;

        public ToStoreLocatorPage(String str) {
            str.getClass();
            this.f55221a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToStoreLocatorPage) && Intrinsics.c(this.f55221a, ((ToStoreLocatorPage) obj).f55221a);
        }

        public final int hashCode() {
            return this.f55221a.hashCode();
        }

        public final String toString() {
            return fc.h("ToStoreLocatorPage(storeLocatorUrl=", this.f55221a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToStoryPage;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;", "", "categoryUrl", "", "isCart", "isPLPStory", "storyTitle", "<init>", "(Ljava/lang/String;ZZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToStoryPage implements CatalogDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f55223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f55224c;
        public final String d;

        public ToStoryPage(String str, boolean z, boolean z2, String str2) {
            str.getClass();
            str2.getClass();
            this.f55222a = str;
            this.f55223b = z;
            this.f55224c = z2;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToStoryPage)) {
                return false;
            }
            ToStoryPage toStoryPage = (ToStoryPage) obj;
            return Intrinsics.c(this.f55222a, toStoryPage.f55222a) && this.f55223b == toStoryPage.f55223b && this.f55224c == toStoryPage.f55224c && Intrinsics.c(this.d, toStoryPage.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + o60.b(o60.b(this.f55222a.hashCode() * 31, 31, this.f55223b), 31, this.f55224c);
        }

        public final String toString() {
            StringBuilder sbS = d21.s("ToStoryPage(categoryUrl=", this.f55222a, ", isCart=", ", isPLPStory=", this.f55223b);
            sbS.append(this.f55224c);
            sbS.append(", storyTitle=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "categoryId", "", "isFromNativeShare", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPdpPage implements CatalogDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f55220c;

        public /* synthetic */ ToPdpPage(String str, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? false : z, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToPdpPage)) {
                return false;
            }
            ToPdpPage toPdpPage = (ToPdpPage) obj;
            String str = toPdpPage.f55218a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f55218a, str) && Intrinsics.c(this.f55219b, toPdpPage.f55219b) && this.f55220c == toPdpPage.f55220c;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode = this.f55218a.hashCode() * 31;
            String str = this.f55219b;
            return Boolean.hashCode(this.f55220c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return a.p(fc.s("ToPdpPage(sku=", this.f55218a, ", categoryId=", this.f55219b, ", isFromNativeShare="), this.f55220c, ")");
        }

        public ToPdpPage(String str, String str2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f55218a = str;
            this.f55219b = str2;
            this.f55220c = z;
        }
    }
}
