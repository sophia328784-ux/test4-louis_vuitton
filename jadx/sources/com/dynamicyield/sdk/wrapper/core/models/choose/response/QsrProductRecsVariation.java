package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tBK\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\b\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;", "", b.a.f24015b, "", "name", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;", ConfigurationName.PING_PAYLOAD, "<init>", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;)V", "seen0", "decisionId", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;", "analyticsMetadata", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsPayload;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final class QsrProductRecsVariation extends Variation {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QsrProductRecsPayload f26100f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<QsrProductRecsVariation> serializer() {
            return QsrProductRecsVariation$$serializer.f26101a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ QsrProductRecsVariation(int i2, String str, AnalyticsMetadata analyticsMetadata, int i3, String str2, QsrProductRecsPayload qsrProductRecsPayload, SerializationConstructorMarker serializationConstructorMarker) {
        super(i2, str, analyticsMetadata, serializationConstructorMarker);
        if (20 != (i2 & 20)) {
            PluginExceptionsKt.b(i2, 20, QsrProductRecsVariation$$serializer.f26101a.getF19850b());
            throw null;
        }
        this.d = i3;
        if ((i2 & 8) == 0) {
            this.f26099e = null;
        } else {
            this.f26099e = str2;
        }
        this.f26100f = qsrProductRecsPayload;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.models.choose.response.Variation
    public final Payload a() {
        return this.f26100f;
    }

    public /* synthetic */ QsrProductRecsVariation(int i2, String str, QsrProductRecsPayload qsrProductRecsPayload, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? null : str, qsrProductRecsPayload);
    }

    public QsrProductRecsVariation(int i2, String str, QsrProductRecsPayload qsrProductRecsPayload) {
        qsrProductRecsPayload.getClass();
        this.d = i2;
        this.f26099e = str;
        this.f26100f = qsrProductRecsPayload;
    }
}
