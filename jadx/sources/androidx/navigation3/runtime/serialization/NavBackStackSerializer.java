package androidx.navigation3.runtime.serialization;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.savedstate.compose.serialization.serializers.SnapshotStateListSerializer;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.WrappedSerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;", "Landroidx/navigation3/runtime/NavKey;", "T", "Lkotlinx/serialization/KSerializer;", "Landroidx/navigation3/runtime/NavBackStack;", "elementSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavBackStackSerializer<T extends NavKey> implements KSerializer<NavBackStack<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f18403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateListSerializer f18404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WrappedSerialDescriptor f18405c;

    public NavBackStackSerializer(KSerializer<T> kSerializer) {
        this.f18403a = kSerializer;
        SnapshotStateListSerializer snapshotStateListSerializer = new SnapshotStateListSerializer(kSerializer);
        this.f18404b = snapshotStateListSerializer;
        this.f18405c = SerialDescriptorsKt.b("androidx.navigation3.runtime.NavBackStack", snapshotStateListSerializer.f19792c);
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return this.f18405c;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        return new NavBackStack((SnapshotStateList) decoder.D(this.f18404b));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        encoder.d(this.f18404b, ((NavBackStack) obj).f18396b);
    }
}
