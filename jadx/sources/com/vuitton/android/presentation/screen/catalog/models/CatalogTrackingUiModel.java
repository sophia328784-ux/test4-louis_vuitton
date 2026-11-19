package com.vuitton.android.presentation.screen.catalog.models;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\f\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u0082\u0001\f\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "CategoryScreen", "SubcategoryScreen", "OnCategoryClickEvent", "OnSubcategoryClickEvent", "OnSubcategoryCardClickEvent", "OnPlpClickEvent", "OnCategoryScrollEvent", "OnSubcategoryScrollEvent", "OnPlpSwipeEvent", "OnCarouselSwipeEvent", "OnHitCarouselItemEvent", "OnPlpScrollEvent", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$CategoryScreen;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$SubcategoryScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$CategoryScreen;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CategoryScreen extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CategoryScreen f55330a = new CategoryScreen(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CategoryScreen);
        }

        public final int hashCode() {
            return 2066886819;
        }

        public final String toString() {
            return "CategoryScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCarouselSwipeEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryName", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCarouselSwipeEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55331a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnCarouselSwipeEvent(String str) {
            super(null);
            str.getClass();
            this.f55331a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnCarouselSwipeEvent) && Intrinsics.c(this.f55331a, ((OnCarouselSwipeEvent) obj).f55331a);
        }

        public final int hashCode() {
            return this.f55331a.hashCode();
        }

        public final String toString() {
            return fc.h("OnCarouselSwipeEvent(categoryName=", this.f55331a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryName", "tag", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCategoryClickEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55333b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnCategoryClickEvent(String str, String str2) {
            super(null);
            str.getClass();
            this.f55332a = str;
            this.f55333b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnCategoryClickEvent)) {
                return false;
            }
            OnCategoryClickEvent onCategoryClickEvent = (OnCategoryClickEvent) obj;
            return Intrinsics.c(this.f55332a, onCategoryClickEvent.f55332a) && Intrinsics.c(this.f55333b, onCategoryClickEvent.f55333b);
        }

        public final int hashCode() {
            int iHashCode = this.f55332a.hashCode() * 31;
            String str = this.f55333b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return d21.l("OnCategoryClickEvent(categoryName=", this.f55332a, ", tag=", this.f55333b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "percentage", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnCategoryScrollEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f55334a;

        public OnCategoryScrollEvent(int i2) {
            super(null);
            this.f55334a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnCategoryScrollEvent) && this.f55334a == ((OnCategoryScrollEvent) obj).f55334a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f55334a);
        }

        public final String toString() {
            return n00.m(this.f55334a, "OnCategoryScrollEvent(percentage=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnHitCarouselItemEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryName", "", "position", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnHitCarouselItemEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f55336b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnHitCarouselItemEvent(String str, int i2) {
            super(null);
            str.getClass();
            this.f55335a = str;
            this.f55336b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnHitCarouselItemEvent)) {
                return false;
            }
            OnHitCarouselItemEvent onHitCarouselItemEvent = (OnHitCarouselItemEvent) obj;
            return Intrinsics.c(this.f55335a, onHitCarouselItemEvent.f55335a) && this.f55336b == onHitCarouselItemEvent.f55336b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f55336b) + (this.f55335a.hashCode() * 31);
        }

        public final String toString() {
            return "OnHitCarouselItemEvent(categoryName=" + this.f55335a + ", position=" + this.f55336b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "subcategoryName", "plpName", "plpId", "", "hasImage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPlpClickEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f55339c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPlpClickEvent(String str, String str2, String str3, boolean z) {
            super(null);
            cj.z(str, str2, str3);
            this.f55337a = str;
            this.f55338b = str2;
            this.f55339c = str3;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnPlpClickEvent)) {
                return false;
            }
            OnPlpClickEvent onPlpClickEvent = (OnPlpClickEvent) obj;
            return Intrinsics.c(this.f55337a, onPlpClickEvent.f55337a) && Intrinsics.c(this.f55338b, onPlpClickEvent.f55338b) && Intrinsics.c(this.f55339c, onPlpClickEvent.f55339c) && this.d == onPlpClickEvent.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + fc.b(fc.b(this.f55337a.hashCode() * 31, 31, this.f55338b), 31, this.f55339c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("OnPlpClickEvent(subcategoryName=", this.f55337a, ", plpName=", this.f55338b, ", plpId=");
            sbS.append(this.f55339c);
            sbS.append(", hasImage=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "subcategoryName", "", "percentage", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPlpScrollEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f55341b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPlpScrollEvent(String str, int i2) {
            super(null);
            str.getClass();
            this.f55340a = str;
            this.f55341b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnPlpScrollEvent)) {
                return false;
            }
            OnPlpScrollEvent onPlpScrollEvent = (OnPlpScrollEvent) obj;
            return Intrinsics.c(this.f55340a, onPlpScrollEvent.f55340a) && this.f55341b == onPlpScrollEvent.f55341b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f55341b) + (this.f55340a.hashCode() * 31);
        }

        public final String toString() {
            return "OnPlpScrollEvent(subcategoryName=" + this.f55340a + ", percentage=" + this.f55341b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "subcategoryName", "", "percentage", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnPlpSwipeEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55342a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f55343b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnPlpSwipeEvent(String str, int i2) {
            super(null);
            str.getClass();
            this.f55342a = str;
            this.f55343b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnPlpSwipeEvent)) {
                return false;
            }
            OnPlpSwipeEvent onPlpSwipeEvent = (OnPlpSwipeEvent) obj;
            return Intrinsics.c(this.f55342a, onPlpSwipeEvent.f55342a) && this.f55343b == onPlpSwipeEvent.f55343b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f55343b) + (this.f55342a.hashCode() * 31);
        }

        public final String toString() {
            return "OnPlpSwipeEvent(subcategoryName=" + this.f55342a + ", percentage=" + this.f55343b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryCardClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryName", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSubcategoryCardClickEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55344a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnSubcategoryCardClickEvent(String str) {
            super(null);
            str.getClass();
            this.f55344a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnSubcategoryCardClickEvent) && Intrinsics.c(this.f55344a, ((OnSubcategoryCardClickEvent) obj).f55344a);
        }

        public final int hashCode() {
            return this.f55344a.hashCode();
        }

        public final String toString() {
            return fc.h("OnSubcategoryCardClickEvent(categoryName=", this.f55344a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryClickEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryName", "subcategoryName", "subcategoryId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSubcategoryClickEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55346b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f55347c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnSubcategoryClickEvent(String str, String str2, String str3) {
            super(null);
            cj.z(str, str2, str3);
            this.f55345a = str;
            this.f55346b = str2;
            this.f55347c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSubcategoryClickEvent)) {
                return false;
            }
            OnSubcategoryClickEvent onSubcategoryClickEvent = (OnSubcategoryClickEvent) obj;
            return Intrinsics.c(this.f55345a, onSubcategoryClickEvent.f55345a) && Intrinsics.c(this.f55346b, onSubcategoryClickEvent.f55346b) && Intrinsics.c(this.f55347c, onSubcategoryClickEvent.f55347c);
        }

        public final int hashCode() {
            return this.f55347c.hashCode() + fc.b(this.f55345a.hashCode() * 31, 31, this.f55346b);
        }

        public final String toString() {
            return n00.r(this.f55347c, ")", fc.s("OnSubcategoryClickEvent(categoryName=", this.f55345a, ", subcategoryName=", this.f55346b, ", subcategoryId="));
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnSubcategoryScrollEvent;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryName", "", "percentage", "<init>", "(Ljava/lang/String;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnSubcategoryScrollEvent extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f55349b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnSubcategoryScrollEvent(String str, int i2) {
            super(null);
            str.getClass();
            this.f55348a = str;
            this.f55349b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnSubcategoryScrollEvent)) {
                return false;
            }
            OnSubcategoryScrollEvent onSubcategoryScrollEvent = (OnSubcategoryScrollEvent) obj;
            return Intrinsics.c(this.f55348a, onSubcategoryScrollEvent.f55348a) && this.f55349b == onSubcategoryScrollEvent.f55349b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f55349b) + (this.f55348a.hashCode() * 31);
        }

        public final String toString() {
            return "OnSubcategoryScrollEvent(categoryName=" + this.f55348a + ", percentage=" + this.f55349b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$SubcategoryScreen;", "Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;", "", "categoryId", "categoryName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SubcategoryScreen extends CatalogTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f55350a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f55351b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubcategoryScreen(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f55350a = str;
            this.f55351b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubcategoryScreen)) {
                return false;
            }
            SubcategoryScreen subcategoryScreen = (SubcategoryScreen) obj;
            return Intrinsics.c(this.f55350a, subcategoryScreen.f55350a) && Intrinsics.c(this.f55351b, subcategoryScreen.f55351b);
        }

        public final int hashCode() {
            return this.f55351b.hashCode() + (this.f55350a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("SubcategoryScreen(categoryId=", this.f55350a, ", categoryName=", this.f55351b, ")");
        }
    }

    public CatalogTrackingUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
