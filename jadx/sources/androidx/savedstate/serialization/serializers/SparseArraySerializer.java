package androidx.savedstate.serialization.serializers;

import android.util.SparseArray;
import defpackage.b21;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/savedstate/serialization/serializers/SparseArraySerializer;", "T", "Lkotlinx/serialization/KSerializer;", "Landroid/util/SparseArray;", "elementSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "SparseArraySurrogate", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SparseArraySerializer<T> implements KSerializer<SparseArray<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f19849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerialDescriptor f19850b;

    public SparseArraySerializer(KSerializer<T> kSerializer) {
        kSerializer.getClass();
        KSerializer<SparseArraySurrogate<T>> kSerializerSerializer = SparseArraySurrogate.INSTANCE.serializer(kSerializer);
        this.f19849a = kSerializerSerializer;
        this.f19850b = kSerializerSerializer.getDescriptor();
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SerialDescriptor getDescriptor() {
        return this.f19850b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SparseArraySurrogate sparseArraySurrogate = (SparseArraySurrogate) decoder.D(this.f19849a);
        List list = sparseArraySurrogate.f19852a;
        int size = list.size();
        List list2 = sparseArraySurrogate.f19853b;
        if (size != list2.size()) {
            md.n("Failed requirement.");
            return null;
        }
        SparseArray sparseArray = new SparseArray(list.size());
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            sparseArray.append(((Number) list.get(i2)).intValue(), list2.get(i2));
        }
        return sparseArray;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        sparseArray.getClass();
        int size = sparseArray.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(Integer.valueOf(sparseArray.keyAt(i2)));
        }
        int size2 = sparseArray.size();
        ArrayList arrayList2 = new ArrayList(size2);
        for (int i3 = 0; i3 < size2; i3++) {
            arrayList2.add(sparseArray.valueAt(i3));
        }
        encoder.d(this.f19849a, new SparseArraySurrogate(arrayList, arrayList2));
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u0000 \r*\u0004\b\u0001\u0010\u00012\u00020\u0002:\u0002\u000e\rB#\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bB;\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000f"}, d2 = {"Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;", "T", "", "", "", "keys", "values", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class SparseArraySurrogate<T> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f19851c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new a()), null};
        public static final PluginGeneratedSerialDescriptor d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f19852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f19853b;

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J-\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00050\u0003\"\u0004\b\u0002\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;", "", "T", "Lkotlinx/serialization/KSerializer;", "typeSerial0", "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;", "serializer", "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final <T> KSerializer<SparseArraySurrogate<T>> serializer(final KSerializer<T> typeSerial0) {
                typeSerial0.getClass();
                return new GeneratedSerializer<SparseArraySurrogate<T>>(typeSerial0) { // from class: androidx.savedstate.serialization.serializers.SparseArraySerializer$SparseArraySurrogate$$serializer

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final /* synthetic */ KSerializer f19854a;
                    private final SerialDescriptor descriptor;

                    {
                        typeSerial0.getClass();
                        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", this, 2);
                        pluginGeneratedSerialDescriptor.k("keys", false);
                        pluginGeneratedSerialDescriptor.k("values", false);
                        this.descriptor = pluginGeneratedSerialDescriptor;
                        this.f19854a = typeSerial0;
                    }

                    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
                    /* JADX INFO: renamed from: a, reason: from getter */
                    public final SerialDescriptor getDescriptor() {
                        return this.descriptor;
                    }

                    @Override // kotlinx.serialization.DeserializationStrategy
                    public final Object b(Decoder decoder) {
                        decoder.getClass();
                        SerialDescriptor serialDescriptor = this.descriptor;
                        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
                        Lazy[] lazyArr = SparseArraySerializer.SparseArraySurrogate.f19851c;
                        SerializationConstructorMarker serializationConstructorMarker = null;
                        boolean z = true;
                        int i2 = 0;
                        List list = null;
                        List list2 = null;
                        while (z) {
                            int iN = compositeDecoderB.n(serialDescriptor);
                            if (iN == -1) {
                                z = false;
                            } else if (iN == 0) {
                                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                                i2 |= 1;
                            } else {
                                if (iN != 1) {
                                    b21.l(iN);
                                    return null;
                                }
                                list2 = (List) compositeDecoderB.w(serialDescriptor, 1, new ArrayListSerializer(this.f19854a), list2);
                                i2 |= 2;
                            }
                        }
                        compositeDecoderB.c(serialDescriptor);
                        return new SparseArraySerializer.SparseArraySurrogate(i2, list, list2, serializationConstructorMarker);
                    }

                    @Override // kotlinx.serialization.SerializationStrategy
                    public final void c(Encoder encoder, Object obj) {
                        SparseArraySerializer.SparseArraySurrogate sparseArraySurrogate = (SparseArraySerializer.SparseArraySurrogate) obj;
                        sparseArraySurrogate.getClass();
                        SerialDescriptor serialDescriptor = this.descriptor;
                        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
                        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) SparseArraySerializer.SparseArraySurrogate.f19851c[0].getF71699b(), sparseArraySurrogate.f19852a);
                        compositeEncoderB.A(serialDescriptor, 1, new ArrayListSerializer(this.f19854a), sparseArraySurrogate.f19853b);
                        compositeEncoderB.c(serialDescriptor);
                    }

                    @Override // kotlinx.serialization.internal.GeneratedSerializer
                    public final KSerializer[] d() {
                        return new KSerializer[]{this.f19854a};
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlinx.serialization.internal.GeneratedSerializer
                    public final KSerializer[] e() {
                        return new KSerializer[]{SparseArraySerializer.SparseArraySurrogate.f19851c[0].getF71699b(), new ArrayListSerializer(this.f19854a)};
                    }
                };
            }
        }

        static {
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", null, 2);
            pluginGeneratedSerialDescriptor.k("keys", false);
            pluginGeneratedSerialDescriptor.k("values", false);
            d = pluginGeneratedSerialDescriptor;
        }

        public /* synthetic */ SparseArraySurrogate(int i2, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, d);
                throw null;
            }
            this.f19852a = list;
            this.f19853b = list2;
        }

        public SparseArraySurrogate(List<Integer> list, List<? extends T> list2) {
            list.getClass();
            list2.getClass();
            this.f19852a = list;
            this.f19853b = list2;
        }
    }
}
