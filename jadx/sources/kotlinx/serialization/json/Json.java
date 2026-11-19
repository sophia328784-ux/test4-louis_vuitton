package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.internal.AbstractJsonLexer;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.json.internal.JsonToStringWriter;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.StringJsonLexerWithComments;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/json/Json;", "Lkotlinx/serialization/StringFormat;", "Default", "Lkotlinx/serialization/json/Json$Default;", "Lkotlinx/serialization/json/JsonImpl;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Json implements StringFormat {
    public static final Default d = new Default(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JsonConfiguration f75716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerializersModule f75717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DescriptorSchemaCache f75718c = new DescriptorSchemaCache();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/serialization/json/Json$Default;", "Lkotlinx/serialization/json/Json;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Default extends Json {
        public Default(DefaultConstructorMarker defaultConstructorMarker) {
            super(new JsonConfiguration(false, false, false, false, false, false, null, false, false, null, false, false, null, false, false, false, null, 131071, null), SerializersModuleKt.f75847a, null);
        }
    }

    public Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule, DefaultConstructorMarker defaultConstructorMarker) {
        this.f75716a = jsonConfiguration;
        this.f75717b = serializersModule;
    }

    @Override // kotlinx.serialization.SerialFormat
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SerializersModule getF75717b() {
        return this.f75717b;
    }

    @Override // kotlinx.serialization.StringFormat
    public final Object b(DeserializationStrategy deserializationStrategy, String str) {
        deserializationStrategy.getClass();
        str.getClass();
        StringJsonLexer stringJsonLexer = !this.f75716a.p ? new StringJsonLexer(str) : new StringJsonLexerWithComments(str);
        Object objD = new StreamingJsonDecoder(this, WriteMode.OBJ, stringJsonLexer, deserializationStrategy.a(), null).D(deserializationStrategy);
        if (stringJsonLexer.e() == 10) {
            return objD;
        }
        AbstractJsonLexer.m(stringJsonLexer, "Expected EOF after parsing, but had " + stringJsonLexer.f75832e.charAt(stringJsonLexer.f75765a - 1) + " instead", 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.StringFormat
    public final String c(SerializationStrategy serializationStrategy, Object obj) {
        serializationStrategy.getClass();
        JsonToStringWriter jsonToStringWriter = new JsonToStringWriter();
        try {
            new StreamingJsonEncoder(jsonToStringWriter, this, WriteMode.OBJ, new JsonEncoder[WriteMode.a().size()]).d(serializationStrategy, obj);
            return jsonToStringWriter.toString();
        } finally {
            jsonToStringWriter.e();
        }
    }
}
