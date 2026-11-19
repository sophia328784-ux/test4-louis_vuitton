package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.WrappedSerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;", "T", "Lkotlinx/serialization/KSerializer;", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "elementSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "savedstate-compose"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SnapshotStateListSerializer<T> implements KSerializer<SnapshotStateList<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f19790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayListSerializer f19791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WrappedSerialDescriptor f19792c;

    public SnapshotStateListSerializer(KSerializer<T> kSerializer) {
        kSerializer.getClass();
        this.f19790a = kSerializer;
        ArrayListSerializer arrayListSerializer = new ArrayListSerializer(kSerializer);
        this.f19791b = arrayListSerializer;
        this.f19792c = SerialDescriptorsKt.b("androidx.compose.runtime.SnapshotStateList", arrayListSerializer.f75570b);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return this.f19792c;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        List list = (List) decoder.D(this.f19791b);
        SnapshotStateList snapshotStateList = new SnapshotStateList();
        snapshotStateList.addAll(CollectionsKt.y0(list));
        return snapshotStateList;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SnapshotStateList snapshotStateList = (SnapshotStateList) obj;
        snapshotStateList.getClass();
        encoder.d(this.f19791b, snapshotStateList);
    }
}
