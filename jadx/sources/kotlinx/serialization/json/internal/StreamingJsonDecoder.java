package kotlinx.serialization.json.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.text.StringsKt;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.encoding.ChunkedDecoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.ElementMarker;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0010B1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonDecoder;", "Lkotlinx/serialization/json/JsonDecoder;", "Lkotlinx/serialization/encoding/ChunkedDecoder;", "Lkotlinx/serialization/encoding/AbstractDecoder;", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/internal/WriteMode;", "mode", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "lexer", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;", "discriminatorHolder", "<init>", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V", "DiscriminatorHolder", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class StreamingJsonDecoder extends AbstractDecoder implements JsonDecoder, ChunkedDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Json f75815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WriteMode f75816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractJsonLexer f75817c;
    public final SerializersModule d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f75818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public DiscriminatorHolder f75819f;
    public final JsonConfiguration g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final JsonElementMarker f75820h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;", "", "", "discriminatorToSkip", "<init>", "(Ljava/lang/String;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DiscriminatorHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f75821a;

        public DiscriminatorHolder(String str) {
            this.f75821a = str;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f75822a;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WriteMode.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f75822a = iArr;
        }
    }

    public StreamingJsonDecoder(Json json, WriteMode writeMode, AbstractJsonLexer abstractJsonLexer, SerialDescriptor serialDescriptor, DiscriminatorHolder discriminatorHolder) {
        json.getClass();
        writeMode.getClass();
        abstractJsonLexer.getClass();
        serialDescriptor.getClass();
        this.f75815a = json;
        this.f75816b = writeMode;
        this.f75817c = abstractJsonLexer;
        this.d = json.f75717b;
        this.f75818e = -1;
        this.f75819f = discriminatorHolder;
        JsonConfiguration jsonConfiguration = json.f75716a;
        this.g = jsonConfiguration;
        this.f75820h = jsonConfiguration.f75738f ? null : new JsonElementMarker(serialDescriptor);
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    /* JADX INFO: renamed from: A, reason: from getter */
    public final Json getF75768c() {
        return this.f75815a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0134  */
    /* JADX WARN: Code duplicated, block: B:48:0x0135  */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x0135, please report this as an issue */
    @Override // kotlinx.serialization.encoding.Decoder
    public final Object D(DeserializationStrategy deserializationStrategy) {
        String message;
        Json json = this.f75815a;
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        deserializationStrategy.getClass();
        try {
            if ((deserializationStrategy instanceof AbstractPolymorphicSerializer) && !json.f75716a.f75740i) {
                String strA = PolymorphicKt.a(((AbstractPolymorphicSerializer) deserializationStrategy).getF19838b(), json);
                String strP = abstractJsonLexer.p(strA, this.g.f75736c);
                String strF = null;
                if (strP != null) {
                    try {
                        DeserializationStrategy deserializationStrategyA = PolymorphicSerializerKt.a((AbstractPolymorphicSerializer) deserializationStrategy, this, strP);
                        this.f75819f = new DiscriminatorHolder(strA);
                        return deserializationStrategyA.b(this);
                    } catch (SerializationException e2) {
                        String message2 = e2.getMessage();
                        message2.getClass();
                        String strF2 = StringsKt.F(StringsKt.T(message2, '\n'), FileUtils.HIDDEN_PREFIX);
                        String message3 = e2.getMessage();
                        message3.getClass();
                        String strSubstring = "";
                        int iU = StringsKt.u(message3, '\n', 0, 6);
                        if (iU != -1) {
                            strSubstring = message3.substring(iU + 1, message3.length());
                        }
                        AbstractJsonLexer.m(abstractJsonLexer, strF2, 0, strSubstring, 2);
                        throw null;
                    }
                }
                if (json.f75716a.f75740i) {
                    return ((AbstractPolymorphicSerializer) deserializationStrategy).b(this);
                }
                String strA2 = PolymorphicKt.a(((AbstractPolymorphicSerializer) deserializationStrategy).getF19838b(), json);
                JsonElement jsonElementH = h();
                String f75677b = ((AbstractPolymorphicSerializer) deserializationStrategy).getF19838b().getF75659a();
                if (!(jsonElementH instanceof JsonObject)) {
                    StringBuilder sb = new StringBuilder("Expected ");
                    ReflectionFactory reflectionFactory = Reflection.f71922a;
                    sb.append(reflectionFactory.b(JsonObject.class).B());
                    sb.append(", but had ");
                    sb.append(reflectionFactory.b(jsonElementH.getClass()).B());
                    sb.append(" as the serialized body of ");
                    sb.append(f75677b);
                    sb.append(" at element: ");
                    sb.append(abstractJsonLexer.f75766b.a());
                    throw JsonExceptionsKt.e(sb.toString(), jsonElementH.toString(), -1);
                }
                JsonObject jsonObject = (JsonObject) jsonElementH;
                JsonElement jsonElement = (JsonElement) jsonObject.get(strA2);
                if (jsonElement != null) {
                    JsonPrimitive jsonPrimitiveD = JsonElementKt.d(jsonElement);
                    if (!(jsonPrimitiveD instanceof JsonNull)) {
                        strF = jsonPrimitiveD.getD();
                    }
                }
                try {
                    return TreeJsonDecoderKt.b(json, strA2, jsonObject, PolymorphicSerializerKt.a((AbstractPolymorphicSerializer) deserializationStrategy, this, strF));
                } catch (SerializationException e3) {
                    String message4 = e3.getMessage();
                    message4.getClass();
                    throw JsonExceptionsKt.e(message4, jsonObject.toString(), -1);
                }
                message = e.getMessage();
                message.getClass();
                if (StringsKt.k(message, "at path", false)) {
                    throw e;
                }
                throw new MissingFieldException(e.f75516b, e.getMessage() + " at path: " + abstractJsonLexer.f75766b.a(), e);
            }
            return deserializationStrategy.b(this);
        } catch (MissingFieldException e4) {
            message = e4.getMessage();
            message.getClass();
            if (StringsKt.k(message, "at path", false)) {
                throw e4;
            }
            throw new MissingFieldException(e4.f75516b, e4.getMessage() + " at path: " + abstractJsonLexer.f75766b.a(), e4);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final byte E() {
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        long jH = abstractJsonLexer.h();
        byte b2 = (byte) jH;
        if (jH == b2) {
            return b2;
        }
        AbstractJsonLexer.m(abstractJsonLexer, "Failed to parse byte for input '" + jH + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SerializersModule getF75784b() {
        return this.d;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Json json = this.f75815a;
        WriteMode writeModeB = WriteModeKt.b(serialDescriptor, json);
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        JsonPath jsonPath = abstractJsonLexer.f75766b;
        jsonPath.getClass();
        int i2 = jsonPath.f75791c + 1;
        jsonPath.f75791c = i2;
        Object[] objArr = jsonPath.f75789a;
        if (i2 == objArr.length) {
            int i3 = i2 * 2;
            jsonPath.f75789a = Arrays.copyOf(objArr, i3);
            jsonPath.f75790b = Arrays.copyOf(jsonPath.f75790b, i3);
        }
        jsonPath.f75789a[i2] = serialDescriptor;
        abstractJsonLexer.g(writeModeB.begin);
        if (abstractJsonLexer.q() == 4) {
            AbstractJsonLexer.m(abstractJsonLexer, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        int i4 = WhenMappings.f75822a[writeModeB.ordinal()];
        if (i4 == 1 || i4 == 2 || i4 == 3) {
            return new StreamingJsonDecoder(this.f75815a, writeModeB, this.f75817c, serialDescriptor, this.f75819f);
        }
        if (this.f75816b == writeModeB && json.f75716a.f75738f) {
            return this;
        }
        return new StreamingJsonDecoder(this.f75815a, writeModeB, this.f75817c, serialDescriptor, this.f75819f);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public final void c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        int f75549c = serialDescriptor.getF75661c();
        Json json = this.f75815a;
        if (f75549c == 0 && JsonNamesMapKt.e(serialDescriptor, json)) {
            while (n(serialDescriptor) != -1) {
            }
        }
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        if (abstractJsonLexer.u() && !json.f75716a.o) {
            JsonExceptionsKt.f(abstractJsonLexer, "");
            throw null;
        }
        abstractJsonLexer.g(this.f75816b.end);
        JsonPath jsonPath = abstractJsonLexer.f75766b;
        int i2 = jsonPath.f75791c;
        int[] iArr = jsonPath.f75790b;
        if (iArr[i2] == -2) {
            iArr[i2] = -1;
            jsonPath.f75791c = i2 - 1;
        }
        int i3 = jsonPath.f75791c;
        if (i3 != -1) {
            jsonPath.f75791c = i3 - 1;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int e(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return JsonNamesMapKt.d(serialDescriptor, this.f75815a, x(), " at path ".concat(this.f75817c.f75766b.a()));
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final JsonElement h() {
        return new JsonTreeReader(this.f75815a.f75716a, this.f75817c).b();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int i() {
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        long jH = abstractJsonLexer.h();
        int i2 = (int) jH;
        if (jH == i2) {
            return i2;
        }
        AbstractJsonLexer.m(abstractJsonLexer, "Failed to parse int for input '" + jH + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final long k() {
        return this.f75817c.h();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        int iC;
        boolean z;
        boolean z2;
        char c2;
        String strR;
        serialDescriptor.getClass();
        int[] iArr = WhenMappings.f75822a;
        WriteMode writeMode = this.f75816b;
        int i2 = iArr[writeMode.ordinal()];
        char c3 = ':';
        boolean zU = false;
        int i3 = 0;
        zU = false;
        Json json = this.f75815a;
        boolean z3 = true;
        int i4 = -1;
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        if (i2 == 2) {
            int i5 = this.f75818e;
            boolean z4 = i5 % 2 != 0;
            if (!z4) {
                abstractJsonLexer.g(':');
            } else if (i5 != -1) {
                zU = abstractJsonLexer.u();
            }
            if (abstractJsonLexer.b()) {
                if (z4) {
                    int i6 = this.f75818e;
                    int i7 = abstractJsonLexer.f75765a;
                    if (i6 == -1) {
                        if (zU) {
                            AbstractJsonLexer.m(abstractJsonLexer, "Unexpected leading comma", i7, null, 4);
                            throw null;
                        }
                    } else if (!zU) {
                        AbstractJsonLexer.m(abstractJsonLexer, "Expected comma after the key-value pair", i7, null, 4);
                        throw null;
                    }
                }
                i4 = this.f75818e + 1;
                this.f75818e = i4;
            } else {
                if (zU && !json.f75716a.o) {
                    JsonExceptionsKt.f(abstractJsonLexer, "object");
                    throw null;
                }
                i4 = -1;
            }
        } else if (i2 == 4) {
            boolean zU2 = abstractJsonLexer.u();
            JsonPath jsonPath = abstractJsonLexer.f75766b;
            while (true) {
                boolean zB = abstractJsonLexer.b();
                JsonElementMarker jsonElementMarker = this.f75820h;
                if (zB) {
                    JsonConfiguration jsonConfiguration = this.g;
                    boolean z5 = jsonConfiguration.f75736c;
                    int i8 = i4;
                    String strK = z5 ? abstractJsonLexer.k() : abstractJsonLexer.d();
                    abstractJsonLexer.g(c3);
                    iC = JsonNamesMapKt.c(serialDescriptor, json, strK);
                    if (iC != -3) {
                        if (jsonConfiguration.f75739h) {
                            boolean zJ = serialDescriptor.j(iC);
                            SerialDescriptor serialDescriptorH = serialDescriptor.h(iC);
                            if (zJ && !serialDescriptorH.b() && abstractJsonLexer.v(z3)) {
                                z = z3;
                            } else {
                                z = z3;
                                if (Intrinsics.c(serialDescriptorH.getF75548b(), SerialKind.ENUM.f75563a) && ((!serialDescriptorH.b() || !abstractJsonLexer.v(false)) && (strR = abstractJsonLexer.r(z5)) != null)) {
                                    int iC2 = JsonNamesMapKt.c(serialDescriptorH, json, strR);
                                    boolean z6 = (json.f75716a.f75738f || !serialDescriptorH.b()) ? false : z;
                                    if (iC2 == -3 && (zJ || z6)) {
                                        abstractJsonLexer.i();
                                    }
                                }
                            }
                            zU2 = abstractJsonLexer.u();
                            z2 = false;
                        }
                        if (jsonElementMarker != null) {
                            ElementMarker elementMarker = jsonElementMarker.f75785a;
                            if (iC < 64) {
                                elementMarker.f75609c |= 1 << iC;
                            } else {
                                int i9 = (iC >>> 6) - 1;
                                long[] jArr = elementMarker.d;
                                jArr[i9] = jArr[i9] | (1 << (iC & 63));
                            }
                        }
                    } else {
                        z = z3;
                        zU2 = false;
                        z2 = z;
                    }
                    if (z2) {
                        if (!JsonNamesMapKt.e(serialDescriptor, json)) {
                            DiscriminatorHolder discriminatorHolder = this.f75819f;
                            if (discriminatorHolder == null || !Intrinsics.c(discriminatorHolder.f75821a, strK)) {
                                int i10 = jsonPath.f75791c;
                                int[] iArr2 = jsonPath.f75790b;
                                if (iArr2[i10] == -2) {
                                    iArr2[i10] = i8;
                                    jsonPath.f75791c = i10 - 1;
                                }
                                int i11 = jsonPath.f75791c;
                                if (i11 != i8) {
                                    jsonPath.f75791c = i11 + i8;
                                }
                                int iY = StringsKt.y(0, 6, abstractJsonLexer.getF75832e().subSequence(0, abstractJsonLexer.f75765a).toString(), strK);
                                StringBuilder sbR = fc.r(iY, "Encountered an unknown key '", strK, "' at offset ", " at path: ");
                                sbR.append(jsonPath.a());
                                sbR.append("\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.\nJSON input: ");
                                sbR.append((Object) JsonExceptionsKt.g(abstractJsonLexer.getF75832e(), iY));
                                throw new JsonDecodingException(sbR.toString());
                            }
                            discriminatorHolder.f75821a = null;
                        }
                        ArrayList arrayList = new ArrayList();
                        byte bQ = abstractJsonLexer.q();
                        if (bQ == 8 || bQ == 6) {
                            while (true) {
                                byte bQ2 = abstractJsonLexer.q();
                                if (bQ2 != z) {
                                    c2 = 6;
                                    if (bQ2 == 8 || bQ2 == 6) {
                                        arrayList.add(Byte.valueOf(bQ2));
                                    } else {
                                        if (bQ2 == 9) {
                                            if (((Number) CollectionsKt.M(arrayList)).byteValue() != 8) {
                                                throw JsonExceptionsKt.e("found ] instead of } at path: " + jsonPath, abstractJsonLexer.getF75832e(), abstractJsonLexer.f75765a);
                                            }
                                            CollectionsKt.c0(arrayList);
                                        } else if (bQ2 == 7) {
                                            if (((Number) CollectionsKt.M(arrayList)).byteValue() != 6) {
                                                throw JsonExceptionsKt.e("found } instead of ] at path: " + jsonPath, abstractJsonLexer.getF75832e(), abstractJsonLexer.f75765a);
                                            }
                                            CollectionsKt.c0(arrayList);
                                        } else if (bQ2 == 10) {
                                            AbstractJsonLexer.m(abstractJsonLexer, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6);
                                            throw null;
                                        }
                                        c2 = 6;
                                    }
                                    abstractJsonLexer.e();
                                    if (arrayList.size() == 0) {
                                        break;
                                    }
                                } else if (z5) {
                                    abstractJsonLexer.j();
                                } else {
                                    abstractJsonLexer.d();
                                }
                                z = true;
                            }
                        } else {
                            abstractJsonLexer.j();
                            c2 = 6;
                        }
                        zU2 = abstractJsonLexer.u();
                    }
                    c3 = ':';
                    z3 = true;
                    i4 = -1;
                } else {
                    if (zU2 && !json.f75716a.o) {
                        JsonExceptionsKt.f(abstractJsonLexer, "object");
                        throw null;
                    }
                    if (jsonElementMarker == null) {
                        i4 = -1;
                        break;
                    }
                    ElementMarker elementMarker2 = jsonElementMarker.f75785a;
                    Function2 function2 = elementMarker2.f75608b;
                    SerialDescriptor serialDescriptor2 = elementMarker2.f75607a;
                    int f75549c = serialDescriptor2.getF75661c();
                    while (true) {
                        long j2 = elementMarker2.f75609c;
                        long j3 = -1;
                        if (j2 == -1) {
                            if (f75549c > 64) {
                                long[] jArr2 = elementMarker2.d;
                                int length = jArr2.length;
                                while (true) {
                                    if (i3 < length) {
                                        int i12 = i3 + 1;
                                        int i13 = i12 * 64;
                                        long j4 = jArr2[i3];
                                        while (true) {
                                            if (j4 != j3) {
                                                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j4);
                                                j4 |= 1 << iNumberOfTrailingZeros;
                                                iC = iNumberOfTrailingZeros + i13;
                                                if (((Boolean) function2.invoke(serialDescriptor2, Integer.valueOf(iC))).booleanValue()) {
                                                    jArr2[i3] = j4;
                                                } else {
                                                    j3 = -1;
                                                }
                                            } else {
                                                jArr2[i3] = j4;
                                                i3 = i12;
                                                j3 = -1;
                                            }
                                        }
                                    }
                                }
                            }
                            i4 = -1;
                            break;
                        }
                        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(~j2);
                        elementMarker2.f75609c |= 1 << iNumberOfTrailingZeros2;
                        if (((Boolean) function2.invoke(serialDescriptor2, Integer.valueOf(iNumberOfTrailingZeros2))).booleanValue()) {
                            i4 = iNumberOfTrailingZeros2;
                            break;
                        }
                    }
                }
                i4 = iC;
                break;
            }
        } else {
            boolean zU3 = abstractJsonLexer.u();
            if (abstractJsonLexer.b()) {
                int i14 = this.f75818e;
                if (i14 != -1 && !zU3) {
                    AbstractJsonLexer.m(abstractJsonLexer, "Expected end of the array or comma", 0, null, 6);
                    throw null;
                }
                i4 = i14 + 1;
                this.f75818e = i4;
            } else if (zU3 && !json.f75716a.o) {
                JsonExceptionsKt.f(abstractJsonLexer, "array");
                throw null;
            }
        }
        if (writeMode != WriteMode.MAP) {
            JsonPath jsonPath2 = abstractJsonLexer.f75766b;
            jsonPath2.f75790b[jsonPath2.f75791c] = i4;
        }
        return i4;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final Decoder o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return StreamingJsonEncoderKt.a(serialDescriptor) ? new JsonDecoderForUnsignedTypes(this.f75817c, this.f75815a) : this;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final short p() {
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        long jH = abstractJsonLexer.h();
        short s = (short) jH;
        if (jH == s) {
            return s;
        }
        AbstractJsonLexer.m(abstractJsonLexer, "Failed to parse short for input '" + jH + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final float q() {
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        String strJ = abstractJsonLexer.j();
        try {
            float f2 = Float.parseFloat(strJ);
            if (this.f75815a.f75716a.f75742k || Math.abs(f2) <= Float.MAX_VALUE) {
                return f2;
            }
            JsonExceptionsKt.h(abstractJsonLexer, Float.valueOf(f2));
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Failed to parse type 'float' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final double s() {
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        String strJ = abstractJsonLexer.j();
        try {
            double d = Double.parseDouble(strJ);
            if (this.f75815a.f75716a.f75742k || Math.abs(d) <= Double.MAX_VALUE) {
                return d;
            }
            JsonExceptionsKt.h(abstractJsonLexer, Double.valueOf(d));
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Failed to parse type 'double' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean u() {
        boolean z;
        boolean z2;
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        int iT = abstractJsonLexer.t();
        if (iT == abstractJsonLexer.getF75832e().length()) {
            AbstractJsonLexer.m(abstractJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        if (abstractJsonLexer.getF75832e().charAt(iT) == '\"') {
            iT++;
            z = true;
        } else {
            z = false;
        }
        int iS = abstractJsonLexer.s(iT);
        if (iS >= abstractJsonLexer.getF75832e().length() || iS == -1) {
            AbstractJsonLexer.m(abstractJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        int i2 = iS + 1;
        int iCharAt = abstractJsonLexer.getF75832e().charAt(iS) | ' ';
        if (iCharAt == 102) {
            abstractJsonLexer.c(i2, "alse");
            z2 = false;
        } else {
            if (iCharAt != 116) {
                AbstractJsonLexer.m(abstractJsonLexer, "Expected valid boolean literal prefix, but had '" + abstractJsonLexer.j() + '\'', 0, null, 6);
                throw null;
            }
            abstractJsonLexer.c(i2, "rue");
            z2 = true;
        }
        if (!z) {
            return z2;
        }
        if (abstractJsonLexer.f75765a == abstractJsonLexer.getF75832e().length()) {
            AbstractJsonLexer.m(abstractJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        if (abstractJsonLexer.getF75832e().charAt(abstractJsonLexer.f75765a) == '\"') {
            abstractJsonLexer.f75765a++;
            return z2;
        }
        AbstractJsonLexer.m(abstractJsonLexer, "Expected closing quotation mark", 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final char v() {
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        String strJ = abstractJsonLexer.j();
        if (strJ.length() == 1) {
            return strJ.charAt(0);
        }
        AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Expected single char, but got '", strJ), 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public final Object w(SerialDescriptor serialDescriptor, int i2, DeserializationStrategy deserializationStrategy, Object obj) {
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        boolean z = this.f75816b == WriteMode.MAP && (i2 & 1) == 0;
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        if (z) {
            JsonPath jsonPath = abstractJsonLexer.f75766b;
            int[] iArr = jsonPath.f75790b;
            int i3 = jsonPath.f75791c;
            if (iArr[i3] == -2) {
                jsonPath.f75789a[i3] = JsonPath.Tombstone.f75792a;
            }
        }
        Object objD = D(deserializationStrategy);
        if (z) {
            JsonPath jsonPath2 = abstractJsonLexer.f75766b;
            int[] iArr2 = jsonPath2.f75790b;
            int i4 = jsonPath2.f75791c;
            if (iArr2[i4] != -2) {
                int i5 = i4 + 1;
                jsonPath2.f75791c = i5;
                Object[] objArr = jsonPath2.f75789a;
                if (i5 == objArr.length) {
                    int i6 = i5 * 2;
                    jsonPath2.f75789a = Arrays.copyOf(objArr, i6);
                    jsonPath2.f75790b = Arrays.copyOf(jsonPath2.f75790b, i6);
                }
            }
            Object[] objArr2 = jsonPath2.f75789a;
            int i7 = jsonPath2.f75791c;
            objArr2[i7] = objD;
            jsonPath2.f75790b[i7] = -2;
        }
        return objD;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final String x() {
        boolean z = this.g.f75736c;
        AbstractJsonLexer abstractJsonLexer = this.f75817c;
        return z ? abstractJsonLexer.k() : abstractJsonLexer.i();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean z() {
        JsonElementMarker jsonElementMarker = this.f75820h;
        return ((jsonElementMarker != null ? jsonElementMarker.f75786b : false) || this.f75817c.v(true)) ? false : true;
    }
}
