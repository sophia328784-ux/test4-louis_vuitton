package androidx.savedstate.serialization;

import android.os.IBinder;
import android.os.Parcelable;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ArrayClassDesc;
import kotlinx.serialization.internal.ArrayListClassDesc;
import kotlinx.serialization.internal.ArrayListSerializer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"savedstate"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SavedStateCodecUtils_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SerialDescriptor f19809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptor f19810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SerialDescriptor f19811c;
    public static final SerialDescriptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ArrayClassDesc f19812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ArrayClassDesc f19813f;
    public static final ArrayListClassDesc g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ArrayListClassDesc f19814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ArrayClassDesc f19815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ArrayClassDesc f19816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ArrayListClassDesc f19817k;
    public static final ArrayListClassDesc l;
    public static final SerialDescriptor m;
    public static final SerialDescriptor n;
    public static final SerialDescriptor o;

    static {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f19809a = new PolymorphicSerializer(reflectionFactory.b(CharSequence.class)).getF19838b();
        f19810b = new PolymorphicSerializer(reflectionFactory.b(Parcelable.class)).getF19838b();
        f19811c = new PolymorphicSerializer(reflectionFactory.b(Serializable.class)).getF19838b();
        d = new PolymorphicSerializer(reflectionFactory.b(IBinder.class)).getF19838b();
        DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.f19834b;
        f19812e = BuiltinSerializersKt.a(reflectionFactory.b(Parcelable.class), defaultParcelableSerializer).f75675c;
        f19813f = BuiltinSerializersKt.a(reflectionFactory.b(Parcelable.class), new PolymorphicSerializer(reflectionFactory.b(Parcelable.class))).f75675c;
        g = new ArrayListSerializer(defaultParcelableSerializer).f75570b;
        f19814h = new ArrayListSerializer(new PolymorphicSerializer(reflectionFactory.b(Parcelable.class))).f75570b;
        CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.f19831a;
        f19815i = BuiltinSerializersKt.a(reflectionFactory.b(CharSequence.class), charSequenceSerializer).f75675c;
        f19816j = BuiltinSerializersKt.a(reflectionFactory.b(CharSequence.class), new PolymorphicSerializer(reflectionFactory.b(CharSequence.class))).f75675c;
        f19817k = new ArrayListSerializer(charSequenceSerializer).f75570b;
        l = new ArrayListSerializer(new PolymorphicSerializer(reflectionFactory.b(CharSequence.class))).f75570b;
        m = new SparseArraySerializer(defaultParcelableSerializer).f19850b;
        n = new SparseArraySerializer(new PolymorphicSerializer(reflectionFactory.b(Parcelable.class))).f19850b;
        o = new SparseArraySerializer(BuiltinSerializersKt.d(new PolymorphicSerializer(reflectionFactory.b(Parcelable.class)))).f19850b;
    }
}
