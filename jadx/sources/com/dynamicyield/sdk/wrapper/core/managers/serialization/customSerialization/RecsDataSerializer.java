package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.appsflyer.sdk_base.referrer.Payload;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot;
import defpackage.pq0;
import defpackage.yn0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/RecsDataSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsData;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecsDataSerializer implements KSerializer<RecsData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RecsDataSerializer f25982a = new RecsDataSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25983b = SerialDescriptorsKt.c("RecsData", new SerialDescriptor[0], new yn0(25));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25983b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptorImpl serialDescriptorImpl = f25983b;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptorImpl);
        List list = EmptyList.f71768b;
        JsonElement jsonElement = null;
        while (true) {
            int iN = compositeDecoderB.n(serialDescriptorImpl);
            if (iN == -1) {
                compositeDecoderB.c(serialDescriptorImpl);
                return new RecsData(jsonElement != null ? jsonElement.toString() : null, list);
            }
            String str = serialDescriptorImpl.f75551f[iN];
            if (Intrinsics.c(str, "slots")) {
                list = (List) compositeDecoderB.w(serialDescriptorImpl, iN, BuiltinSerializersKt.b(RecsSlot.INSTANCE.serializer()), null);
            } else {
                if (!Intrinsics.c(str, Payload.CUSTOM)) {
                    throw new SerializationException(pq0.k(iN, "Unknown index: "));
                }
                jsonElement = (JsonElement) compositeDecoderB.w(serialDescriptorImpl, iN, JsonElement.INSTANCE.serializer(), null);
            }
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((RecsData) obj).getClass();
        throw new SerializationException("");
    }
}
