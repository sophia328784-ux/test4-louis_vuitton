package kotlinx.serialization.internal;

import defpackage.fc;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/internal/DurationSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/time/Duration;", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DurationSerializer implements KSerializer<Duration> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DurationSerializer f75604a = new DurationSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f75605b = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75605b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        Duration.Companion companion = Duration.INSTANCE;
        String strX = decoder.x();
        companion.getClass();
        strX.getClass();
        try {
            long jE = DurationKt.e(strX);
            if (Duration.d(jE, Duration.f74569f)) {
                throw new IllegalStateException("invariant failed");
            }
            return new Duration(jE);
        } catch (IllegalArgumentException e2) {
            r81.j(fc.h("Invalid ISO duration string format: '", strX, "'."), e2);
            return null;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        long j2 = ((Duration) obj).f74570b;
        Duration.Companion companion = Duration.INSTANCE;
        StringBuilder sb = new StringBuilder();
        if (j2 < 0) {
            sb.append('-');
        }
        sb.append("PT");
        long jV = j2 < 0 ? Duration.v(j2) : j2;
        long jK = Duration.k(jV, DurationUnit.HOURS);
        int iF = Duration.f(jV);
        int iH = Duration.h(jV);
        int iG = Duration.g(jV);
        if (Duration.i(j2)) {
            jK = 9999999999999L;
        }
        boolean z = false;
        boolean z2 = jK != 0;
        boolean z3 = (iH == 0 && iG == 0) ? false : true;
        if (iF != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(jK);
            sb.append('H');
        }
        if (z) {
            sb.append(iF);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            Duration.b(sb, iH, iG, 9, "S", true);
        }
        encoder.E(sb.toString());
    }
}
