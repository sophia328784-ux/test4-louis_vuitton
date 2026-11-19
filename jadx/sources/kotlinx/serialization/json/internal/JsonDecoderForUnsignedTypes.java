package kotlinx.serialization.json.internal;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;", "Lkotlinx/serialization/encoding/AbstractDecoder;", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "lexer", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonDecoderForUnsignedTypes extends AbstractDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractJsonLexer f75783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerializersModule f75784b;

    public JsonDecoderForUnsignedTypes(AbstractJsonLexer abstractJsonLexer, Json json) {
        abstractJsonLexer.getClass();
        json.getClass();
        this.f75783a = abstractJsonLexer;
        this.f75784b = json.f75717b;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final byte E() {
        AbstractJsonLexer abstractJsonLexer = this.f75783a;
        String strJ = abstractJsonLexer.j();
        try {
            return UStringsKt.b(strJ);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Failed to parse type 'UByte' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SerializersModule getF75784b() {
        return this.f75784b;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int i() {
        AbstractJsonLexer abstractJsonLexer = this.f75783a;
        String strJ = abstractJsonLexer.j();
        try {
            return UStringsKt.c(strJ);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Failed to parse type 'UInt' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final long k() {
        AbstractJsonLexer abstractJsonLexer = this.f75783a;
        String strJ = abstractJsonLexer.j();
        try {
            return UStringsKt.e(strJ);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Failed to parse type 'ULong' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final short p() {
        AbstractJsonLexer abstractJsonLexer = this.f75783a;
        String strJ = abstractJsonLexer.j();
        try {
            return UStringsKt.g(strJ);
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.m(abstractJsonLexer, d21.d('\'', "Failed to parse type 'UShort' for input '", strJ), 0, null, 6);
            throw null;
        }
    }
}
