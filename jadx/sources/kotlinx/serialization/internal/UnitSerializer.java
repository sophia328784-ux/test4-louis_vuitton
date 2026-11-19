package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/internal/UnitSerializer;", "Lkotlinx/serialization/KSerializer;", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnitSerializer implements KSerializer<Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UnitSerializer f75712b = new UnitSerializer();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ObjectSerializer f75713a = new ObjectSerializer("kotlin.Unit", Unit.f71739a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return this.f75713a.a();
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        this.f75713a.b(decoder);
        return Unit.f71739a;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Unit unit = (Unit) obj;
        unit.getClass();
        this.f75713a.c(encoder, unit);
    }
}
