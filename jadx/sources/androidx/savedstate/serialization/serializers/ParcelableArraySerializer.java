package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.os.BundleCompat;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.serialization.SavedStateDecoder;
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

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"Landroidx/savedstate/serialization/serializers/ParcelableArraySerializer;", "Lkotlinx/serialization/KSerializer;", "", "Landroid/os/Parcelable;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ParcelableArraySerializer implements KSerializer<Parcelable[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SerialDescriptorImpl f19839a = SerialDescriptorsKt.d("kotlin.Array<android.os.Parcelable>", new SerialDescriptor[0]);

    public static Parcelable[] f(Decoder decoder) {
        decoder.getClass();
        if (!(decoder instanceof SavedStateDecoder)) {
            b21.n(BuiltInSerializerKt.a(f19839a.f75547a, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.f19822a;
        bundle.getClass();
        String str = savedStateDecoder.f19824c;
        KClass kClassB = Reflection.f71922a.b(Parcelable.class);
        str.getClass();
        Parcelable[] parcelableArrB = BundleCompat.b(bundle, str, JvmClassMappingKt.b(kClassB));
        if (parcelableArrB == null) {
            parcelableArrB = null;
        }
        if (parcelableArrB != null) {
            return parcelableArrB;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }
}
