package androidx.savedstate.serialization;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.serialization.serializers.CharSequenceArraySerializer;
import androidx.savedstate.serialization.serializers.CharSequenceListSerializer;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultJavaSerializableSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.IBinderSerializer;
import androidx.savedstate.serialization.serializers.ParcelableArraySerializer;
import androidx.savedstate.serialization.serializers.ParcelableListSerializer;
import androidx.savedstate.serialization.serializers.SparseParcelableArraySerializer;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/savedstate/serialization/SavedStateDecoder;", "Lkotlinx/serialization/encoding/AbstractDecoder;", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "savedState", "Landroidx/savedstate/serialization/SavedStateConfiguration;", "configuration", "<init>", "(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SavedStateDecoder extends AbstractDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f19822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SavedStateConfiguration f19823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19824c;
    public int d;

    public SavedStateDecoder(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        this.f19822a = bundle;
        this.f19823b = savedStateConfiguration;
        this.f19824c = "";
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Object D(DeserializationStrategy deserializationStrategy) {
        Object objF;
        deserializationStrategy.getClass();
        SerialDescriptor serialDescriptorA = deserializationStrategy.getF19838b();
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19809a)) {
            CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.f19831a;
            objF = CharSequenceSerializer.f(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19810b)) {
            objF = DefaultParcelableSerializer.f19834b.b(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19811c)) {
            objF = DefaultJavaSerializableSerializer.f19833b.b(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.d)) {
            objF = IBinderSerializer.f(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19815i) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19816j)) {
            objF = CharSequenceArraySerializer.f(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19817k) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.l)) {
            objF = CharSequenceListSerializer.f19829a.b(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19812e)) {
            Parcelable[] parcelableArrF = ParcelableArraySerializer.f(this);
            Object objB = deserializationStrategy.b(EmptyArrayDecoder.f19800a);
            objB.getClass();
            objF = Arrays.copyOf(parcelableArrF, parcelableArrF.length, JvmClassMappingKt.b(Reflection.f71922a.b(objB.getClass())));
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19813f)) {
            objF = ParcelableArraySerializer.f(this);
        } else if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.g) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19814h)) {
            objF = ParcelableListSerializer.f19840a.b(this);
        } else {
            objF = (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.m) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.n) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.o)) ? SparseParcelableArraySerializer.f19855a.b(this) : null;
        }
        if (objF != null) {
            return objF;
        }
        SerialDescriptor serialDescriptorA2 = deserializationStrategy.getF19838b();
        boolean zC = Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19802a);
        Bundle bundle = this.f19822a;
        if (zC) {
            bundle.getClass();
            String str = this.f19824c;
            str.getClass();
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
            if (integerArrayList != null) {
                return integerArrayList;
            }
            SavedStateReaderKt.a(str);
            throw null;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19803b)) {
            bundle.getClass();
            return SavedStateReader.m(this.f19824c, bundle);
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19804c)) {
            bundle.getClass();
            String str2 = this.f19824c;
            str2.getClass();
            boolean[] booleanArray = bundle.getBooleanArray(str2);
            if (booleanArray != null) {
                return booleanArray;
            }
            SavedStateReaderKt.a(str2);
            throw null;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.d)) {
            bundle.getClass();
            String str3 = this.f19824c;
            str3.getClass();
            char[] charArray = bundle.getCharArray(str3);
            if (charArray != null) {
                return charArray;
            }
            SavedStateReaderKt.a(str3);
            throw null;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19805e)) {
            bundle.getClass();
            String str4 = this.f19824c;
            str4.getClass();
            double[] doubleArray = bundle.getDoubleArray(str4);
            if (doubleArray != null) {
                return doubleArray;
            }
            SavedStateReaderKt.a(str4);
            throw null;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19806f)) {
            bundle.getClass();
            String str5 = this.f19824c;
            str5.getClass();
            float[] floatArray = bundle.getFloatArray(str5);
            if (floatArray != null) {
                return floatArray;
            }
            SavedStateReaderKt.a(str5);
            throw null;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.g)) {
            bundle.getClass();
            return SavedStateReader.h(this.f19824c, bundle);
        }
        if (!Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19807h)) {
            if (!Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19808i)) {
                return deserializationStrategy.b(this);
            }
            bundle.getClass();
            return SavedStateReader.l(this.f19824c, bundle);
        }
        bundle.getClass();
        String str6 = this.f19824c;
        str6.getClass();
        long[] longArray = bundle.getLongArray(str6);
        if (longArray != null) {
            return longArray;
        }
        SavedStateReaderKt.a(str6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final byte E() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return (byte) SavedStateReader.g(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a */
    public final SerializersModule getF75784b() {
        return this.f19823b.f19818a;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (Intrinsics.c(this.f19824c, "")) {
            return this;
        }
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return new SavedStateDecoder(SavedStateReader.j(this.f19824c, bundle), this.f19823b);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int e(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.g(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int i() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.g(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final long k() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.i(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int n(SerialDescriptor serialDescriptor) {
        int size;
        serialDescriptor.getClass();
        boolean zC = Intrinsics.c(serialDescriptor.getF75548b(), StructureKind.LIST.f75565a);
        Bundle bundle = this.f19822a;
        if (zC || Intrinsics.c(serialDescriptor.getF75548b(), StructureKind.MAP.f75566a)) {
            bundle.getClass();
            size = bundle.size();
        } else {
            size = serialDescriptor.getF75661c();
        }
        while (true) {
            int i2 = this.d;
            if (i2 >= size) {
                return -1;
            }
            String strF = serialDescriptor.f(i2);
            if (serialDescriptor.j(this.d)) {
                bundle.getClass();
                if (!SavedStateReader.a(strF, bundle)) {
                    this.d++;
                }
            }
            this.f19824c = strF;
            int i3 = this.d;
            this.d = i3 + 1;
            return i3;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final short p() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return (short) SavedStateReader.g(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final float q() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.f(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final double s() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.e(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean u() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.d(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final char v() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        String str = this.f19824c;
        str.getClass();
        char c2 = bundle.getChar(str, (char) 0);
        if (c2 != 0 || bundle.getChar(str, (char) 65535) != 65535) {
            return c2;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final String x() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return SavedStateReader.k(this.f19824c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean z() {
        Bundle bundle = this.f19822a;
        bundle.getClass();
        return !SavedStateReader.n(this.f19824c, bundle);
    }
}
