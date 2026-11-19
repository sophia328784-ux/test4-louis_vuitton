package com.vuitton.foundation.model.domain.model.analytics;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:6\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./01234567\u0082\u0001689:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklm¨\u0006nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "AppointmentDate", "AppointmentId", "AppointmentSearch", "ArticleId", "BackOrderStatus", "CategoryId", "CategoryWithImage", "CertificateId", "ChannelId", "CollectionId", "ContentId", "ContentType", "Context", "CookieConsent", "Currency", "DigitalPurchaseId", "EntryPoint", "ErrorId", "ExclusiveSaleEligible", "ExperienceId", "FilterId", "Index", "InternalSearchKeywords", "LevelName", "LookId", "MarketingChannelType", "ModuleId", "NativeShare", "NumberOfAppointments", "NumberOfResults", "NumberOfTypedCharacters", "OnlineSellable", "OrderConfirmation", "OrderItem", "OrderReturnReasons", "Origin", "PrebookAppointmentDate", "PrebookAppointmentType", "Price", "ProductId", "ProductSku", "ProductStockStatus", "Quantity", "RetailPurchaseId", "SearchContext", "Sku", "StepId", "StoreId", "StoreMode", "StoreModeArticle", "TotalDigitalOrders", "TotalRetailOrders", "VirtualStudio", "VtoSkus", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AdditionalProperty {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "appointmentDate", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AppointmentDate implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66373a;

        public AppointmentDate(String str) {
            str.getClass();
            this.f66373a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AppointmentDate) && Intrinsics.c(this.f66373a, ((AppointmentDate) obj).f66373a);
        }

        public final int hashCode() {
            return this.f66373a.hashCode();
        }

        public final String toString() {
            return fc.h("AppointmentDate(appointmentDate=", this.f66373a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "appointmentId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AppointmentId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66374a;

        public AppointmentId(String str) {
            str.getClass();
            this.f66374a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AppointmentId) && Intrinsics.c(this.f66374a, ((AppointmentId) obj).f66374a);
        }

        public final int hashCode() {
            return this.f66374a.hashCode();
        }

        public final String toString() {
            return fc.h("AppointmentId(appointmentId=", this.f66374a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "appointmentSearch", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AppointmentSearch implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66375a;

        public AppointmentSearch(String str) {
            str.getClass();
            this.f66375a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AppointmentSearch) && Intrinsics.c(this.f66375a, ((AppointmentSearch) obj).f66375a);
        }

        public final int hashCode() {
            return this.f66375a.hashCode();
        }

        public final String toString() {
            return fc.h("AppointmentSearch(appointmentSearch=", this.f66375a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "articleId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ArticleId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66376a;

        public ArticleId(String str) {
            this.f66376a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ArticleId) && Intrinsics.c(this.f66376a, ((ArticleId) obj).f66376a);
        }

        public final int hashCode() {
            String str = this.f66376a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("ArticleId(articleId=", this.f66376a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$BackOrderStatus;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "backOrderStatus", "<init>", "(Ljava/lang/Boolean;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BackOrderStatus implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Boolean f66377a;

        public BackOrderStatus(Boolean bool) {
            this.f66377a = bool;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BackOrderStatus) && Intrinsics.c(this.f66377a, ((BackOrderStatus) obj).f66377a);
        }

        public final int hashCode() {
            Boolean bool = this.f66377a;
            if (bool == null) {
                return 0;
            }
            return bool.hashCode();
        }

        public final String toString() {
            return "BackOrderStatus(backOrderStatus=" + this.f66377a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "categoryId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CategoryId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66378a;

        public CategoryId(String str) {
            str.getClass();
            this.f66378a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CategoryId) && Intrinsics.c(this.f66378a, ((CategoryId) obj).f66378a);
        }

        public final int hashCode() {
            return this.f66378a.hashCode();
        }

        public final String toString() {
            return fc.h("CategoryId(categoryId=", this.f66378a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CategoryWithImage;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "hasImage", "<init>", "(Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CategoryWithImage implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f66379a;

        public CategoryWithImage(boolean z) {
            this.f66379a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CategoryWithImage) && this.f66379a == ((CategoryWithImage) obj).f66379a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f66379a);
        }

        public final String toString() {
            return tr.i("CategoryWithImage(hasImage=", ")", this.f66379a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "certificateId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CertificateId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66380a;

        public CertificateId(String str) {
            this.f66380a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CertificateId) && Intrinsics.c(this.f66380a, ((CertificateId) obj).f66380a);
        }

        public final int hashCode() {
            String str = this.f66380a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("CertificateId(certificateId=", this.f66380a, ")");
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "channelId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ChannelId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66381a;

        public ChannelId(String str) {
            str.getClass();
            this.f66381a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChannelId) && Intrinsics.c(this.f66381a, ((ChannelId) obj).f66381a);
        }

        public final int hashCode() {
            return this.f66381a.hashCode();
        }

        public final String toString() {
            return fc.h("ChannelId(channelId=", this.f66381a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CollectionId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "collectionId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CollectionId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66382a;

        public CollectionId(String str) {
            this.f66382a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CollectionId) && Intrinsics.c(this.f66382a, ((CollectionId) obj).f66382a);
        }

        public final int hashCode() {
            String str = this.f66382a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("CollectionId(collectionId=", this.f66382a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContentId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66383a;

        public ContentId(String str) {
            str.getClass();
            this.f66383a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContentId) && Intrinsics.c(this.f66383a, ((ContentId) obj).f66383a);
        }

        public final int hashCode() {
            return this.f66383a.hashCode();
        }

        public final String toString() {
            return fc.h("ContentId(id=", this.f66383a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "type", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContentType implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66384a;

        public ContentType(String str) {
            str.getClass();
            this.f66384a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ContentType) && Intrinsics.c(this.f66384a, ((ContentType) obj).f66384a);
        }

        public final int hashCode() {
            return this.f66384a.hashCode();
        }

        public final String toString() {
            return fc.h("ContentType(type=", this.f66384a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", MvelScriptManager.VAR_CONTEXT, "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Context implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66385a;

        public Context(String str) {
            str.getClass();
            this.f66385a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Context) && Intrinsics.c(this.f66385a, ((Context) obj).f66385a);
        }

        public final int hashCode() {
            return this.f66385a.hashCode();
        }

        public final String toString() {
            return fc.h("Context(context=", this.f66385a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Currency;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "currency", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Currency implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66390a;

        public Currency(String str) {
            str.getClass();
            this.f66390a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Currency) && Intrinsics.c(this.f66390a, ((Currency) obj).f66390a);
        }

        public final int hashCode() {
            return this.f66390a.hashCode();
        }

        public final String toString() {
            return fc.h("Currency(currency=", this.f66390a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "digitalPurchaseId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DigitalPurchaseId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66391a;

        public DigitalPurchaseId(String str) {
            str.getClass();
            this.f66391a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DigitalPurchaseId) && Intrinsics.c(this.f66391a, ((DigitalPurchaseId) obj).f66391a);
        }

        public final int hashCode() {
            return this.f66391a.hashCode();
        }

        public final String toString() {
            return fc.h("DigitalPurchaseId(digitalPurchaseId=", this.f66391a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "entryPoint", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EntryPoint implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66392a;

        public EntryPoint(String str) {
            str.getClass();
            this.f66392a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EntryPoint) && Intrinsics.c(this.f66392a, ((EntryPoint) obj).f66392a);
        }

        public final int hashCode() {
            return this.f66392a.hashCode();
        }

        public final String toString() {
            return fc.h("EntryPoint(entryPoint=", this.f66392a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "errorId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ErrorId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66393a;

        public ErrorId(String str) {
            str.getClass();
            this.f66393a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ErrorId) && Intrinsics.c(this.f66393a, ((ErrorId) obj).f66393a);
        }

        public final int hashCode() {
            return this.f66393a.hashCode();
        }

        public final String toString() {
            return fc.h("ErrorId(errorId=", this.f66393a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExclusiveSaleEligible;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "eligibility", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExclusiveSaleEligible implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66394a;

        public ExclusiveSaleEligible(String str) {
            str.getClass();
            this.f66394a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExclusiveSaleEligible) && Intrinsics.c(this.f66394a, ((ExclusiveSaleEligible) obj).f66394a);
        }

        public final int hashCode() {
            return this.f66394a.hashCode();
        }

        public final String toString() {
            return fc.h("ExclusiveSaleEligible(eligibility=", this.f66394a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "", "experienceIds", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExperienceId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66395a;

        public ExperienceId(List<String> list) {
            list.getClass();
            this.f66395a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExperienceId) && Intrinsics.c(this.f66395a, ((ExperienceId) obj).f66395a);
        }

        public final int hashCode() {
            return this.f66395a.hashCode();
        }

        public final String toString() {
            return d21.o("ExperienceId(experienceIds=", ")", this.f66395a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$FilterId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "filterId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FilterId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66396a;

        public FilterId(String str) {
            this.f66396a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FilterId) && Intrinsics.c(this.f66396a, ((FilterId) obj).f66396a);
        }

        public final int hashCode() {
            String str = this.f66396a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("FilterId(filterId=", this.f66396a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "index", "<init>", "(I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Index implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66397a;

        public Index(int i2) {
            this.f66397a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Index) && this.f66397a == ((Index) obj).f66397a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f66397a);
        }

        public final String toString() {
            return n00.m(this.f66397a, "Index(index=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "keywords", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InternalSearchKeywords implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66398a;

        public InternalSearchKeywords(String str) {
            this.f66398a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InternalSearchKeywords) && Intrinsics.c(this.f66398a, ((InternalSearchKeywords) obj).f66398a);
        }

        public final int hashCode() {
            String str = this.f66398a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("InternalSearchKeywords(keywords=", this.f66398a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "levelName", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LevelName implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66399a;

        public LevelName(String str) {
            str.getClass();
            this.f66399a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LevelName) && Intrinsics.c(this.f66399a, ((LevelName) obj).f66399a);
        }

        public final int hashCode() {
            return this.f66399a.hashCode();
        }

        public final String toString() {
            return fc.h("LevelName(levelName=", this.f66399a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "lookId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LookId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66400a;

        public LookId(String str) {
            this.f66400a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LookId) && Intrinsics.c(this.f66400a, ((LookId) obj).f66400a);
        }

        public final int hashCode() {
            String str = this.f66400a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("LookId(lookId=", this.f66400a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$MarketingChannelType;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "channelType", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class MarketingChannelType implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66401a;

        public MarketingChannelType(String str) {
            str.getClass();
            this.f66401a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MarketingChannelType) && Intrinsics.c(this.f66401a, ((MarketingChannelType) obj).f66401a);
        }

        public final int hashCode() {
            return this.f66401a.hashCode();
        }

        public final String toString() {
            return fc.h("MarketingChannelType(channelType=", this.f66401a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "moduleId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ModuleId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66402a;

        public ModuleId(String str) {
            this.f66402a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ModuleId) && Intrinsics.c(this.f66402a, ((ModuleId) obj).f66402a);
        }

        public final int hashCode() {
            String str = this.f66402a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("ModuleId(moduleId=", this.f66402a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NativeShare;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "isFromNativeShare", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NativeShare implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66403a;

        public NativeShare(String str) {
            str.getClass();
            this.f66403a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NativeShare) && Intrinsics.c(this.f66403a, ((NativeShare) obj).f66403a);
        }

        public final int hashCode() {
            return this.f66403a.hashCode();
        }

        public final String toString() {
            return fc.h("NativeShare(isFromNativeShare=", this.f66403a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", b.a.f24018f, "<init>", "(I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NumberOfAppointments implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66404a;

        public NumberOfAppointments(int i2) {
            this.f66404a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NumberOfAppointments) && this.f66404a == ((NumberOfAppointments) obj).f66404a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f66404a);
        }

        public final String toString() {
            return n00.m(this.f66404a, "NumberOfAppointments(count=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfResults;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", b.a.f24018f, "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NumberOfResults implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66405a;

        public NumberOfResults(String str) {
            str.getClass();
            this.f66405a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NumberOfResults) && Intrinsics.c(this.f66405a, ((NumberOfResults) obj).f66405a);
        }

        public final int hashCode() {
            return this.f66405a.hashCode();
        }

        public final String toString() {
            return fc.h("NumberOfResults(count=", this.f66405a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfTypedCharacters;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "charactersNumber", "<init>", "(I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NumberOfTypedCharacters implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66406a;

        public NumberOfTypedCharacters(int i2) {
            this.f66406a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NumberOfTypedCharacters) && this.f66406a == ((NumberOfTypedCharacters) obj).f66406a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f66406a);
        }

        public final String toString() {
            return n00.m(this.f66406a, "NumberOfTypedCharacters(charactersNumber=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OnlineSellable;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "onlineSellable", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnlineSellable implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66407a;

        public OnlineSellable(String str) {
            this.f66407a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnlineSellable) && Intrinsics.c(this.f66407a, ((OnlineSellable) obj).f66407a);
        }

        public final int hashCode() {
            String str = this.f66407a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("OnlineSellable(onlineSellable=", this.f66407a, ")");
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001By\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0002\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\b¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "", "prices", "totalAmount", "", "currency", "", "quantities", "shippingMethod", "shippingCountry", "shippingState", "shippingCost", "contentId", "transactionId", "cartId", "<init>", "(Ljava/util/List;Ljava/util/List;DLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderConfirmation implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66408a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f66409b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final double f66410c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f66411e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f66412f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f66413h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f66414i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f66415j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f66416k;
        public final String l;

        public OrderConfirmation(List<SkuId> list, List<Double> list2, double d, String str, List<Integer> list3, String str2, String str3, String str4, int i2, String str5, String str6, String str7) {
            list.getClass();
            list2.getClass();
            str.getClass();
            list3.getClass();
            str2.getClass();
            pq0.z(str3, str4, str5, str6, str7);
            this.f66408a = list;
            this.f66409b = list2;
            this.f66410c = d;
            this.d = str;
            this.f66411e = list3;
            this.f66412f = str2;
            this.g = str3;
            this.f66413h = str4;
            this.f66414i = i2;
            this.f66415j = str5;
            this.f66416k = str6;
            this.l = str7;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OrderConfirmation)) {
                return false;
            }
            OrderConfirmation orderConfirmation = (OrderConfirmation) obj;
            return Intrinsics.c(this.f66408a, orderConfirmation.f66408a) && Intrinsics.c(this.f66409b, orderConfirmation.f66409b) && Double.compare(this.f66410c, orderConfirmation.f66410c) == 0 && Intrinsics.c(this.d, orderConfirmation.d) && Intrinsics.c(this.f66411e, orderConfirmation.f66411e) && Intrinsics.c(this.f66412f, orderConfirmation.f66412f) && Intrinsics.c(this.g, orderConfirmation.g) && Intrinsics.c(this.f66413h, orderConfirmation.f66413h) && this.f66414i == orderConfirmation.f66414i && Intrinsics.c(this.f66415j, orderConfirmation.f66415j) && Intrinsics.c(this.f66416k, orderConfirmation.f66416k) && Intrinsics.c(this.l, orderConfirmation.l);
        }

        public final int hashCode() {
            return this.l.hashCode() + fc.b(fc.b(tr.b(this.f66414i, fc.b(fc.b(fc.b(n00.a(fc.b(d21.a(this.f66410c, n00.a(this.f66408a.hashCode() * 31, 31, this.f66409b), 31), 31, this.d), 31, this.f66411e), 31, this.f66412f), 31, this.g), 31, this.f66413h), 31), 31, this.f66415j), 31, this.f66416k);
        }

        public final String toString() {
            StringBuilder sbS = o60.s("OrderConfirmation(skus=", ", prices=", ", totalAmount=", this.f66408a, this.f66409b);
            sbS.append(this.f66410c);
            sbS.append(", currency=");
            sbS.append(this.d);
            sbS.append(", quantities=");
            sbS.append(this.f66411e);
            sbS.append(", shippingMethod=");
            sbS.append(this.f66412f);
            cj.C(sbS, ", shippingCountry=", this.g, ", shippingState=", this.f66413h);
            sbS.append(", shippingCost=");
            sbS.append(this.f66414i);
            sbS.append(", contentId=");
            sbS.append(this.f66415j);
            cj.C(sbS, ", transactionId=", this.f66416k, ", cartId=", this.l);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "", "reasons", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderReturnReasons implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66423a;

        public OrderReturnReasons(List<String> list) {
            list.getClass();
            this.f66423a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OrderReturnReasons) && Intrinsics.c(this.f66423a, ((OrderReturnReasons) obj).f66423a);
        }

        public final int hashCode() {
            return this.f66423a.hashCode();
        }

        public final String toString() {
            return d21.o("OrderReturnReasons(reasons=", ")", this.f66423a);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "origin", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Origin implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66424a;

        public Origin(String str) {
            str.getClass();
            this.f66424a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Origin) && Intrinsics.c(this.f66424a, ((Origin) obj).f66424a);
        }

        public final int hashCode() {
            return this.f66424a.hashCode();
        }

        public final String toString() {
            return fc.h("Origin(origin=", this.f66424a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "appointmentDate", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PrebookAppointmentDate implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66425a;

        public PrebookAppointmentDate(String str) {
            str.getClass();
            this.f66425a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PrebookAppointmentDate) && Intrinsics.c(this.f66425a, ((PrebookAppointmentDate) obj).f66425a);
        }

        public final int hashCode() {
            return this.f66425a.hashCode();
        }

        public final String toString() {
            return fc.h("PrebookAppointmentDate(appointmentDate=", this.f66425a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "appointmentType", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PrebookAppointmentType implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66426a;

        public PrebookAppointmentType(String str) {
            str.getClass();
            this.f66426a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PrebookAppointmentType) && Intrinsics.c(this.f66426a, ((PrebookAppointmentType) obj).f66426a);
        }

        public final int hashCode() {
            return this.f66426a.hashCode();
        }

        public final String toString() {
            return fc.h("PrebookAppointmentType(appointmentType=", this.f66426a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "price", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Price implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66427a;

        public Price(String str) {
            str.getClass();
            this.f66427a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Price) && Intrinsics.c(this.f66427a, ((Price) obj).f66427a);
        }

        public final int hashCode() {
            return this.f66427a.hashCode();
        }

        public final String toString() {
            return fc.h("Price(price=", this.f66427a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66428a;

        public ProductId(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this.f66428a = str;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0016  */
        public final boolean equals(Object obj) {
            boolean zC;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductId)) {
                return false;
            }
            String str = ((ProductId) obj).f66428a;
            String str2 = this.f66428a;
            if (str2 == null) {
                if (str == null) {
                    zC = true;
                } else {
                    zC = false;
                }
            } else if (str == null) {
                zC = false;
            } else {
                com.vuitton.foundation.model.domain.model.product.ProductId.Companion companion = com.vuitton.foundation.model.domain.model.product.ProductId.INSTANCE;
                zC = Intrinsics.c(str2, str);
            }
            return zC;
        }

        public final int hashCode() {
            String str = this.f66428a;
            if (str == null) {
                return 0;
            }
            com.vuitton.foundation.model.domain.model.product.ProductId.Companion companion = com.vuitton.foundation.model.domain.model.product.ProductId.INSTANCE;
            return str.hashCode();
        }

        public final String toString() {
            String str = this.f66428a;
            if (str == null) {
                str = "null";
            } else {
                com.vuitton.foundation.model.domain.model.product.ProductId.Companion companion = com.vuitton.foundation.model.domain.model.product.ProductId.INSTANCE;
            }
            return fc.h("ProductId(productId=", str, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductSku implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66429a;

        public ProductSku(List<SkuId> list) {
            list.getClass();
            this.f66429a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductSku) && Intrinsics.c(this.f66429a, ((ProductSku) obj).f66429a);
        }

        public final int hashCode() {
            return this.f66429a.hashCode();
        }

        public final String toString() {
            return d21.o("ProductSku(sku=", ")", this.f66429a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductStockStatus;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "status", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductStockStatus implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66430a;

        public ProductStockStatus(String str) {
            this.f66430a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductStockStatus) && Intrinsics.c(this.f66430a, ((ProductStockStatus) obj).f66430a);
        }

        public final int hashCode() {
            String str = this.f66430a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("ProductStockStatus(status=", this.f66430a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "quantity", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Quantity implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66431a;

        public Quantity(String str) {
            str.getClass();
            this.f66431a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Quantity) && Intrinsics.c(this.f66431a, ((Quantity) obj).f66431a);
        }

        public final int hashCode() {
            return this.f66431a.hashCode();
        }

        public final String toString() {
            return fc.h("Quantity(quantity=", this.f66431a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "retailPurchaseId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RetailPurchaseId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66432a;

        public RetailPurchaseId(String str) {
            str.getClass();
            this.f66432a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RetailPurchaseId) && Intrinsics.c(this.f66432a, ((RetailPurchaseId) obj).f66432a);
        }

        public final int hashCode() {
            return this.f66432a.hashCode();
        }

        public final String toString() {
            return fc.h("RetailPurchaseId(retailPurchaseId=", this.f66432a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$SearchContext;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "searchContext", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SearchContext implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66433a;

        public SearchContext(String str) {
            str.getClass();
            this.f66433a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SearchContext) && Intrinsics.c(this.f66433a, ((SearchContext) obj).f66433a);
        }

        public final int hashCode() {
            return this.f66433a.hashCode();
        }

        public final String toString() {
            return fc.h("SearchContext(searchContext=", this.f66433a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Sku implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66434a;

        public Sku(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f66434a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Sku)) {
                return false;
            }
            String str = ((Sku) obj).f66434a;
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f66434a.equals(str);
        }

        public final int hashCode() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return this.f66434a.hashCode();
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return fc.h("Sku(sku=", this.f66434a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "stepId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StepId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66435a;

        public StepId(String str) {
            str.getClass();
            this.f66435a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StepId) && Intrinsics.c(this.f66435a, ((StepId) obj).f66435a);
        }

        public final int hashCode() {
            return this.f66435a.hashCode();
        }

        public final String toString() {
            return fc.h("StepId(stepId=", this.f66435a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "storeId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreId implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66436a;

        public StoreId(String str) {
            str.getClass();
            this.f66436a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoreId) && Intrinsics.c(this.f66436a, ((StoreId) obj).f66436a);
        }

        public final int hashCode() {
            return this.f66436a.hashCode();
        }

        public final String toString() {
            return fc.h("StoreId(storeId=", this.f66436a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "rmsCode", "", "isStoreMode", "<init>", "(Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreMode implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f66438b;

        public StoreMode(String str, boolean z) {
            str.getClass();
            this.f66437a = str;
            this.f66438b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoreMode)) {
                return false;
            }
            StoreMode storeMode = (StoreMode) obj;
            return Intrinsics.c(this.f66437a, storeMode.f66437a) && this.f66438b == storeMode.f66438b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f66438b) + (this.f66437a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("StoreMode(rmsCode=", this.f66437a, ", isStoreMode=", ")", this.f66438b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "articleIdentifier", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreModeArticle implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66439a;

        public StoreModeArticle(String str) {
            str.getClass();
            this.f66439a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoreModeArticle) && Intrinsics.c(this.f66439a, ((StoreModeArticle) obj).f66439a);
        }

        public final int hashCode() {
            return this.f66439a.hashCode();
        }

        public final String toString() {
            return fc.h("StoreModeArticle(articleIdentifier=", this.f66439a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "totalDigitalOrders", "<init>", "(I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TotalDigitalOrders implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66440a;

        public TotalDigitalOrders(int i2) {
            this.f66440a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TotalDigitalOrders) && this.f66440a == ((TotalDigitalOrders) obj).f66440a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f66440a);
        }

        public final String toString() {
            return n00.m(this.f66440a, "TotalDigitalOrders(totalDigitalOrders=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "totalRetailOrders", "<init>", "(I)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TotalRetailOrders implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66441a;

        public TotalRetailOrders(int i2) {
            this.f66441a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TotalRetailOrders) && this.f66441a == ((TotalRetailOrders) obj).f66441a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f66441a);
        }

        public final String toString() {
            return n00.m(this.f66441a, "TotalRetailOrders(totalRetailOrders=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "isVirtualStudio", "<init>", "(Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VirtualStudio implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f66442a;

        public VirtualStudio(boolean z) {
            this.f66442a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VirtualStudio) && this.f66442a == ((VirtualStudio) obj).f66442a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f66442a);
        }

        public final String toString() {
            return tr.i("VirtualStudio(isVirtualStudio=", ")", this.f66442a);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "vtoSkus", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class VtoSkus implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66443a;

        public VtoSkus(List<SkuId> list) {
            list.getClass();
            this.f66443a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VtoSkus) && Intrinsics.c(this.f66443a, ((VtoSkus) obj).f66443a);
        }

        public final int hashCode() {
            return this.f66443a.hashCode();
        }

        public final String toString() {
            return d21.o("VtoSkus(vtoSkus=", ")", this.f66443a);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CookieConsent;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "functional", "analytics", "customization", "advertising", "augmentedReality", "<init>", "(ZZZZLjava/lang/Boolean;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CookieConsent implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f66386a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f66387b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f66388c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Boolean f66389e;

        public /* synthetic */ CookieConsent(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, z2, z3, z4, (i2 & 16) != 0 ? null : bool);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CookieConsent)) {
                return false;
            }
            CookieConsent cookieConsent = (CookieConsent) obj;
            return this.f66386a == cookieConsent.f66386a && this.f66387b == cookieConsent.f66387b && this.f66388c == cookieConsent.f66388c && this.d == cookieConsent.d && Intrinsics.c(this.f66389e, cookieConsent.f66389e);
        }

        public final int hashCode() {
            int iB = o60.b(o60.b(o60.b(Boolean.hashCode(this.f66386a) * 31, 31, this.f66387b), 31, this.f66388c), 31, this.d);
            Boolean bool = this.f66389e;
            return iB + (bool == null ? 0 : bool.hashCode());
        }

        public final String toString() {
            StringBuilder sbM = cj.m("CookieConsent(functional=", ", analytics=", ", customization=", this.f66386a, this.f66387b);
            fc.y(sbM, this.f66388c, ", advertising=", this.d, ", augmentedReality=");
            sbM.append(this.f66389e);
            sbM.append(")");
            return sbM.toString();
        }

        public CookieConsent(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool) {
            this.f66386a = z;
            this.f66387b = z2;
            this.f66388c = z3;
            this.d = z4;
            this.f66389e = bool;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "", "transactionId", "shippingType", "statusId", "totalAmount", "price", "sku", "", "quantity", "shippingAddressStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderItem implements AdditionalProperty {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66418b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66419c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f66420e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f66421f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f66422h;

        public /* synthetic */ OrderItem(String str, String str2, String str3, String str4, String str5, String str6, int i2, String str7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, str4, str5, str6, (i3 & 64) != 0 ? 1 : i2, (i3 & 128) != 0 ? "single_shipment" : str7);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OrderItem)) {
                return false;
            }
            OrderItem orderItem = (OrderItem) obj;
            return Intrinsics.c(this.f66417a, orderItem.f66417a) && Intrinsics.c(this.f66418b, orderItem.f66418b) && Intrinsics.c(this.f66419c, orderItem.f66419c) && Intrinsics.c(this.d, orderItem.d) && Intrinsics.c(this.f66420e, orderItem.f66420e) && Intrinsics.c(this.f66421f, orderItem.f66421f) && this.g == orderItem.g && Intrinsics.c(this.f66422h, orderItem.f66422h);
        }

        public final int hashCode() {
            return this.f66422h.hashCode() + tr.b(this.g, fc.b(fc.b(fc.b(fc.b(fc.b(this.f66417a.hashCode() * 31, 31, this.f66418b), 31, this.f66419c), 31, this.d), 31, this.f66420e), 31, this.f66421f), 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("OrderItem(transactionId=", this.f66417a, ", shippingType=", this.f66418b, ", statusId=");
            cj.C(sbS, this.f66419c, ", totalAmount=", this.d, ", price=");
            cj.C(sbS, this.f66420e, ", sku=", this.f66421f, ", quantity=");
            sbS.append(this.g);
            sbS.append(", shippingAddressStatus=");
            sbS.append(this.f66422h);
            sbS.append(")");
            return sbS.toString();
        }

        public OrderItem(String str, String str2, String str3, String str4, String str5, String str6, int i2, String str7) {
            pq0.z(str, str2, str3, str4, str5);
            str6.getClass();
            str7.getClass();
            this.f66417a = str;
            this.f66418b = str2;
            this.f66419c = str3;
            this.d = str4;
            this.f66420e = str5;
            this.f66421f = str6;
            this.g = i2;
            this.f66422h = str7;
        }
    }
}
