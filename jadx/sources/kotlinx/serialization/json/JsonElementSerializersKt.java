package kotlinx.serialization.json;

import defpackage.cj;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class JsonElementSerializersKt {
    public static final void a(Encoder encoder) {
        encoder.getClass();
        if ((encoder instanceof JsonEncoder ? (JsonEncoder) encoder : null) != null) {
            return;
        }
        md.k(cj.l(Reflection.f71922a, encoder.getClass(), new StringBuilder("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ")));
    }

    public static final JsonDecoder b(Decoder decoder) {
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            return jsonDecoder;
        }
        md.k(cj.l(Reflection.f71922a, decoder.getClass(), new StringBuilder("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ")));
        return null;
    }
}
