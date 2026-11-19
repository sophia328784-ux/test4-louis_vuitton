package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import defpackage.b51;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003B/\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0002\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;", "", "<init>", "()V", "", "seen0", "", "decisionId", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;", "analyticsMetadata", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AnalyticsMetadata;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public abstract class Variation {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f26156c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(11));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f26157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsMetadata f26158b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Variation> serializer() {
            return (KSerializer) Variation.f26156c.getF71699b();
        }
    }

    public /* synthetic */ Variation(int i2, String str, AnalyticsMetadata analyticsMetadata, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26157a = null;
        } else {
            this.f26157a = str;
        }
        if ((i2 & 2) == 0) {
            this.f26158b = null;
        } else {
            this.f26158b = analyticsMetadata;
        }
    }

    public static final /* synthetic */ void b(Variation variation, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        if (compositeEncoder.o(serialDescriptor) || variation.f26157a != null) {
            compositeEncoder.h(serialDescriptor, 0, StringSerializer.f75684a, variation.f26157a);
        }
        if (!compositeEncoder.o(serialDescriptor) && variation.f26158b == null) {
            return;
        }
        compositeEncoder.h(serialDescriptor, 1, AnalyticsMetadata$$serializer.f26046a, variation.f26158b);
    }

    public abstract Payload a();

    public Variation() {
    }
}
