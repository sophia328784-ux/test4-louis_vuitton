package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0003\u000e\u000f\rB\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;", "", "Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;", "commercialNotification", "", "paymentCheckoutUrl", "<init>", "(Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "CommercialNotificationCache", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class NativeCartConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CommercialNotificationCache f45514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45515b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<NativeCartConfigCache> serializer() {
            return NativeCartConfigCache$$serializer.f45516a;
        }
    }

    public /* synthetic */ NativeCartConfigCache(int i2, CommercialNotificationCache commercialNotificationCache, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, NativeCartConfigCache$$serializer.f45516a.getF19838b());
            throw null;
        }
        this.f45514a = commercialNotificationCache;
        this.f45515b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeCartConfigCache)) {
            return false;
        }
        NativeCartConfigCache nativeCartConfigCache = (NativeCartConfigCache) obj;
        return Intrinsics.c(this.f45514a, nativeCartConfigCache.f45514a) && Intrinsics.c(this.f45515b, nativeCartConfigCache.f45515b);
    }

    public final int hashCode() {
        CommercialNotificationCache commercialNotificationCache = this.f45514a;
        int iHashCode = (commercialNotificationCache == null ? 0 : commercialNotificationCache.hashCode()) * 31;
        String str = this.f45515b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "NativeCartConfigCache(commercialNotification=" + this.f45514a + ", paymentCheckoutUrl=" + this.f45515b + ")";
    }

    public NativeCartConfigCache(CommercialNotificationCache commercialNotificationCache, String str) {
        this.f45514a = commercialNotificationCache;
        this.f45515b = str;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;", "", "", "text", "modalTitle", "modalContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CommercialNotificationCache {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f45517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45518b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f45519c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CommercialNotificationCache> serializer() {
                return NativeCartConfigCache$CommercialNotificationCache$$serializer.f45520a;
            }
        }

        public /* synthetic */ CommercialNotificationCache(int i2, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i2 & 7)) {
                PluginExceptionsKt.b(i2, 7, NativeCartConfigCache$CommercialNotificationCache$$serializer.f45520a.getF19838b());
                throw null;
            }
            this.f45517a = str;
            this.f45518b = str2;
            this.f45519c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CommercialNotificationCache)) {
                return false;
            }
            CommercialNotificationCache commercialNotificationCache = (CommercialNotificationCache) obj;
            return Intrinsics.c(this.f45517a, commercialNotificationCache.f45517a) && Intrinsics.c(this.f45518b, commercialNotificationCache.f45518b) && Intrinsics.c(this.f45519c, commercialNotificationCache.f45519c);
        }

        public final int hashCode() {
            String str = this.f45517a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f45518b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f45519c;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            return n00.r(this.f45519c, ")", fc.s("CommercialNotificationCache(text=", this.f45517a, ", modalTitle=", this.f45518b, ", modalContent="));
        }

        public CommercialNotificationCache(String str, String str2, String str3) {
            this.f45517a = str;
            this.f45518b = str2;
            this.f45519c = str3;
        }
    }
}
