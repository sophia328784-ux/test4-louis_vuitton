package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.os.BundleCompat;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import defpackage.b21;
import java.util.ArrayList;
import java.util.List;
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
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"Landroidx/savedstate/serialization/serializers/ParcelableListSerializer;", "Lkotlinx/serialization/KSerializer;", "", "Landroid/os/Parcelable;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ParcelableListSerializer implements KSerializer<List<? extends Parcelable>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ParcelableListSerializer f19840a = new ParcelableListSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f19841b = SerialDescriptorsKt.d("kotlin.collections.List<android.os.Parcelable>", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f19841b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final ArrayList b(Decoder decoder) {
        decoder.getClass();
        if (!(decoder instanceof SavedStateDecoder)) {
            b21.n(BuiltInSerializerKt.a(f19841b.f75547a, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.f19822a;
        bundle.getClass();
        String str = savedStateDecoder.f19824c;
        KClass kClassB = Reflection.f71922a.b(Parcelable.class);
        str.getClass();
        ArrayList arrayListC = BundleCompat.c(bundle, str, JvmClassMappingKt.b(kClassB));
        if (arrayListC != null) {
            return arrayListC;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void c(Encoder encoder, List list) {
        list.getClass();
        if (!(encoder instanceof SavedStateEncoder)) {
            b21.n(BuiltInSerializerKt.b(f19841b.f75547a, encoder));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
        Bundle bundle = savedStateEncoder.f19825a;
        bundle.getClass();
        SavedStateWriter.b(savedStateEncoder.f19827c, list, bundle);
    }
}
