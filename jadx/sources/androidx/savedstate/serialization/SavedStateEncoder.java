package androidx.savedstate.serialization;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.SavedStateWriterKt;
import androidx.savedstate.serialization.serializers.BuiltInSerializerKt;
import androidx.savedstate.serialization.serializers.CharSequenceArraySerializer;
import androidx.savedstate.serialization.serializers.CharSequenceListSerializer;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultJavaSerializableSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.IBinderSerializer;
import androidx.savedstate.serialization.serializers.ParcelableArraySerializer;
import androidx.savedstate.serialization.serializers.ParcelableListSerializer;
import androidx.savedstate.serialization.serializers.SparseParcelableArraySerializer;
import defpackage.b21;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/savedstate/serialization/SavedStateEncoder;", "Lkotlinx/serialization/encoding/AbstractEncoder;", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "savedState", "Landroidx/savedstate/serialization/SavedStateConfiguration;", "configuration", "<init>", "(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SavedStateEncoder extends AbstractEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f19825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SavedStateConfiguration f19826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19827c;

    public SavedStateEncoder(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        this.f19825a = bundle;
        this.f19826b = savedStateConfiguration;
        this.f19827c = "";
    }

    public static void H(SavedStateConfiguration savedStateConfiguration, SerialDescriptor serialDescriptor, Bundle bundle) {
        if (savedStateConfiguration.f19819b != 1) {
            return;
        }
        bundle.getClass();
        if (bundle.containsKey("type")) {
            return;
        }
        if (Intrinsics.c(serialDescriptor.getF75548b(), StructureKind.CLASS.f75564a) || Intrinsics.c(serialDescriptor.getF75548b(), StructureKind.OBJECT.f75567a)) {
            SavedStateWriter.d("type", serialDescriptor.getF75659a(), bundle);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void E(String str) {
        str.getClass();
        Bundle bundle = this.f19825a;
        bundle.getClass();
        SavedStateWriter.d(this.f19827c, str, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public final void F(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        this.f19827c = serialDescriptor.f(i2);
        if (this.f19826b.f19819b == 1) {
            Bundle bundle = this.f19825a;
            bundle.getClass();
            boolean zContainsKey = bundle.containsKey("type");
            boolean zC = Intrinsics.c(this.f19827c, "type");
            if (zContainsKey && zC) {
                md.n(n00.r(this.f19827c, "' that conflicts with the class discriminator. You can rename a property with @SerialName annotation.", pq0.r("SavedStateEncoder for ", SavedStateReader.k("type", bundle), " has property '")));
            }
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    /* JADX INFO: renamed from: a */
    public final SerializersModule getF75826e() {
        return this.f19826b.f19818a;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final CompositeEncoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean zC = Intrinsics.c(this.f19827c, "");
        Bundle bundle = this.f19825a;
        SavedStateConfiguration savedStateConfiguration = this.f19826b;
        if (zC) {
            H(savedStateConfiguration, serialDescriptor, bundle);
            return this;
        }
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        bundle.getClass();
        SavedStateWriter.c(bundle, this.f19827c, bundleA);
        H(savedStateConfiguration, serialDescriptor, bundleA);
        return new SavedStateEncoder(bundleA, savedStateConfiguration);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void d(SerializationStrategy serializationStrategy, Object obj) {
        serializationStrategy.getClass();
        SerialDescriptor serialDescriptorA = serializationStrategy.getF19838b();
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19809a)) {
            CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.f19831a;
            obj.getClass();
            CharSequenceSerializer.g(this, (CharSequence) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19810b)) {
            DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.f19834b;
            obj.getClass();
            defaultParcelableSerializer.c(this, (Parcelable) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19811c)) {
            DefaultJavaSerializableSerializer defaultJavaSerializableSerializer = DefaultJavaSerializableSerializer.f19833b;
            obj.getClass();
            defaultJavaSerializableSerializer.c(this, (Serializable) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.d)) {
            SerialDescriptorImpl serialDescriptorImpl = IBinderSerializer.f19835a;
            obj.getClass();
            IBinder iBinder = (IBinder) obj;
            iBinder.getClass();
            if (!(this instanceof SavedStateEncoder)) {
                b21.n(BuiltInSerializerKt.b(IBinderSerializer.f19835a.f75547a, this));
                return;
            }
            Bundle bundle = this.f19825a;
            bundle.getClass();
            String str = this.f19827c;
            str.getClass();
            bundle.putBinder(str, iBinder);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19815i) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19816j)) {
            SerialDescriptorImpl serialDescriptorImpl2 = CharSequenceArraySerializer.f19828a;
            obj.getClass();
            CharSequence[] charSequenceArr = (CharSequence[]) obj;
            charSequenceArr.getClass();
            if (!(this instanceof SavedStateEncoder)) {
                b21.n(BuiltInSerializerKt.b(CharSequenceArraySerializer.f19828a.f75547a, this));
                return;
            }
            Bundle bundle2 = this.f19825a;
            bundle2.getClass();
            String str2 = this.f19827c;
            str2.getClass();
            bundle2.putCharSequenceArray(str2, charSequenceArr);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19817k) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.l)) {
            CharSequenceListSerializer charSequenceListSerializer = CharSequenceListSerializer.f19829a;
            obj.getClass();
            charSequenceListSerializer.c(this, (List) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19812e) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19813f)) {
            SerialDescriptorImpl serialDescriptorImpl3 = ParcelableArraySerializer.f19839a;
            obj.getClass();
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            parcelableArr.getClass();
            if (!(this instanceof SavedStateEncoder)) {
                b21.n(BuiltInSerializerKt.b(ParcelableArraySerializer.f19839a.f75547a, this));
                return;
            }
            Bundle bundle3 = this.f19825a;
            bundle3.getClass();
            String str3 = this.f19827c;
            str3.getClass();
            bundle3.putParcelableArray(str3, parcelableArr);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.g) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.f19814h)) {
            ParcelableListSerializer parcelableListSerializer = ParcelableListSerializer.f19840a;
            obj.getClass();
            parcelableListSerializer.c(this, (List) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.m) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.n) || Intrinsics.c(serialDescriptorA, SavedStateCodecUtils_androidKt.o)) {
            SparseParcelableArraySerializer sparseParcelableArraySerializer = SparseParcelableArraySerializer.f19855a;
            obj.getClass();
            sparseParcelableArraySerializer.c(this, (SparseArray) obj);
            return;
        }
        SerialDescriptor serialDescriptorA2 = serializationStrategy.getF19838b();
        boolean zC = Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19802a);
        Bundle bundle4 = this.f19825a;
        if (zC) {
            bundle4.getClass();
            String str4 = this.f19827c;
            obj.getClass();
            str4.getClass();
            bundle4.putIntegerArrayList(str4, SavedStateWriterKt.a((List) obj));
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19803b)) {
            bundle4.getClass();
            String str5 = this.f19827c;
            obj.getClass();
            SavedStateWriter.e(str5, (List) obj, bundle4);
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19804c)) {
            bundle4.getClass();
            String str6 = this.f19827c;
            obj.getClass();
            str6.getClass();
            bundle4.putBooleanArray(str6, (boolean[]) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.d)) {
            bundle4.getClass();
            String str7 = this.f19827c;
            obj.getClass();
            str7.getClass();
            bundle4.putCharArray(str7, (char[]) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19805e)) {
            bundle4.getClass();
            String str8 = this.f19827c;
            obj.getClass();
            str8.getClass();
            bundle4.putDoubleArray(str8, (double[]) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19806f)) {
            bundle4.getClass();
            String str9 = this.f19827c;
            obj.getClass();
            str9.getClass();
            bundle4.putFloatArray(str9, (float[]) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.g)) {
            bundle4.getClass();
            String str10 = this.f19827c;
            obj.getClass();
            str10.getClass();
            bundle4.putIntArray(str10, (int[]) obj);
            return;
        }
        if (Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19807h)) {
            bundle4.getClass();
            String str11 = this.f19827c;
            obj.getClass();
            str11.getClass();
            bundle4.putLongArray(str11, (long[]) obj);
            return;
        }
        if (!Intrinsics.c(serialDescriptorA2, SavedStateCodecUtilsKt.f19808i)) {
            serializationStrategy.c(this, obj);
            return;
        }
        bundle4.getClass();
        String str12 = this.f19827c;
        obj.getClass();
        str12.getClass();
        bundle4.putStringArray(str12, (String[]) obj);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void e(double d) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        String str = this.f19827c;
        str.getClass();
        bundle.putDouble(str, d);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void g(byte b2) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        SavedStateWriter.a(b2, this.f19827c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void l(SerialDescriptor serialDescriptor, int i2) {
        serialDescriptor.getClass();
        Bundle bundle = this.f19825a;
        bundle.getClass();
        SavedStateWriter.a(i2, this.f19827c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void n(long j2) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        String str = this.f19827c;
        str.getClass();
        bundle.putLong(str, j2);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final boolean o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this.f19826b.f19820c;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void p() {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        String str = this.f19827c;
        str.getClass();
        bundle.putString(str, null);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void q(short s) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        SavedStateWriter.a(s, this.f19827c, bundle);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void s(boolean z) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        String str = this.f19827c;
        str.getClass();
        bundle.putBoolean(str, z);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void v(float f2) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        String str = this.f19827c;
        str.getClass();
        bundle.putFloat(str, f2);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void w(char c2) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        String str = this.f19827c;
        str.getClass();
        bundle.putChar(str, c2);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void z(int i2) {
        Bundle bundle = this.f19825a;
        bundle.getClass();
        SavedStateWriter.a(i2, this.f19827c, bundle);
    }
}
