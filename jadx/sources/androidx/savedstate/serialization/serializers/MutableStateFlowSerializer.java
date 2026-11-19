package androidx.savedstate.serialization.serializers;

import kotlin.Metadata;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;", "T", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "valueSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MutableStateFlowSerializer<T> implements KSerializer<MutableStateFlow<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f19837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerialDescriptor f19838b;

    public MutableStateFlowSerializer(KSerializer<T> kSerializer) {
        kSerializer.getClass();
        this.f19837a = kSerializer;
        SerialKind f75548b = kSerializer.getF19838b().getF75548b();
        this.f19838b = f75548b instanceof PrimitiveKind ? SerialDescriptorsKt.a("kotlinx.coroutines.flow.MutableStateFlow", (PrimitiveKind) f75548b) : SerialDescriptorsKt.b("kotlinx.coroutines.flow.MutableStateFlow", kSerializer.getF19838b());
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a, reason: from getter */
    public final SerialDescriptor getF19838b() {
        return this.f19838b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        return StateFlowKt.a(decoder.D(this.f19837a));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        MutableStateFlow mutableStateFlow = (MutableStateFlow) obj;
        mutableStateFlow.getClass();
        encoder.d(this.f19837a, mutableStateFlow.getValue());
    }
}
