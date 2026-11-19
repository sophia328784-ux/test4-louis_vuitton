package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import defpackage.b21;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;", "Lkotlinx/serialization/KSerializer;", "", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CharSequenceSerializer implements KSerializer<CharSequence> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CharSequenceSerializer f19831a = new CharSequenceSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f19832b = SerialDescriptorsKt.d("kotlin.CharSequence", new SerialDescriptor[0]);

    public static CharSequence f(Decoder decoder) {
        decoder.getClass();
        if (!(decoder instanceof SavedStateDecoder)) {
            b21.n(BuiltInSerializerKt.a(f19832b.f75547a, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.f19822a;
        bundle.getClass();
        String str = savedStateDecoder.f19824c;
        str.getClass();
        CharSequence charSequence = bundle.getCharSequence(str);
        if (charSequence != null) {
            return charSequence;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static void g(Encoder encoder, CharSequence charSequence) {
        charSequence.getClass();
        if (!(encoder instanceof SavedStateEncoder)) {
            b21.n(BuiltInSerializerKt.b(f19832b.f75547a, encoder));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
        Bundle bundle = savedStateEncoder.f19825a;
        bundle.getClass();
        String str = savedStateEncoder.f19827c;
        str.getClass();
        bundle.putCharSequence(str, charSequence);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f19832b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final /* bridge */ /* synthetic */ Object b(Decoder decoder) {
        return f(decoder);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final /* bridge */ /* synthetic */ void c(Encoder encoder, Object obj) {
        g(encoder, (CharSequence) obj);
    }
}
