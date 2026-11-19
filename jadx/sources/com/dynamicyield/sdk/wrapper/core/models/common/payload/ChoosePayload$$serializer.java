package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.UserSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Options;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Options$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Selector;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.Selector$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/ChoosePayload;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class ChoosePayload$$serializer implements GeneratedSerializer<ChoosePayload> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ChoosePayload$$serializer f26204a;
    private static final SerialDescriptor descriptor;

    static {
        ChoosePayload$$serializer choosePayload$$serializer = new ChoosePayload$$serializer();
        f26204a = choosePayload$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.common.payload.ChoosePayload", choosePayload$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("session", false);
        pluginGeneratedSerialDescriptor.k("user", false);
        pluginGeneratedSerialDescriptor.k("selector", true);
        pluginGeneratedSerialDescriptor.k(MvelScriptManager.VAR_CONTEXT, true);
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
        Selector selector = null;
        Context context = null;
        Options options = null;
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
                selector = (Selector) compositeDecoderB.m(serialDescriptor, 2, Selector$$serializer.f26040a, selector);
                i2 |= 4;
            } else if (iN == 3) {
                context = (Context) compositeDecoderB.m(serialDescriptor, 3, Context$$serializer.f26211a, context);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                options = (Options) compositeDecoderB.m(serialDescriptor, 4, Options$$serializer.f26029a, options);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ChoosePayload(i2, session, user, selector, context, options, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ChoosePayload choosePayload = (ChoosePayload) obj;
        choosePayload.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Session$$serializer session$$serializer = Session$$serializer.f26245a;
        Session session = choosePayload.f26200a;
        Options options = choosePayload.f26203e;
        Context context = choosePayload.d;
        Selector selector = choosePayload.f26202c;
        compositeEncoderB.A(serialDescriptor, 0, session$$serializer, session);
        compositeEncoderB.A(serialDescriptor, 1, UserSerializer.f25993a, choosePayload.f26201b);
        if (compositeEncoderB.o(serialDescriptor) || selector != null) {
            compositeEncoderB.h(serialDescriptor, 2, Selector$$serializer.f26040a, selector);
        }
        if (compositeEncoderB.o(serialDescriptor) || context != null) {
            compositeEncoderB.h(serialDescriptor, 3, Context$$serializer.f26211a, context);
        }
        if (compositeEncoderB.o(serialDescriptor) || options != null) {
            compositeEncoderB.h(serialDescriptor, 4, Options$$serializer.f26029a, options);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{Session$$serializer.f26245a, UserSerializer.f25993a, BuiltinSerializersKt.d(Selector$$serializer.f26040a), BuiltinSerializersKt.d(Context$$serializer.f26211a), BuiltinSerializersKt.d(Options$$serializer.f26029a)};
    }
}
