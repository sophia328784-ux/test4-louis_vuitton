package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015Bq\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fB\u0089\u0001\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;", "", "", "contactEmail", "contactSmsNumber", "contactNumber", "contactWhatsappNumber", "repairsApiUrl", "processPageUrl", "trackingUrl", "storeCode", "storeName", "zipCodeExclusionRegex", "careServicePromotionKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DistantRepairsConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45488c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45490f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45491h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45492i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f45493j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f45494k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DistantRepairsConfigCache> serializer() {
            return DistantRepairsConfigCache$$serializer.f45495a;
        }
    }

    public /* synthetic */ DistantRepairsConfigCache(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, SerializationConstructorMarker serializationConstructorMarker) {
        if (2047 != (i2 & 2047)) {
            PluginExceptionsKt.b(i2, 2047, DistantRepairsConfigCache$$serializer.f45495a.getF19838b());
            throw null;
        }
        this.f45486a = str;
        this.f45487b = str2;
        this.f45488c = str3;
        this.d = str4;
        this.f45489e = str5;
        this.f45490f = str6;
        this.g = str7;
        this.f45491h = str8;
        this.f45492i = str9;
        this.f45493j = str10;
        this.f45494k = str11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairsConfigCache)) {
            return false;
        }
        DistantRepairsConfigCache distantRepairsConfigCache = (DistantRepairsConfigCache) obj;
        return Intrinsics.c(this.f45486a, distantRepairsConfigCache.f45486a) && Intrinsics.c(this.f45487b, distantRepairsConfigCache.f45487b) && Intrinsics.c(this.f45488c, distantRepairsConfigCache.f45488c) && Intrinsics.c(this.d, distantRepairsConfigCache.d) && Intrinsics.c(this.f45489e, distantRepairsConfigCache.f45489e) && Intrinsics.c(this.f45490f, distantRepairsConfigCache.f45490f) && Intrinsics.c(this.g, distantRepairsConfigCache.g) && Intrinsics.c(this.f45491h, distantRepairsConfigCache.f45491h) && Intrinsics.c(this.f45492i, distantRepairsConfigCache.f45492i) && Intrinsics.c(this.f45493j, distantRepairsConfigCache.f45493j) && Intrinsics.c(this.f45494k, distantRepairsConfigCache.f45494k);
    }

    public final int hashCode() {
        String str = this.f45486a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45487b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45488c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iB = fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f45489e);
        String str5 = this.f45490f;
        int iHashCode4 = (iB + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iB2 = fc.b((iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f45491h);
        String str7 = this.f45492i;
        int iHashCode5 = (iB2 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f45493j;
        int iHashCode6 = (iHashCode5 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f45494k;
        return iHashCode6 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DistantRepairsConfigCache(contactEmail=", this.f45486a, ", contactSmsNumber=", this.f45487b, ", contactNumber=");
        cj.C(sbS, this.f45488c, ", contactWhatsappNumber=", this.d, ", repairsApiUrl=");
        cj.C(sbS, this.f45489e, ", processPageUrl=", this.f45490f, ", trackingUrl=");
        cj.C(sbS, this.g, ", storeCode=", this.f45491h, ", storeName=");
        cj.C(sbS, this.f45492i, ", zipCodeExclusionRegex=", this.f45493j, ", careServicePromotionKey=");
        return n00.r(this.f45494k, ")", sbS);
    }

    public DistantRepairsConfigCache(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        str5.getClass();
        str8.getClass();
        this.f45486a = str;
        this.f45487b = str2;
        this.f45488c = str3;
        this.d = str4;
        this.f45489e = str5;
        this.f45490f = str6;
        this.g = str7;
        this.f45491h = str8;
        this.f45492i = str9;
        this.f45493j = str10;
        this.f45494k = str11;
    }
}
