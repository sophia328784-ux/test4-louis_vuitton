package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u001c\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2", "", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SerialDescriptorKt$special$$inlined$Iterable$2 implements Iterable<String>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SerialDescriptor f75561b;

    public SerialDescriptorKt$special$$inlined$Iterable$2(SerialDescriptor serialDescriptor) {
        this.f75561b = serialDescriptor;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new SerialDescriptorKt$elementNames$1$1(this.f75561b);
    }
}
