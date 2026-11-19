package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"kotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1", "", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SerialDescriptorKt$elementNames$1$1 implements Iterator<String>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f75558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SerialDescriptor f75559c;

    public SerialDescriptorKt$elementNames$1$1(SerialDescriptor serialDescriptor) {
        this.f75559c = serialDescriptor;
        this.f75558b = serialDescriptor.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f75558b > 0;
    }

    @Override // java.util.Iterator
    public final String next() {
        SerialDescriptor serialDescriptor = this.f75559c;
        int iD = serialDescriptor.d();
        int i2 = this.f75558b;
        this.f75558b = i2 - 1;
        return serialDescriptor.f(iD - i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
