package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.QuerySerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.UserSerializer;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.Query;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchOptions;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchOptions$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchSelector;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchSelector$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/SearchPayload;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SearchPayload$$serializer implements GeneratedSerializer<SearchPayload> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SearchPayload$$serializer f26243a;
    private static final SerialDescriptor descriptor;

    static {
        SearchPayload$$serializer searchPayload$$serializer = new SearchPayload$$serializer();
        f26243a = searchPayload$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.common.payload.SearchPayload", searchPayload$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("session", false);
        pluginGeneratedSerialDescriptor.k("user", false);
        pluginGeneratedSerialDescriptor.k("selector", false);
        pluginGeneratedSerialDescriptor.k(MvelScriptManager.VAR_CONTEXT, true);
        pluginGeneratedSerialDescriptor.k("query", true);
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
        SearchSelector searchSelector = null;
        Context context = null;
        Query query = null;
        SearchOptions searchOptions = null;
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
                    searchSelector = (SearchSelector) compositeDecoderB.w(serialDescriptor, 2, SearchSelector$$serializer.f26412a, searchSelector);
                    i2 |= 4;
                    break;
                case 3:
                    context = (Context) compositeDecoderB.m(serialDescriptor, 3, Context$$serializer.f26211a, context);
                    i2 |= 8;
                    break;
                case 4:
                    query = (Query) compositeDecoderB.m(serialDescriptor, 4, QuerySerializer.f25980a, query);
                    i2 |= 16;
                    break;
                case 5:
                    searchOptions = (SearchOptions) compositeDecoderB.m(serialDescriptor, 5, SearchOptions$$serializer.f26409a, searchOptions);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SearchPayload(i2, session, user, searchSelector, context, query, searchOptions, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SearchPayload searchPayload = (SearchPayload) obj;
        searchPayload.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Session$$serializer session$$serializer = Session$$serializer.f26245a;
        Session session = searchPayload.f26238a;
        SearchOptions searchOptions = searchPayload.f26242f;
        Query query = searchPayload.f26241e;
        Context context = searchPayload.d;
        compositeEncoderB.A(serialDescriptor, 0, session$$serializer, session);
        compositeEncoderB.A(serialDescriptor, 1, UserSerializer.f25993a, searchPayload.f26239b);
        compositeEncoderB.A(serialDescriptor, 2, SearchSelector$$serializer.f26412a, searchPayload.f26240c);
        if (compositeEncoderB.o(serialDescriptor) || context != null) {
            compositeEncoderB.h(serialDescriptor, 3, Context$$serializer.f26211a, context);
        }
        if (compositeEncoderB.o(serialDescriptor) || query != null) {
            compositeEncoderB.h(serialDescriptor, 4, QuerySerializer.f25980a, query);
        }
        if (compositeEncoderB.o(serialDescriptor) || searchOptions != null) {
            compositeEncoderB.h(serialDescriptor, 5, SearchOptions$$serializer.f26409a, searchOptions);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{Session$$serializer.f26245a, UserSerializer.f25993a, SearchSelector$$serializer.f26412a, BuiltinSerializersKt.d(Context$$serializer.f26211a), BuiltinSerializersKt.d(QuerySerializer.f25980a), BuiltinSerializersKt.d(SearchOptions$$serializer.f26409a)};
    }
}
