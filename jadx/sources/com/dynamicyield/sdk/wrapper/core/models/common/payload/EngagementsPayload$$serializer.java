package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.UserSerializer;
import defpackage.b21;
import java.util.List;
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
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class EngagementsPayload$$serializer implements GeneratedSerializer<EngagementsPayload> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EngagementsPayload$$serializer f26222a;
    private static final SerialDescriptor descriptor;

    static {
        EngagementsPayload$$serializer engagementsPayload$$serializer = new EngagementsPayload$$serializer();
        f26222a = engagementsPayload$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.common.payload.EngagementsPayload", engagementsPayload$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("session", false);
        pluginGeneratedSerialDescriptor.k("user", false);
        pluginGeneratedSerialDescriptor.k(MvelScriptManager.VAR_CONTEXT, true);
        pluginGeneratedSerialDescriptor.k("engagements", false);
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
        Lazy[] lazyArr = EngagementsPayload.f26218e;
        boolean z = true;
        int i2 = 0;
        Session session = null;
        User user = null;
        Context context = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                session = (Session) compositeDecoderB.w(serialDescriptor, 0, Session$$serializer.f26245a, session);
                i2 |= 1;
            } else if (iN == 1) {
                user = (User) compositeDecoderB.w(serialDescriptor, 1, UserSerializer.f25993a, user);
                i2 |= 2;
            } else if (iN == 2) {
                context = (Context) compositeDecoderB.m(serialDescriptor, 2, Context$$serializer.f26211a, context);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new EngagementsPayload(i2, session, user, context, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EngagementsPayload engagementsPayload = (EngagementsPayload) obj;
        engagementsPayload.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = EngagementsPayload.f26218e;
        Session$$serializer session$$serializer = Session$$serializer.f26245a;
        Session session = engagementsPayload.f26219a;
        Context context = engagementsPayload.f26221c;
        compositeEncoderB.A(serialDescriptor, 0, session$$serializer, session);
        compositeEncoderB.A(serialDescriptor, 1, UserSerializer.f25993a, engagementsPayload.f26220b);
        if (compositeEncoderB.o(serialDescriptor) || context != null) {
            compositeEncoderB.h(serialDescriptor, 2, Context$$serializer.f26211a, context);
        }
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), engagementsPayload.d);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{Session$$serializer.f26245a, UserSerializer.f25993a, BuiltinSerializersKt.d(Context$$serializer.f26211a), EngagementsPayload.f26218e[3].getF71699b()};
    }
}
