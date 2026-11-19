package androidx.savedstate.serialization.serializers;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"savedstate"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class BuiltInSerializerKt {
    public static final String a(String str, Decoder decoder) {
        str.getClass();
        decoder.getClass();
        return "Cannot deserialize " + str + " with '" + Reflection.f71922a.b(decoder.getClass()).B() + "'. This serializer can only be used with SavedStateDecoder. Use 'decodeFromSavedState' instead.";
    }

    public static final String b(String str, Encoder encoder) {
        str.getClass();
        encoder.getClass();
        return "Cannot serialize " + str + " with '" + Reflection.f71922a.b(encoder.getClass()).B() + "'. This serializer can only be used with SavedStateEncoder. Use 'encodeToSavedState' instead.";
    }
}
