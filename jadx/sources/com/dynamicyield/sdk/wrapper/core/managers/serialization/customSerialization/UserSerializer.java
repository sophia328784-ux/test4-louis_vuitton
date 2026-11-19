package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.batch.android.v0.l;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.User;
import defpackage.y41;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/UserSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UserSerializer implements KSerializer<User> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserSerializer f25993a = new UserSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25994b = SerialDescriptorsKt.c(l.f24144f, new SerialDescriptor[0], new y41(10));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25994b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        User user = (User) obj;
        user.getClass();
        SerialDescriptorImpl serialDescriptorImpl = f25994b;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptorImpl);
        Boolean bool = user.f26249b;
        if (Intrinsics.c(bool, Boolean.TRUE)) {
            compositeEncoderB.x(serialDescriptorImpl, 1, true);
            String str = user.f26250c;
            if (str != null) {
                compositeEncoderB.y(serialDescriptorImpl, 2, str);
            }
            String str2 = user.d;
            if (str2 != null) {
                compositeEncoderB.y(serialDescriptorImpl, 3, str2);
            }
        } else {
            Boolean bool2 = user.f26251e;
            if (bool2 != null) {
                compositeEncoderB.x(serialDescriptorImpl, 4, bool2.booleanValue());
            }
            String str3 = user.f26248a;
            if (str3 == null) {
                str3 = "";
            }
            compositeEncoderB.y(serialDescriptorImpl, 0, str3);
            if (bool != null) {
                compositeEncoderB.x(serialDescriptorImpl, 1, false);
            }
        }
        compositeEncoderB.c(serialDescriptorImpl);
    }
}
