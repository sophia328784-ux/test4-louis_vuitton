package com.vuitton.foundation.model.domain.model.product.vto;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderRequest;", "", "Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;", "cheekbone", "Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;", "eyelid", "Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;", "eyebrow", "", "faceShape", "", "lipShape", "Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;", "nose", "Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;", "color", "Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;", "metadata", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/vto/Cheekbone;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyelid;Lcom/vuitton/foundation/model/domain/model/product/vto/Eyebrow;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/vto/Nose;Lcom/vuitton/foundation/model/domain/model/product/vto/FaceColor;Lcom/vuitton/foundation/model/domain/model/product/vto/Metadata;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShadeFinderRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Cheekbone f68073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Eyelid f68074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Eyebrow f68075c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f68076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Nose f68077f;
    public final FaceColor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Metadata f68078h;

    public ShadeFinderRequest(Cheekbone cheekbone, Eyelid eyelid, Eyebrow eyebrow, String str, List<String> list, Nose nose, FaceColor faceColor, Metadata metadata) {
        this.f68073a = cheekbone;
        this.f68074b = eyelid;
        this.f68075c = eyebrow;
        this.d = str;
        this.f68076e = list;
        this.f68077f = nose;
        this.g = faceColor;
        this.f68078h = metadata;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeFinderRequest)) {
            return false;
        }
        ShadeFinderRequest shadeFinderRequest = (ShadeFinderRequest) obj;
        return Intrinsics.c(this.f68073a, shadeFinderRequest.f68073a) && Intrinsics.c(this.f68074b, shadeFinderRequest.f68074b) && Intrinsics.c(this.f68075c, shadeFinderRequest.f68075c) && Intrinsics.c(this.d, shadeFinderRequest.d) && Intrinsics.c(this.f68076e, shadeFinderRequest.f68076e) && Intrinsics.c(this.f68077f, shadeFinderRequest.f68077f) && Intrinsics.c(this.g, shadeFinderRequest.g) && Intrinsics.c(this.f68078h, shadeFinderRequest.f68078h);
    }

    public final int hashCode() {
        Cheekbone cheekbone = this.f68073a;
        int iHashCode = (cheekbone == null ? 0 : cheekbone.hashCode()) * 31;
        Eyelid eyelid = this.f68074b;
        int iHashCode2 = (iHashCode + (eyelid == null ? 0 : eyelid.hashCode())) * 31;
        Eyebrow eyebrow = this.f68075c;
        int iHashCode3 = (iHashCode2 + (eyebrow == null ? 0 : eyebrow.hashCode())) * 31;
        String str = this.d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        List list = this.f68076e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Nose nose = this.f68077f;
        int iHashCode6 = (iHashCode5 + (nose == null ? 0 : nose.hashCode())) * 31;
        FaceColor faceColor = this.g;
        int iHashCode7 = (iHashCode6 + (faceColor == null ? 0 : faceColor.hashCode())) * 31;
        Metadata metadata = this.f68078h;
        return iHashCode7 + (metadata != null ? metadata.hashCode() : 0);
    }

    public final String toString() {
        return "ShadeFinderRequest(cheekbone=" + this.f68073a + ", eyelid=" + this.f68074b + ", eyebrow=" + this.f68075c + ", faceShape=" + this.d + ", lipShape=" + this.f68076e + ", nose=" + this.f68077f + ", color=" + this.g + ", metadata=" + this.f68078h + ")";
    }
}
