package com.vuitton.foundation.model.domain.model.plp;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.editorial.Ratio;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import defpackage.cj;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", "Products", "ProductHighlight", "ProductSlider", "ProductFullscreen", "HalfEdito", "CuratedText", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PlpSection {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u000bB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;", "title", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "Label", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CuratedText extends PlpSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67835a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Label f67836b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67837c;
        public final AssetImage d;

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;", "", "", "value", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;", "font", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;)V", "Font", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Label {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f67838a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Font f67839b;

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;", "", "SMALL", "MEDIUM", "LARGE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final class Font {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ Font[] $VALUES;
                public static final Font LARGE;
                public static final Font MEDIUM;
                public static final Font SMALL;

                static {
                    Font font = new Font("SMALL", 0);
                    SMALL = font;
                    Font font2 = new Font("MEDIUM", 1);
                    MEDIUM = font2;
                    Font font3 = new Font("LARGE", 2);
                    LARGE = font3;
                    Font[] fontArr = {font, font2, font3};
                    $VALUES = fontArr;
                    $ENTRIES = EnumEntriesKt.a(fontArr);
                }

                public static Font valueOf(String str) {
                    return (Font) Enum.valueOf(Font.class, str);
                }

                public static Font[] values() {
                    return (Font[]) $VALUES.clone();
                }
            }

            public Label(String str, Font font) {
                str.getClass();
                font.getClass();
                this.f67838a = str;
                this.f67839b = font;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Label)) {
                    return false;
                }
                Label label = (Label) obj;
                return Intrinsics.c(this.f67838a, label.f67838a) && this.f67839b == label.f67839b;
            }

            public final int hashCode() {
                return this.f67839b.hashCode() + (this.f67838a.hashCode() * 31);
            }

            public final String toString() {
                return "Label(value=" + this.f67838a + ", font=" + this.f67839b + ")";
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CuratedText(String str, Label label, String str2, AssetImage assetImage) {
            super(null);
            str.getClass();
            label.getClass();
            str2.getClass();
            this.f67835a = str;
            this.f67836b = label;
            this.f67837c = str2;
            this.d = assetImage;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CuratedText)) {
                return false;
            }
            CuratedText curatedText = (CuratedText) obj;
            return Intrinsics.c(this.f67835a, curatedText.f67835a) && Intrinsics.c(this.f67836b, curatedText.f67836b) && Intrinsics.c(this.f67837c, curatedText.f67837c) && Intrinsics.c(this.d, curatedText.d);
        }

        public final int hashCode() {
            int iB = fc.b((this.f67836b.hashCode() + (this.f67835a.hashCode() * 31)) * 31, 31, this.f67837c);
            AssetImage assetImage = this.d;
            return iB + (assetImage == null ? 0 : assetImage.hashCode());
        }

        public final String toString() {
            return "CuratedText(id=" + this.f67835a + ", title=" + this.f67836b + ", description=" + this.f67837c + ", image=" + this.d + ")";
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u000fB?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", b.a.f24015b, "title", "surtitle", "description", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;", "alignment", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "product", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)V", "Alignment", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class HalfEdito extends PlpSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67842c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Alignment f67843e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Asset f67844f;
        public final ProductShort g;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;", "", "LEFT", "CENTER", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Alignment {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Alignment[] $VALUES;
            public static final Alignment CENTER;
            public static final Alignment LEFT;

            static {
                Alignment alignment = new Alignment("LEFT", 0);
                LEFT = alignment;
                Alignment alignment2 = new Alignment("CENTER", 1);
                CENTER = alignment2;
                Alignment[] alignmentArr = {alignment, alignment2};
                $VALUES = alignmentArr;
                $ENTRIES = EnumEntriesKt.a(alignmentArr);
            }

            public static Alignment valueOf(String str) {
                return (Alignment) Enum.valueOf(Alignment.class, str);
            }

            public static Alignment[] values() {
                return (Alignment[]) $VALUES.clone();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HalfEdito(String str, String str2, String str3, String str4, Alignment alignment, Asset asset, ProductShort productShort) {
            super(null);
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            alignment.getClass();
            asset.getClass();
            productShort.getClass();
            this.f67840a = str;
            this.f67841b = str2;
            this.f67842c = str3;
            this.d = str4;
            this.f67843e = alignment;
            this.f67844f = asset;
            this.g = productShort;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HalfEdito)) {
                return false;
            }
            HalfEdito halfEdito = (HalfEdito) obj;
            return Intrinsics.c(this.f67840a, halfEdito.f67840a) && Intrinsics.c(this.f67841b, halfEdito.f67841b) && Intrinsics.c(this.f67842c, halfEdito.f67842c) && Intrinsics.c(this.d, halfEdito.d) && this.f67843e == halfEdito.f67843e && Intrinsics.c(this.f67844f, halfEdito.f67844f) && Intrinsics.c(this.g, halfEdito.g);
        }

        public final int hashCode() {
            return this.g.hashCode() + ((this.f67844f.hashCode() + ((this.f67843e.hashCode() + fc.b(fc.b(fc.b(this.f67840a.hashCode() * 31, 31, this.f67841b), 31, this.f67842c), 31, this.d)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("HalfEdito(id=", this.f67840a, ", title=", this.f67841b, ", surtitle=");
            cj.C(sbS, this.f67842c, ", description=", this.d, ", alignment=");
            sbS.append(this.f67843e);
            sbS.append(", asset=");
            sbS.append(this.f67844f);
            sbS.append(", product=");
            sbS.append(this.g);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "product", "Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;", "ratio", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductFullscreen extends PlpSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67845a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProductShort f67846b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Ratio f67847c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductFullscreen(String str, ProductShort productShort, Ratio ratio) {
            super(null);
            str.getClass();
            productShort.getClass();
            ratio.getClass();
            this.f67845a = str;
            this.f67846b = productShort;
            this.f67847c = ratio;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductFullscreen)) {
                return false;
            }
            ProductFullscreen productFullscreen = (ProductFullscreen) obj;
            return Intrinsics.c(this.f67845a, productFullscreen.f67845a) && Intrinsics.c(this.f67846b, productFullscreen.f67846b) && this.f67847c == productFullscreen.f67847c;
        }

        public final int hashCode() {
            return this.f67847c.hashCode() + ((this.f67846b.hashCode() + (this.f67845a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "ProductFullscreen(id=" + this.f67845a + ", product=" + this.f67846b + ", ratio=" + this.f67847c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "product", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Lcom/vuitton/foundation/model/domain/model/common/Asset;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductHighlight extends PlpSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProductShort f67849b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Asset f67850c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductHighlight(String str, ProductShort productShort, Asset asset) {
            super(null);
            str.getClass();
            productShort.getClass();
            asset.getClass();
            this.f67848a = str;
            this.f67849b = productShort;
            this.f67850c = asset;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductHighlight)) {
                return false;
            }
            ProductHighlight productHighlight = (ProductHighlight) obj;
            return Intrinsics.c(this.f67848a, productHighlight.f67848a) && Intrinsics.c(this.f67849b, productHighlight.f67849b) && Intrinsics.c(this.f67850c, productHighlight.f67850c);
        }

        public final int hashCode() {
            return this.f67850c.hashCode() + ((this.f67849b.hashCode() + (this.f67848a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "ProductHighlight(id=" + this.f67848a + ", product=" + this.f67849b + ", asset=" + this.f67850c + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;", "product", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductSlider extends PlpSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProductShort f67852b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductSlider(String str, ProductShort productShort) {
            super(null);
            str.getClass();
            productShort.getClass();
            this.f67851a = str;
            this.f67852b = productShort;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductSlider)) {
                return false;
            }
            ProductSlider productSlider = (ProductSlider) obj;
            return Intrinsics.c(this.f67851a, productSlider.f67851a) && Intrinsics.c(this.f67852b, productSlider.f67852b);
        }

        public final int hashCode() {
            return this.f67852b.hashCode() + (this.f67851a.hashCode() * 31);
        }

        public final String toString() {
            return "ProductSlider(id=" + this.f67851a + ", product=" + this.f67852b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "", b.a.f24015b, "", "Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;", "productList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Products extends PlpSection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67853a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f67854b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Products(String str, List<PlpProductItem> list) {
            super(null);
            str.getClass();
            list.getClass();
            this.f67853a = str;
            this.f67854b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Products)) {
                return false;
            }
            Products products = (Products) obj;
            return Intrinsics.c(this.f67853a, products.f67853a) && Intrinsics.c(this.f67854b, products.f67854b);
        }

        public final int hashCode() {
            return this.f67854b.hashCode() + (this.f67853a.hashCode() * 31);
        }

        public final String toString() {
            return cj.k("Products(id=", this.f67853a, ", productList=", this.f67854b, ")");
        }
    }

    public PlpSection(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
