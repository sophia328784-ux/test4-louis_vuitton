package kotlinx.serialization.json;

import defpackage.cj;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.json.internal.JsonExceptionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/json/JsonLiteralSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonLiteral;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class JsonLiteralSerializer implements KSerializer<JsonLiteral> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonLiteralSerializer f75751a = new JsonLiteralSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f75752b = SerialDescriptorsKt.a("kotlinx.serialization.json.JsonLiteral", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19850b() {
        return f75752b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        JsonElement jsonElementH = JsonElementSerializersKt.b(decoder).h();
        if (jsonElementH instanceof JsonLiteral) {
            return (JsonLiteral) jsonElementH;
        }
        StringBuilder sb = new StringBuilder("Unexpected JSON element, expected JsonLiteral, had ");
        throw JsonExceptionsKt.e(cj.l(Reflection.f71922a, jsonElementH.getClass(), sb), jsonElementH.toString(), -1);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        JsonLiteral jsonLiteral = (JsonLiteral) obj;
        jsonLiteral.getClass();
        JsonElementSerializersKt.a(encoder);
        boolean z = jsonLiteral.f75749b;
        String str = jsonLiteral.d;
        if (z) {
            encoder.E(str);
            return;
        }
        SerialDescriptor serialDescriptor = jsonLiteral.f75750c;
        if (serialDescriptor != null) {
            encoder.m(serialDescriptor).E(str);
            return;
        }
        Long lZ = StringsKt.Z(str);
        if (lZ != null) {
            encoder.n(lZ.longValue());
            return;
        }
        ULong uLongF = UStringsKt.f(str);
        if (uLongF != null) {
            long j2 = uLongF.f71729b;
            ULong.INSTANCE.getClass();
            encoder.m(ULongSerializer.f75706b).n(j2);
            return;
        }
        Double dX = StringsKt.X(str);
        if (dX != null) {
            encoder.e(dX.doubleValue());
            return;
        }
        Boolean boolW = StringsKt.W(str);
        if (boolW != null) {
            encoder.s(boolW.booleanValue());
        } else {
            encoder.E(str);
        }
    }
}
