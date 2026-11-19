package com.vuitton.foundation.model.domain.model.common.editorial;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.Icon;
import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u000e\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0082\u0001\u000e\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", "Card", "Event", "Live", "HighlightCard", "SlideShow", "CarouselMedium", "CarouselLargeMultiple", "CarouselLargeSingle", "Authentication", "Contactability", "CarouselSmall", "GridSmall", "PushCard", "ProductCarousel", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialModule {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Authentication;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Authentication extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67156c;
        public final AssetImage d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Authentication(String str, String str2, String str3, AssetImage assetImage) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            assetImage.getClass();
            this.f67154a = str;
            this.f67155b = str2;
            this.f67156c = str3;
            this.d = assetImage;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Authentication)) {
                return false;
            }
            Authentication authentication = (Authentication) obj;
            return Intrinsics.c(this.f67154a, authentication.f67154a) && Intrinsics.c(this.f67155b, authentication.f67155b) && Intrinsics.c(this.f67156c, authentication.f67156c) && Intrinsics.c(this.d, authentication.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(fc.b(this.f67154a.hashCode() * 31, 31, this.f67155b), 31, this.f67156c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Authentication(id=", this.f67154a, ", title=", this.f67155b, ", description=");
            sbS.append(this.f67156c);
            sbS.append(", image=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselSmall;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;", "header", "Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;", "algorithm", "", "skus", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselSmall extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67172a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Header f67173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AlgorithmType f67174c;
        public final List d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselSmall(String str, Header header, AlgorithmType algorithmType, List<String> list) {
            super(null);
            str.getClass();
            algorithmType.getClass();
            this.f67172a = str;
            this.f67173b = header;
            this.f67174c = algorithmType;
            this.d = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselSmall)) {
                return false;
            }
            CarouselSmall carouselSmall = (CarouselSmall) obj;
            return Intrinsics.c(this.f67172a, carouselSmall.f67172a) && Intrinsics.c(this.f67173b, carouselSmall.f67173b) && this.f67174c == carouselSmall.f67174c && Intrinsics.c(this.d, carouselSmall.d);
        }

        public final int hashCode() {
            int iHashCode = this.f67172a.hashCode() * 31;
            Header header = this.f67173b;
            int iHashCode2 = (this.f67174c.hashCode() + ((iHashCode + (header == null ? 0 : header.hashCode())) * 31)) * 31;
            List list = this.d;
            return iHashCode2 + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            return "CarouselSmall(id=" + this.f67172a + ", header=" + this.f67173b + ", algorithm=" + this.f67174c + ", skus=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Contactability;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Contactability extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetImage f67176b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Contactability(String str, AssetImage assetImage) {
            super(null);
            str.getClass();
            assetImage.getClass();
            this.f67175a = str;
            this.f67176b = assetImage;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Contactability)) {
                return false;
            }
            Contactability contactability = (Contactability) obj;
            return Intrinsics.c(this.f67175a, contactability.f67175a) && Intrinsics.c(this.f67176b, contactability.f67176b);
        }

        public final int hashCode() {
            return this.f67176b.hashCode() + (this.f67175a.hashCode() * 31);
        }

        public final String toString() {
            return "Contactability(id=" + this.f67175a + ", image=" + this.f67176b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$GridSmall;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;", "header", "Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;", "algorithm", "", "skus", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class GridSmall extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67182a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Header f67183b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AlgorithmType f67184c;
        public final List d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridSmall(String str, Header header, AlgorithmType algorithmType, List<String> list) {
            super(null);
            str.getClass();
            algorithmType.getClass();
            this.f67182a = str;
            this.f67183b = header;
            this.f67184c = algorithmType;
            this.d = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GridSmall)) {
                return false;
            }
            GridSmall gridSmall = (GridSmall) obj;
            return Intrinsics.c(this.f67182a, gridSmall.f67182a) && Intrinsics.c(this.f67183b, gridSmall.f67183b) && this.f67184c == gridSmall.f67184c && Intrinsics.c(this.d, gridSmall.d);
        }

        public final int hashCode() {
            int iHashCode = this.f67182a.hashCode() * 31;
            Header header = this.f67183b;
            int iHashCode2 = (this.f67184c.hashCode() + ((iHashCode + (header == null ? 0 : header.hashCode())) * 31)) * 31;
            List list = this.d;
            return iHashCode2 + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            return "GridSmall(id=" + this.f67182a + ", header=" + this.f67183b + ", algorithm=" + this.f67184c + ", skus=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductCarousel extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f67196b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductCarousel(String str, List<SkuId> list) {
            super(null);
            str.getClass();
            list.getClass();
            this.f67195a = str;
            this.f67196b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductCarousel)) {
                return false;
            }
            ProductCarousel productCarousel = (ProductCarousel) obj;
            return Intrinsics.c(this.f67195a, productCarousel.f67195a) && Intrinsics.c(this.f67196b, productCarousel.f67196b);
        }

        public final int hashCode() {
            return this.f67196b.hashCode() + (this.f67195a.hashCode() * 31);
        }

        public final String toString() {
            return cj.k("ProductCarousel(id=", this.f67195a, ", skus=", this.f67196b, ")");
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$PushCard;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "Lcom/vuitton/foundation/model/domain/model/common/Icon;", "icon", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Icon;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PushCard extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67199c;
        public final ContributionLink d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Icon f67200e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AssetImage f67201f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PushCard(String str, String str2, String str3, ContributionLink contributionLink, Icon icon, AssetImage assetImage) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            contributionLink.getClass();
            this.f67197a = str;
            this.f67198b = str2;
            this.f67199c = str3;
            this.d = contributionLink;
            this.f67200e = icon;
            this.f67201f = assetImage;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PushCard)) {
                return false;
            }
            PushCard pushCard = (PushCard) obj;
            return Intrinsics.c(this.f67197a, pushCard.f67197a) && Intrinsics.c(this.f67198b, pushCard.f67198b) && Intrinsics.c(this.f67199c, pushCard.f67199c) && Intrinsics.c(this.d, pushCard.d) && this.f67200e == pushCard.f67200e && Intrinsics.c(this.f67201f, pushCard.f67201f);
        }

        public final int hashCode() {
            int iHashCode = (this.d.hashCode() + fc.b(fc.b(this.f67197a.hashCode() * 31, 31, this.f67198b), 31, this.f67199c)) * 31;
            Icon icon = this.f67200e;
            int iHashCode2 = (iHashCode + (icon == null ? 0 : icon.hashCode())) * 31;
            AssetImage assetImage = this.f67201f;
            return iHashCode2 + (assetImage != null ? assetImage.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("PushCard(id=", this.f67197a, ", title=", this.f67198b, ", description=");
            sbS.append(this.f67199c);
            sbS.append(", link=");
            sbS.append(this.d);
            sbS.append(", icon=");
            sbS.append(this.f67200e);
            sbS.append(", image=");
            sbS.append(this.f67201f);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public EditorialModule(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$SlideShow;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "title", "", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;", "slides", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SlideShow extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67202a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f67204c;
        public final Targeting d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SlideShow(String str, String str2, List<EditorialModuleSlide> list, Targeting targeting) {
            super(null);
            pq0.B(str, str2, list);
            this.f67202a = str;
            this.f67203b = str2;
            this.f67204c = list;
            this.d = targeting;
        }

        public static SlideShow a(SlideShow slideShow, ArrayList arrayList) {
            String str = slideShow.f67202a;
            String str2 = slideShow.f67203b;
            Targeting targeting = slideShow.d;
            str.getClass();
            str2.getClass();
            return new SlideShow(str, str2, arrayList, targeting);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SlideShow)) {
                return false;
            }
            SlideShow slideShow = (SlideShow) obj;
            return Intrinsics.c(this.f67202a, slideShow.f67202a) && Intrinsics.c(this.f67203b, slideShow.f67203b) && Intrinsics.c(this.f67204c, slideShow.f67204c) && Intrinsics.c(this.d, slideShow.d);
        }

        public final int hashCode() {
            int iA = n00.a(fc.b(this.f67202a.hashCode() * 31, 31, this.f67203b), 31, this.f67204c);
            Targeting targeting = this.d;
            return iA + (targeting == null ? 0 : targeting.f67220a.hashCode());
        }

        public final String toString() {
            StringBuilder sbS = fc.s("SlideShow(id=", this.f67202a, ", title=", this.f67203b, ", slides=");
            sbS.append(this.f67204c);
            sbS.append(", targeting=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ SlideShow(String str, String str2, List list, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, list, (i2 & 8) != 0 ? null : targeting);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeMultiple;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;", "titles", "", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;", "slides", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselLargeMultiple extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitles f67163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f67164c;
        public final Targeting d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselLargeMultiple(String str, EditorialModuleTitles editorialModuleTitles, List<EditorialModuleSlide> list, Targeting targeting) {
            super(null);
            str.getClass();
            list.getClass();
            this.f67162a = str;
            this.f67163b = editorialModuleTitles;
            this.f67164c = list;
            this.d = targeting;
        }

        public static CarouselLargeMultiple a(CarouselLargeMultiple carouselLargeMultiple, ArrayList arrayList) {
            String str = carouselLargeMultiple.f67162a;
            EditorialModuleTitles editorialModuleTitles = carouselLargeMultiple.f67163b;
            Targeting targeting = carouselLargeMultiple.d;
            str.getClass();
            return new CarouselLargeMultiple(str, editorialModuleTitles, arrayList, targeting);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselLargeMultiple)) {
                return false;
            }
            CarouselLargeMultiple carouselLargeMultiple = (CarouselLargeMultiple) obj;
            return Intrinsics.c(this.f67162a, carouselLargeMultiple.f67162a) && Intrinsics.c(this.f67163b, carouselLargeMultiple.f67163b) && Intrinsics.c(this.f67164c, carouselLargeMultiple.f67164c) && Intrinsics.c(this.d, carouselLargeMultiple.d);
        }

        public final int hashCode() {
            int iHashCode = this.f67162a.hashCode() * 31;
            EditorialModuleTitles editorialModuleTitles = this.f67163b;
            int iA = n00.a((iHashCode + (editorialModuleTitles == null ? 0 : editorialModuleTitles.hashCode())) * 31, 31, this.f67164c);
            Targeting targeting = this.d;
            return iA + (targeting != null ? targeting.f67220a.hashCode() : 0);
        }

        public final String toString() {
            return "CarouselLargeMultiple(id=" + this.f67162a + ", titles=" + this.f67163b + ", slides=" + this.f67164c + ", targeting=" + this.d + ")";
        }

        public /* synthetic */ CarouselLargeMultiple(String str, EditorialModuleTitles editorialModuleTitles, List list, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : editorialModuleTitles, list, (i2 & 8) != 0 ? null : targeting);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "title", "", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlide;", "slides", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselMedium extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67169a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f67171c;
        public final Targeting d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselMedium(String str, String str2, List<EditorialModuleSlide> list, Targeting targeting) {
            super(null);
            str.getClass();
            list.getClass();
            this.f67169a = str;
            this.f67170b = str2;
            this.f67171c = list;
            this.d = targeting;
        }

        public static CarouselMedium a(CarouselMedium carouselMedium, ArrayList arrayList) {
            String str = carouselMedium.f67169a;
            String str2 = carouselMedium.f67170b;
            Targeting targeting = carouselMedium.d;
            str.getClass();
            return new CarouselMedium(str, str2, arrayList, targeting);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselMedium)) {
                return false;
            }
            CarouselMedium carouselMedium = (CarouselMedium) obj;
            return Intrinsics.c(this.f67169a, carouselMedium.f67169a) && Intrinsics.c(this.f67170b, carouselMedium.f67170b) && Intrinsics.c(this.f67171c, carouselMedium.f67171c) && Intrinsics.c(this.d, carouselMedium.d);
        }

        public final int hashCode() {
            int iHashCode = this.f67169a.hashCode() * 31;
            String str = this.f67170b;
            int iA = n00.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f67171c);
            Targeting targeting = this.d;
            return iA + (targeting != null ? targeting.f67220a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("CarouselMedium(id=", this.f67169a, ", title=", this.f67170b, ", slides=");
            sbS.append(this.f67171c);
            sbS.append(", targeting=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ CarouselMedium(String str, String str2, List list, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, list, (i2 & 8) != 0 ? null : targeting);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$HighlightCard;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HighlightCard extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67185a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67187c;
        public final AssetImage d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Targeting f67188e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HighlightCard(String str, String str2, String str3, AssetImage assetImage, Targeting targeting) {
            super(null);
            str.getClass();
            str3.getClass();
            this.f67185a = str;
            this.f67186b = str2;
            this.f67187c = str3;
            this.d = assetImage;
            this.f67188e = targeting;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HighlightCard)) {
                return false;
            }
            HighlightCard highlightCard = (HighlightCard) obj;
            return Intrinsics.c(this.f67185a, highlightCard.f67185a) && Intrinsics.c(this.f67186b, highlightCard.f67186b) && Intrinsics.c(this.f67187c, highlightCard.f67187c) && Intrinsics.c(this.d, highlightCard.d) && Intrinsics.c(this.f67188e, highlightCard.f67188e);
        }

        public final int hashCode() {
            int iHashCode = this.f67185a.hashCode() * 31;
            String str = this.f67186b;
            int iB = fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f67187c);
            AssetImage assetImage = this.d;
            int iHashCode2 = (iB + (assetImage == null ? 0 : assetImage.hashCode())) * 31;
            Targeting targeting = this.f67188e;
            return iHashCode2 + (targeting != null ? targeting.f67220a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("HighlightCard(id=", this.f67185a, ", title=", this.f67186b, ", description=");
            sbS.append(this.f67187c);
            sbS.append(", image=");
            sbS.append(this.d);
            sbS.append(", targeting=");
            sbS.append(this.f67188e);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ HighlightCard(String str, String str2, String str3, AssetImage assetImage, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, str3, (i2 & 8) != 0 ? null : assetImage, (i2 & 16) != 0 ? null : targeting);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselLargeSingle;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;", "titles", "", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleSlideSingle;", "slides", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CarouselLargeSingle extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitles f67166b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f67167c;
        public final Targeting d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ContributionLink f67168e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselLargeSingle(String str, EditorialModuleTitles editorialModuleTitles, List<EditorialModuleSlideSingle> list, Targeting targeting, ContributionLink contributionLink) {
            super(null);
            str.getClass();
            list.getClass();
            contributionLink.getClass();
            this.f67165a = str;
            this.f67166b = editorialModuleTitles;
            this.f67167c = list;
            this.d = targeting;
            this.f67168e = contributionLink;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselLargeSingle)) {
                return false;
            }
            CarouselLargeSingle carouselLargeSingle = (CarouselLargeSingle) obj;
            return Intrinsics.c(this.f67165a, carouselLargeSingle.f67165a) && Intrinsics.c(this.f67166b, carouselLargeSingle.f67166b) && Intrinsics.c(this.f67167c, carouselLargeSingle.f67167c) && Intrinsics.c(this.d, carouselLargeSingle.d) && Intrinsics.c(this.f67168e, carouselLargeSingle.f67168e);
        }

        public final int hashCode() {
            int iHashCode = this.f67165a.hashCode() * 31;
            EditorialModuleTitles editorialModuleTitles = this.f67166b;
            int iA = n00.a((iHashCode + (editorialModuleTitles == null ? 0 : editorialModuleTitles.hashCode())) * 31, 31, this.f67167c);
            Targeting targeting = this.d;
            return this.f67168e.hashCode() + ((iA + (targeting != null ? targeting.f67220a.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "CarouselLargeSingle(id=" + this.f67165a + ", titles=" + this.f67166b + ", slides=" + this.f67167c + ", targeting=" + this.d + ", link=" + this.f67168e + ")";
        }

        public /* synthetic */ CarouselLargeSingle(String str, EditorialModuleTitles editorialModuleTitles, List list, Targeting targeting, ContributionLink contributionLink, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : editorialModuleTitles, list, (i2 & 8) != 0 ? null : targeting, contributionLink);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Card;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;", "titles", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;", "assetLayout", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;", "ratio", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/AssetLayout;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Card extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67157a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitles f67158b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ContributionLink f67159c;
        public final Asset d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AssetLayout f67160e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Ratio f67161f;
        public final Targeting g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Card(String str, EditorialModuleTitles editorialModuleTitles, ContributionLink contributionLink, Asset asset, AssetLayout assetLayout, Ratio ratio, Targeting targeting) {
            super(null);
            str.getClass();
            asset.getClass();
            assetLayout.getClass();
            ratio.getClass();
            this.f67157a = str;
            this.f67158b = editorialModuleTitles;
            this.f67159c = contributionLink;
            this.d = asset;
            this.f67160e = assetLayout;
            this.f67161f = ratio;
            this.g = targeting;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Card)) {
                return false;
            }
            Card card = (Card) obj;
            return Intrinsics.c(this.f67157a, card.f67157a) && Intrinsics.c(this.f67158b, card.f67158b) && Intrinsics.c(this.f67159c, card.f67159c) && Intrinsics.c(this.d, card.d) && this.f67160e == card.f67160e && this.f67161f == card.f67161f && Intrinsics.c(this.g, card.g);
        }

        public final int hashCode() {
            int iHashCode = this.f67157a.hashCode() * 31;
            EditorialModuleTitles editorialModuleTitles = this.f67158b;
            int iHashCode2 = (iHashCode + (editorialModuleTitles == null ? 0 : editorialModuleTitles.hashCode())) * 31;
            ContributionLink contributionLink = this.f67159c;
            int iHashCode3 = (this.f67161f.hashCode() + ((this.f67160e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (contributionLink == null ? 0 : contributionLink.hashCode())) * 31)) * 31)) * 31)) * 31;
            Targeting targeting = this.g;
            return iHashCode3 + (targeting != null ? targeting.f67220a.hashCode() : 0);
        }

        public final String toString() {
            return "Card(id=" + this.f67157a + ", titles=" + this.f67158b + ", link=" + this.f67159c + ", asset=" + this.d + ", assetLayout=" + this.f67160e + ", ratio=" + this.f67161f + ", targeting=" + this.g + ")";
        }

        public /* synthetic */ Card(String str, EditorialModuleTitles editorialModuleTitles, ContributionLink contributionLink, Asset asset, AssetLayout assetLayout, Ratio ratio, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : editorialModuleTitles, (i2 & 4) != 0 ? null : contributionLink, asset, assetLayout, ratio, (i2 & 64) != 0 ? null : targeting);
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Event;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;", "titles", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "link", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;", "ratio", "deadline", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModuleTitles;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Event extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitles f67178b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ContributionLink f67179c;
        public final Asset d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Ratio f67180e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f67181f;
        public final Targeting g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Event(String str, EditorialModuleTitles editorialModuleTitles, ContributionLink contributionLink, Asset asset, Ratio ratio, String str2, Targeting targeting) {
            super(null);
            str.getClass();
            asset.getClass();
            ratio.getClass();
            str2.getClass();
            this.f67177a = str;
            this.f67178b = editorialModuleTitles;
            this.f67179c = contributionLink;
            this.d = asset;
            this.f67180e = ratio;
            this.f67181f = str2;
            this.g = targeting;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Event)) {
                return false;
            }
            Event event = (Event) obj;
            return Intrinsics.c(this.f67177a, event.f67177a) && Intrinsics.c(this.f67178b, event.f67178b) && Intrinsics.c(this.f67179c, event.f67179c) && Intrinsics.c(this.d, event.d) && this.f67180e == event.f67180e && Intrinsics.c(this.f67181f, event.f67181f) && Intrinsics.c(this.g, event.g);
        }

        public final int hashCode() {
            int iHashCode = this.f67177a.hashCode() * 31;
            EditorialModuleTitles editorialModuleTitles = this.f67178b;
            int iHashCode2 = (iHashCode + (editorialModuleTitles == null ? 0 : editorialModuleTitles.hashCode())) * 31;
            ContributionLink contributionLink = this.f67179c;
            int iB = fc.b((this.f67180e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (contributionLink == null ? 0 : contributionLink.hashCode())) * 31)) * 31)) * 31, 31, this.f67181f);
            Targeting targeting = this.g;
            return iB + (targeting != null ? targeting.f67220a.hashCode() : 0);
        }

        public final String toString() {
            return "Event(id=" + this.f67177a + ", titles=" + this.f67178b + ", link=" + this.f67179c + ", asset=" + this.d + ", ratio=" + this.f67180e + ", deadline=" + this.f67181f + ", targeting=" + this.g + ")";
        }

        public /* synthetic */ Event(String str, EditorialModuleTitles editorialModuleTitles, ContributionLink contributionLink, Asset asset, Ratio ratio, String str2, Targeting targeting, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : editorialModuleTitles, (i2 & 4) != 0 ? null : contributionLink, asset, ratio, str2, (i2 & 64) != 0 ? null : targeting);
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$Live;", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;", "ratio", "surtitleAfter", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "video", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;", "targeting", "Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;", "format", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;Lcom/vuitton/foundation/model/domain/model/common/editorial/Targeting;Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Live extends EditorialModule {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67189a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67190b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Asset f67191c;
        public final Ratio d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f67192e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AssetVideo f67193f;
        public final Targeting g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final LiveFormat f67194h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Live(String str, String str2, Asset asset, Ratio ratio, String str3, AssetVideo assetVideo, Targeting targeting, LiveFormat liveFormat) {
            super(null);
            str.getClass();
            asset.getClass();
            ratio.getClass();
            assetVideo.getClass();
            liveFormat.getClass();
            this.f67189a = str;
            this.f67190b = str2;
            this.f67191c = asset;
            this.d = ratio;
            this.f67192e = str3;
            this.f67193f = assetVideo;
            this.g = targeting;
            this.f67194h = liveFormat;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Live)) {
                return false;
            }
            Live live = (Live) obj;
            return Intrinsics.c(this.f67189a, live.f67189a) && Intrinsics.c(this.f67190b, live.f67190b) && Intrinsics.c(this.f67191c, live.f67191c) && this.d == live.d && Intrinsics.c(this.f67192e, live.f67192e) && Intrinsics.c(this.f67193f, live.f67193f) && Intrinsics.c(this.g, live.g) && this.f67194h == live.f67194h;
        }

        public final int hashCode() {
            int iHashCode = this.f67189a.hashCode() * 31;
            String str = this.f67190b;
            int iHashCode2 = (this.d.hashCode() + ((this.f67191c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31;
            String str2 = this.f67192e;
            int iHashCode3 = (this.f67193f.hashCode() + ((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            Targeting targeting = this.g;
            return this.f67194h.hashCode() + ((iHashCode3 + (targeting != null ? targeting.f67220a.hashCode() : 0)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Live(id=", this.f67189a, ", title=", this.f67190b, ", asset=");
            sbS.append(this.f67191c);
            sbS.append(", ratio=");
            sbS.append(this.d);
            sbS.append(", surtitleAfter=");
            sbS.append(this.f67192e);
            sbS.append(", video=");
            sbS.append(this.f67193f);
            sbS.append(", targeting=");
            sbS.append(this.g);
            sbS.append(", format=");
            sbS.append(this.f67194h);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ Live(String str, String str2, Asset asset, Ratio ratio, String str3, AssetVideo assetVideo, Targeting targeting, LiveFormat liveFormat, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2, asset, ratio, (i2 & 16) != 0 ? null : str3, assetVideo, (i2 & 64) != 0 ? null : targeting, liveFormat);
        }
    }
}
