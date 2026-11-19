package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.enums.Channel;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.ChannelSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Branch$$serializer;
import defpackage.b21;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/common/payload/Context.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class Context$$serializer implements GeneratedSerializer<Context> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Context$$serializer f26211a;
    private static final SerialDescriptor descriptor;

    static {
        Context$$serializer context$$serializer = new Context$$serializer();
        f26211a = context$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.common.payload.Context", context$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("page", true);
        pluginGeneratedSerialDescriptor.k("device", true);
        pluginGeneratedSerialDescriptor.k("branch", true);
        pluginGeneratedSerialDescriptor.k("channel", true);
        pluginGeneratedSerialDescriptor.k("cart", true);
        pluginGeneratedSerialDescriptor.k("pageAttributes", true);
        pluginGeneratedSerialDescriptor.k("listedItems", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = Context.f26205h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        Page page = null;
        Device device = null;
        Branch branch = null;
        Channel channel = null;
        List list = null;
        Map map = null;
        List list2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    page = (Page) compositeDecoderB.m(serialDescriptor, 0, Page$$serializer.f26233a, page);
                    i2 |= 1;
                    break;
                case 1:
                    device = (Device) compositeDecoderB.m(serialDescriptor, 1, Device$$serializer.f26216a, device);
                    i2 |= 2;
                    break;
                case 2:
                    branch = (Branch) compositeDecoderB.m(serialDescriptor, 2, Branch$$serializer.f26017a, branch);
                    i2 |= 4;
                    break;
                case 3:
                    channel = (Channel) compositeDecoderB.m(serialDescriptor, 3, ChannelSerializer.f25942a, channel);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    map = (Map) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), map);
                    i2 |= 32;
                    break;
                case 6:
                    list2 = (List) compositeDecoderB.m(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list2);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new Context(i2, page, device, branch, channel, list, map, list2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Context context = (Context) obj;
        context.getClass();
        List list = context.g;
        Map map = context.f26210f;
        List list2 = context.f26209e;
        Channel channel = context.d;
        Branch branch = context.f26208c;
        Device device = context.f26207b;
        Page page = context.f26206a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = Context.f26205h;
        if (compositeEncoderB.o(serialDescriptor) || page != null) {
            compositeEncoderB.h(serialDescriptor, 0, Page$$serializer.f26233a, page);
        }
        if (compositeEncoderB.o(serialDescriptor) || device != null) {
            compositeEncoderB.h(serialDescriptor, 1, Device$$serializer.f26216a, device);
        }
        if (compositeEncoderB.o(serialDescriptor) || branch != null) {
            compositeEncoderB.h(serialDescriptor, 2, Branch$$serializer.f26017a, branch);
        }
        if (compositeEncoderB.o(serialDescriptor) || channel != null) {
            compositeEncoderB.h(serialDescriptor, 3, ChannelSerializer.f25942a, channel);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || map != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), map);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = Context.f26205h;
        return new KSerializer[]{BuiltinSerializersKt.d(Page$$serializer.f26233a), BuiltinSerializersKt.d(Device$$serializer.f26216a), BuiltinSerializersKt.d(Branch$$serializer.f26017a), BuiltinSerializersKt.d(ChannelSerializer.f25942a), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[6].getF71699b())};
    }
}
