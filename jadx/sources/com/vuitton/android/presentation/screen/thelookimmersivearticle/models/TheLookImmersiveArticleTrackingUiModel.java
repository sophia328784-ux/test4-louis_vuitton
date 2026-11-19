package com.vuitton.android.presentation.screen.thelookimmersivearticle.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "ExploreLookScreenImmersiveArticle", "LookGridScreenImmersiveArticle", "LookScreenImmersiveArticle", "BackEventImmersiveArticle", "ShopTheLookImmersiveArticle", "ShareLookImmersiveArticle", "ProductImageImmersiveArticle", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$BackEventImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ExploreLookScreenImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$LookGridScreenImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$LookScreenImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ProductImageImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ShareLookImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ShopTheLookImmersiveArticle;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleTrackingUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$BackEventImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "articleKey", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BackEventImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65380a;

        public BackEventImmersiveArticle(String str) {
            super(null);
            this.f65380a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BackEventImmersiveArticle) && Intrinsics.c(this.f65380a, ((BackEventImmersiveArticle) obj).f65380a);
        }

        public final int hashCode() {
            String str = this.f65380a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("BackEventImmersiveArticle(articleKey=", this.f65380a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ExploreLookScreenImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ExploreLookScreenImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65381a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65382b;

        public ExploreLookScreenImmersiveArticle(String str, String str2) {
            super(null);
            this.f65381a = str;
            this.f65382b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExploreLookScreenImmersiveArticle)) {
                return false;
            }
            ExploreLookScreenImmersiveArticle exploreLookScreenImmersiveArticle = (ExploreLookScreenImmersiveArticle) obj;
            return Intrinsics.c(this.f65381a, exploreLookScreenImmersiveArticle.f65381a) && Intrinsics.c(this.f65382b, exploreLookScreenImmersiveArticle.f65382b);
        }

        public final int hashCode() {
            String str = this.f65381a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65382b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("ExploreLookScreenImmersiveArticle(articleKey=", this.f65381a, ", moduleKey=", this.f65382b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$LookGridScreenImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "articleKey", "moduleKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LookGridScreenImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65384b;

        public LookGridScreenImmersiveArticle(String str, String str2) {
            super(null);
            this.f65383a = str;
            this.f65384b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LookGridScreenImmersiveArticle)) {
                return false;
            }
            LookGridScreenImmersiveArticle lookGridScreenImmersiveArticle = (LookGridScreenImmersiveArticle) obj;
            return Intrinsics.c(this.f65383a, lookGridScreenImmersiveArticle.f65383a) && Intrinsics.c(this.f65384b, lookGridScreenImmersiveArticle.f65384b);
        }

        public final int hashCode() {
            String str = this.f65383a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65384b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("LookGridScreenImmersiveArticle(articleKey=", this.f65383a, ", moduleKey=", this.f65384b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$LookScreenImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "articleKey", "lookId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LookScreenImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65386b;

        public LookScreenImmersiveArticle(String str, String str2) {
            super(null);
            this.f65385a = str;
            this.f65386b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LookScreenImmersiveArticle)) {
                return false;
            }
            LookScreenImmersiveArticle lookScreenImmersiveArticle = (LookScreenImmersiveArticle) obj;
            return Intrinsics.c(this.f65385a, lookScreenImmersiveArticle.f65385a) && Intrinsics.c(this.f65386b, lookScreenImmersiveArticle.f65386b);
        }

        public final int hashCode() {
            String str = this.f65385a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65386b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("LookScreenImmersiveArticle(articleKey=", this.f65385a, ", lookId=", this.f65386b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ProductImageImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "articleKey", "lookId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductImageImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65387a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65388b;

        public ProductImageImmersiveArticle(String str, String str2) {
            super(null);
            this.f65387a = str;
            this.f65388b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductImageImmersiveArticle)) {
                return false;
            }
            ProductImageImmersiveArticle productImageImmersiveArticle = (ProductImageImmersiveArticle) obj;
            return Intrinsics.c(this.f65387a, productImageImmersiveArticle.f65387a) && Intrinsics.c(this.f65388b, productImageImmersiveArticle.f65388b);
        }

        public final int hashCode() {
            String str = this.f65387a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65388b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("ProductImageImmersiveArticle(articleKey=", this.f65387a, ", lookId=", this.f65388b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ShareLookImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "", "articleKey", "lookId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShareLookImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65390b;

        public ShareLookImmersiveArticle(String str, String str2) {
            super(null);
            this.f65389a = str;
            this.f65390b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShareLookImmersiveArticle)) {
                return false;
            }
            ShareLookImmersiveArticle shareLookImmersiveArticle = (ShareLookImmersiveArticle) obj;
            return Intrinsics.c(this.f65389a, shareLookImmersiveArticle.f65389a) && Intrinsics.c(this.f65390b, shareLookImmersiveArticle.f65390b);
        }

        public final int hashCode() {
            String str = this.f65389a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f65390b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("ShareLookImmersiveArticle(articleKey=", this.f65389a, ", lookId=", this.f65390b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$ShopTheLookImmersiveArticle;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "lookId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ShopTheLookImmersiveArticle extends TheLookImmersiveArticleTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f65391a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShopTheLookImmersiveArticle(String str, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            this.f65391a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShopTheLookImmersiveArticle)) {
                return false;
            }
            String str = ((ShopTheLookImmersiveArticle) obj).f65391a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f65391a, str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f65391a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ShopTheLookImmersiveArticle(lookId=", this.f65391a, ")");
        }
    }

    public TheLookImmersiveArticleTrackingUiModel(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
