package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
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
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Landroid/util/SparseArray;", "Landroid/os/Parcelable;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SparseParcelableArraySerializer implements KSerializer<SparseArray<Parcelable>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseParcelableArraySerializer f19855a = new SparseParcelableArraySerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f19856b = SerialDescriptorsKt.d("android.util.SparseArray<android.os.Parcelable>", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f19856b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final SparseArray b(Decoder decoder) {
        decoder.getClass();
        if (!(decoder instanceof SavedStateDecoder)) {
            b21.n(BuiltInSerializerKt.a(f19856b.f75547a, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.f19822a;
        bundle.getClass();
        String str = savedStateDecoder.f19824c;
        KClass kClassB = Reflection.f71922a.b(Parcelable.class);
        str.getClass();
        SparseArray sparseArrayE = BundleCompat.e(bundle, str, JvmClassMappingKt.b(kClassB));
        if (sparseArrayE != null) {
            return sparseArrayE;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void c(Encoder encoder, SparseArray sparseArray) {
        sparseArray.getClass();
        if (!(encoder instanceof SavedStateEncoder)) {
            b21.n(BuiltInSerializerKt.b(f19856b.f75547a, encoder));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
        Bundle bundle = savedStateEncoder.f19825a;
        bundle.getClass();
        String str = savedStateEncoder.f19827c;
        str.getClass();
        bundle.putSparseParcelableArray(str, sparseArray);
    }
}
