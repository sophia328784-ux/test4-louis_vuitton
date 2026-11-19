package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.enums.Channel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChannelSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChannelSerializer implements KSerializer<Channel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ChannelSerializer f25942a = new ChannelSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f25943b = SerialDescriptorsKt.a("Channel", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25943b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        Channel.Companion companion = Channel.INSTANCE;
        String strX = decoder.x();
        companion.getClass();
        Channel channel = Channel.APP;
        if (!Intrinsics.c(strX, channel.getValueStr())) {
            Channel channel2 = Channel.KIOSK;
            if (Intrinsics.c(strX, channel2.getValueStr())) {
                return channel2;
            }
            Channel channel3 = Channel.DRIVE_THRU;
            if (Intrinsics.c(strX, channel3.getValueStr())) {
                return channel3;
            }
        }
        return channel;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Channel channel = (Channel) obj;
        channel.getClass();
        encoder.E(channel.getValueStr());
    }
}
