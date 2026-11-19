package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.UserSerializer;
import com.dynamicyield.sdk.wrapper.core.models.assistant.payload.AssistantOptions;
import com.dynamicyield.sdk.wrapper.core.models.assistant.payload.AssistantOptions$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.assistant.payload.AssistantQuery;
import com.dynamicyield.sdk.wrapper.core.models.assistant.payload.AssistantQuery$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/AssistantPayload;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class AssistantPayload$$serializer implements GeneratedSerializer<AssistantPayload> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssistantPayload$$serializer f26199a;
    private static final SerialDescriptor descriptor;

    static {
        AssistantPayload$$serializer assistantPayload$$serializer = new AssistantPayload$$serializer();
        f26199a = assistantPayload$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.common.payload.AssistantPayload", assistantPayload$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("session", false);
        pluginGeneratedSerialDescriptor.k("user", false);
        pluginGeneratedSerialDescriptor.k("selector", false);
        pluginGeneratedSerialDescriptor.k(MvelScriptManager.VAR_CONTEXT, true);
        pluginGeneratedSerialDescriptor.k("query", false);
        pluginGeneratedSerialDescriptor.k("options", true);
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
        boolean z = true;
        int i2 = 0;
        Session session = null;
        User user = null;
        SingleNameSelector singleNameSelector = null;
        Context context = null;
        AssistantQuery assistantQuery = null;
        AssistantOptions assistantOptions = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    session = (Session) compositeDecoderB.w(serialDescriptor, 0, Session$$serializer.f26245a, session);
                    i2 |= 1;
                    break;
                case 1:
                    user = (User) compositeDecoderB.w(serialDescriptor, 1, UserSerializer.f25993a, user);
                    i2 |= 2;
                    break;
                case 2:
                    singleNameSelector = (SingleNameSelector) compositeDecoderB.w(serialDescriptor, 2, SingleNameSelector$$serializer.f26247a, singleNameSelector);
                    i2 |= 4;
                    break;
                case 3:
                    context = (Context) compositeDecoderB.m(serialDescriptor, 3, Context$$serializer.f26211a, context);
                    i2 |= 8;
                    break;
                case 4:
                    assistantQuery = (AssistantQuery) compositeDecoderB.w(serialDescriptor, 4, AssistantQuery$$serializer.f26009a, assistantQuery);
                    i2 |= 16;
                    break;
                case 5:
                    assistantOptions = (AssistantOptions) compositeDecoderB.m(serialDescriptor, 5, AssistantOptions$$serializer.f26006a, assistantOptions);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AssistantPayload(i2, session, user, singleNameSelector, context, assistantQuery, assistantOptions, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AssistantPayload assistantPayload = (AssistantPayload) obj;
        assistantPayload.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Session$$serializer session$$serializer = Session$$serializer.f26245a;
        Session session = assistantPayload.f26194a;
        AssistantOptions assistantOptions = assistantPayload.f26198f;
        Context context = assistantPayload.d;
        compositeEncoderB.A(serialDescriptor, 0, session$$serializer, session);
        compositeEncoderB.A(serialDescriptor, 1, UserSerializer.f25993a, assistantPayload.f26195b);
        compositeEncoderB.A(serialDescriptor, 2, SingleNameSelector$$serializer.f26247a, assistantPayload.f26196c);
        if (compositeEncoderB.o(serialDescriptor) || context != null) {
            compositeEncoderB.h(serialDescriptor, 3, Context$$serializer.f26211a, context);
        }
        compositeEncoderB.A(serialDescriptor, 4, AssistantQuery$$serializer.f26009a, assistantPayload.f26197e);
        if (compositeEncoderB.o(serialDescriptor) || assistantOptions != null) {
            compositeEncoderB.h(serialDescriptor, 5, AssistantOptions$$serializer.f26006a, assistantOptions);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{Session$$serializer.f26245a, UserSerializer.f25993a, SingleNameSelector$$serializer.f26247a, BuiltinSerializersKt.d(Context$$serializer.f26211a), AssistantQuery$$serializer.f26009a, BuiltinSerializersKt.d(AssistantOptions$$serializer.f26006a)};
    }
}
