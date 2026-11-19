package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.os.BundleCompat;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import defpackage.b21;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/savedstate/serialization/serializers/ParcelableSerializer;", "Landroid/os/Parcelable;", "T", "Lkotlinx/serialization/KSerializer;", "<init>", "()V", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ParcelableSerializer<T extends Parcelable> implements KSerializer<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SerialDescriptorImpl f19842a = SerialDescriptorsKt.d("android.os.Parcelable", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return this.f19842a;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Parcelable b(Decoder decoder) {
        decoder.getClass();
        if (!(decoder instanceof SavedStateDecoder)) {
            b21.n(BuiltInSerializerKt.a(this.f19842a.f75547a, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.f19822a;
        bundle.getClass();
        String str = savedStateDecoder.f19824c;
        KClass kClassB = Reflection.f71922a.b(Parcelable.class);
        str.getClass();
        Parcelable parcelable = (Parcelable) BundleCompat.a(bundle, str, JvmClassMappingKt.b(kClassB));
        if (parcelable != null) {
            return parcelable;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void c(Encoder encoder, Parcelable parcelable) {
        parcelable.getClass();
        if (!(encoder instanceof SavedStateEncoder)) {
            b21.n(BuiltInSerializerKt.b(this.f19842a.f75547a, encoder));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
        Bundle bundle = savedStateEncoder.f19825a;
        bundle.getClass();
        String str = savedStateEncoder.f19827c;
        str.getClass();
        bundle.putParcelable(str, parcelable);
    }
}
