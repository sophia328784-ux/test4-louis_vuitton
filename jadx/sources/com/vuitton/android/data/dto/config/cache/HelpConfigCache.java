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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;", "", "", "contactUsUrl", "faqUrl", "careServicesUrl", "servicesDeliveryUrl", "environmentalCharacteristicsUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class HelpConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45511c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45512e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<HelpConfigCache> serializer() {
            return HelpConfigCache$$serializer.f45513a;
        }
    }

    public /* synthetic */ HelpConfigCache(int i2, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, HelpConfigCache$$serializer.f45513a.getF19838b());
            throw null;
        }
        this.f45509a = str;
        this.f45510b = str2;
        this.f45511c = str3;
        this.d = str4;
        this.f45512e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HelpConfigCache)) {
            return false;
        }
        HelpConfigCache helpConfigCache = (HelpConfigCache) obj;
        return Intrinsics.c(this.f45509a, helpConfigCache.f45509a) && Intrinsics.c(this.f45510b, helpConfigCache.f45510b) && Intrinsics.c(this.f45511c, helpConfigCache.f45511c) && Intrinsics.c(this.d, helpConfigCache.d) && Intrinsics.c(this.f45512e, helpConfigCache.f45512e);
    }

    public final int hashCode() {
        String str = this.f45509a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45510b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45511c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f45512e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HelpConfigCache(contactUsUrl=", this.f45509a, ", faqUrl=", this.f45510b, ", careServicesUrl=");
        cj.C(sbS, this.f45511c, ", servicesDeliveryUrl=", this.d, ", environmentalCharacteristicsUrl=");
        return n00.r(this.f45512e, ")", sbS);
    }

    public HelpConfigCache(String str, String str2, String str3, String str4, String str5) {
        this.f45509a = str;
        this.f45510b = str2;
        this.f45511c = str3;
        this.d = str4;
        this.f45512e = str5;
    }
}
