package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bBW\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\n\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;", "", "", "campaignId", "", "campaignName", "experienceId", "experienceName", "variationId", "variationName", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class AnalyticsMetadata {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f26041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f26043c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f26044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26045f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AnalyticsMetadata> serializer() {
            return AnalyticsMetadata$$serializer.f26046a;
        }
    }

    public /* synthetic */ AnalyticsMetadata(int i2, Integer num, String str, Integer num2, String str2, Integer num3, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26041a = null;
        } else {
            this.f26041a = num;
        }
        if ((i2 & 2) == 0) {
            this.f26042b = null;
        } else {
            this.f26042b = str;
        }
        if ((i2 & 4) == 0) {
            this.f26043c = null;
        } else {
            this.f26043c = num2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
        if ((i2 & 16) == 0) {
            this.f26044e = null;
        } else {
            this.f26044e = num3;
        }
        if ((i2 & 32) == 0) {
            this.f26045f = null;
        } else {
            this.f26045f = str3;
        }
    }

    public AnalyticsMetadata() {
        this((Integer) null, (String) null, (Integer) null, (String) null, (Integer) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    public AnalyticsMetadata(Integer num, String str, Integer num2, String str2, Integer num3, String str3) {
        this.f26041a = num;
        this.f26042b = str;
        this.f26043c = num2;
        this.d = str2;
        this.f26044e = num3;
        this.f26045f = str3;
    }

    public /* synthetic */ AnalyticsMetadata(Integer num, String str, Integer num2, String str2, Integer num3, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : num2, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : num3, (i2 & 32) != 0 ? null : str3);
    }
}
