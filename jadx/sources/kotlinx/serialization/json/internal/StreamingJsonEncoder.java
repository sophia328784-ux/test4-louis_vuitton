package kotlinx.serialization.json.internal;

import defpackage.fc;
import defpackage.lc0;
import defpackage.md;
import defpackage.t30;
import defpackage.v40;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0010\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fB1\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\u0004\b\u000b\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonEncoder;", "Lkotlinx/serialization/json/JsonEncoder;", "Lkotlinx/serialization/encoding/AbstractEncoder;", "Lkotlinx/serialization/json/internal/Composer;", "composer", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/internal/WriteMode;", "mode", "", "modeReuseCache", "<init>", "(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "output", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StreamingJsonEncoder extends AbstractEncoder implements JsonEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Composer f75823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f75824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WriteMode f75825c;
    public final JsonEncoder[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SerializersModule f75826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final JsonConfiguration f75827f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f75828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f75829i;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f75830a;

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
            f75830a = iArr;
        }
    }

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        composer.getClass();
        json.getClass();
        writeMode.getClass();
        this.f75823a = composer;
        this.f75824b = json;
        this.f75825c = writeMode;
        this.d = jsonEncoderArr;
        this.f75826e = json.f75717b;
        this.f75827f = json.f75716a;
        int iOrdinal = writeMode.ordinal();
        if (jsonEncoderArr != null) {
            JsonEncoder jsonEncoder = jsonEncoderArr[iOrdinal];
            if (jsonEncoder == null && jsonEncoder == this) {
                return;
            }
            jsonEncoderArr[iOrdinal] = this;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void E(String str) {
        str.getClass();
        this.f75823a.j(str);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public final void F(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        int i3 = WhenMappings.f75830a[this.f75825c.ordinal()];
        Composer composer = this.f75823a;
        boolean z = true;
        if (i3 == 1) {
            if (!composer.f75778b) {
                composer.e(',');
            }
            composer.b();
            return;
        }
        if (i3 == 2) {
            if (composer.f75778b) {
                this.g = true;
                composer.b();
                return;
            }
            if (i2 % 2 == 0) {
                composer.e(',');
                composer.b();
            } else {
                composer.e(':');
                composer.k();
                z = false;
            }
            this.g = z;
            return;
        }
        int i4 = 3;
        if (i3 == 3) {
            if (i2 == 0) {
                this.g = true;
            }
            if (i2 == 1) {
                composer.e(',');
                composer.k();
                this.g = false;
                return;
            }
            return;
        }
        if (!composer.f75778b) {
            composer.e(',');
        }
        composer.b();
        DescriptorSchemaCache.Key key = JsonNamesMapKt.f75787a;
        Json json = this.f75824b;
        json.getClass();
        JsonNamingStrategy jsonNamingStrategyF = JsonNamesMapKt.f(serialDescriptor, json);
        E(jsonNamingStrategyF == null ? serialDescriptor.f(i2) : ((String[]) json.f75718c.a(serialDescriptor, JsonNamesMapKt.f75788b, new t30(serialDescriptor, jsonNamingStrategyF, i4)))[i2]);
        composer.e(':');
        composer.k();
    }

    @Override // kotlinx.serialization.encoding.Encoder
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SerializersModule getF75826e() {
        return this.f75826e;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final CompositeEncoder b(SerialDescriptor serialDescriptor) {
        JsonEncoder jsonEncoder;
        serialDescriptor.getClass();
        Json json = this.f75824b;
        WriteMode writeModeB = WriteModeKt.b(serialDescriptor, json);
        char c2 = writeModeB.begin;
        Composer composer = this.f75823a;
        if (c2 != 0) {
            composer.e(c2);
            composer.a();
        }
        String str = this.f75828h;
        if (str != null) {
            String f75677b = this.f75829i;
            if (f75677b == null) {
                f75677b = serialDescriptor.getF75659a();
            }
            composer.b();
            composer.j(str);
            composer.e(':');
            composer.k();
            E(f75677b);
            this.f75828h = null;
            this.f75829i = null;
        }
        if (this.f75825c == writeModeB) {
            return this;
        }
        JsonEncoder[] jsonEncoderArr = this.d;
        return (jsonEncoderArr == null || (jsonEncoder = jsonEncoderArr[writeModeB.ordinal()]) == null) ? new StreamingJsonEncoder(composer, json, writeModeB, jsonEncoderArr) : jsonEncoder;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public final void c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        WriteMode writeMode = this.f75825c;
        if (writeMode.end != 0) {
            Composer composer = this.f75823a;
            composer.l();
            composer.c();
            composer.e(writeMode.end);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0045  */
    @Override // kotlinx.serialization.encoding.Encoder
    public final void d(SerializationStrategy serializationStrategy, Object obj) {
        String strA;
        serializationStrategy.getClass();
        Json json = this.f75824b;
        JsonConfiguration jsonConfiguration = json.f75716a;
        if (jsonConfiguration.f75740i) {
            serializationStrategy.c(this, obj);
            return;
        }
        boolean z = serializationStrategy instanceof AbstractPolymorphicSerializer;
        if (!z) {
            int i2 = PolymorphicKt.WhenMappings.f75814a[jsonConfiguration.q.ordinal()];
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    v40.g();
                    return;
                } else {
                    SerialKind f75548b = serializationStrategy.getF19838b().getF75548b();
                    strA = (Intrinsics.c(f75548b, StructureKind.CLASS.f75564a) || Intrinsics.c(f75548b, StructureKind.OBJECT.f75567a)) ? PolymorphicKt.a(serializationStrategy.getF19838b(), json) : null;
                }
            }
        } else if (jsonConfiguration.q != ClassDiscriminatorMode.NONE) {
        }
        if (z) {
            AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) serializationStrategy;
            if (obj == null) {
                lc0.v("Value for serializer ", abstractPolymorphicSerializer.getF19838b(), " should always be non-null. Please report issue to the kotlinx.serialization tracker.");
                return;
            }
            SerializationStrategy serializationStrategyB = PolymorphicSerializerKt.b(abstractPolymorphicSerializer, this, obj);
            if (strA != null) {
                if (serializationStrategy instanceof SealedClassSerializer) {
                    SerialDescriptor serialDescriptorA = serializationStrategyB.getF19838b();
                    serialDescriptorA.getClass();
                    if (Platform_commonKt.a(serialDescriptorA).contains(strA)) {
                        zy0.d(fc.s("Sealed class '", serializationStrategyB.getF19838b().getF75659a(), "' cannot be serialized as base class '", ((SealedClassSerializer) serializationStrategy).getF19838b().getF75659a(), "' because it has property name that conflicts with JSON class discriminator '"), strA, "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
                        return;
                    }
                }
                SerialKind f75548b2 = serializationStrategyB.getF19838b().getF75548b();
                f75548b2.getClass();
                if (f75548b2 instanceof SerialKind.ENUM) {
                    md.k("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
                    return;
                } else if (f75548b2 instanceof PrimitiveKind) {
                    md.k("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
                    return;
                } else if (f75548b2 instanceof PolymorphicKind) {
                    md.k("Actual serializer for polymorphic cannot be polymorphic itself");
                    return;
                }
            }
            serializationStrategy = serializationStrategyB;
        }
        if (strA != null) {
            String f75677b = serializationStrategy.getF19838b().getF75659a();
            this.f75828h = strA;
            this.f75829i = f75677b;
        }
        serializationStrategy.c(this, obj);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void e(double d) {
        boolean z = this.g;
        Composer composer = this.f75823a;
        if (z) {
            E(String.valueOf(d));
        } else {
            composer.f75777a.c(String.valueOf(d));
        }
        if (this.f75827f.f75742k || Math.abs(d) <= Double.MAX_VALUE) {
            return;
        }
        throw JsonExceptionsKt.b(composer.f75777a.toString(), Double.valueOf(d));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void g(byte b2) {
        if (this.g) {
            E(String.valueOf((int) b2));
        } else {
            this.f75823a.d(b2);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public final void h(SerialDescriptor serialDescriptor, int i2, SerializationStrategy serializationStrategy, Object obj) {
        serialDescriptor.getClass();
        serializationStrategy.getClass();
        if (obj != null || this.f75827f.f75738f) {
            super.h(serialDescriptor, i2, serializationStrategy, obj);
        }
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public final void j(JsonObject jsonObject) {
        d(JsonElementSerializer.f75746a, jsonObject);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void l(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        E(serialDescriptor.f(i2));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final Encoder m(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean zA = StreamingJsonEncoderKt.a(serialDescriptor);
        WriteMode writeMode = this.f75825c;
        Json json = this.f75824b;
        Composer composerForUnquotedLiterals = this.f75823a;
        if (zA) {
            if (!(composerForUnquotedLiterals instanceof ComposerForUnsignedNumbers)) {
                composerForUnquotedLiterals = new ComposerForUnsignedNumbers(composerForUnquotedLiterals.f75777a, this.g);
            }
            return new StreamingJsonEncoder(composerForUnquotedLiterals, json, writeMode, (JsonEncoder[]) null);
        }
        if (serialDescriptor.getL() && serialDescriptor.equals(JsonElementKt.f75745a)) {
            if (!(composerForUnquotedLiterals instanceof ComposerForUnquotedLiterals)) {
                composerForUnquotedLiterals = new ComposerForUnquotedLiterals(composerForUnquotedLiterals.f75777a, this.g);
            }
            return new StreamingJsonEncoder(composerForUnquotedLiterals, json, writeMode, (JsonEncoder[]) null);
        }
        if (this.f75828h != null) {
            this.f75829i = serialDescriptor.getF75659a();
        }
        return this;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void n(long j2) {
        if (this.g) {
            E(String.valueOf(j2));
        } else {
            this.f75823a.g(j2);
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final boolean o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this.f75827f.f75734a;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void p() {
        Composer composer = this.f75823a;
        composer.getClass();
        composer.f75777a.c("null");
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void q(short s) {
        if (this.g) {
            E(String.valueOf((int) s));
        } else {
            this.f75823a.i(s);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void s(boolean z) {
        if (this.g) {
            E(String.valueOf(z));
        } else {
            this.f75823a.f75777a.c(String.valueOf(z));
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void v(float f2) {
        boolean z = this.g;
        Composer composer = this.f75823a;
        if (z) {
            E(String.valueOf(f2));
        } else {
            composer.f75777a.c(String.valueOf(f2));
        }
        if (this.f75827f.f75742k || Math.abs(f2) <= Float.MAX_VALUE) {
            return;
        }
        throw JsonExceptionsKt.b(composer.f75777a.toString(), Float.valueOf(f2));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void w(char c2) {
        E(String.valueOf(c2));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void z(int i2) {
        if (this.g) {
            E(String.valueOf(i2));
        } else {
            this.f75823a.f(i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StreamingJsonEncoder(InternalJsonWriter internalJsonWriter, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        this(json.f75716a.f75737e ? new ComposerWithPrettyPrint(internalJsonWriter, json) : new Composer(internalJsonWriter), json, writeMode, jsonEncoderArr);
        internalJsonWriter.getClass();
        json.getClass();
        writeMode.getClass();
        jsonEncoderArr.getClass();
        internalJsonWriter.getClass();
        json.getClass();
    }
}
