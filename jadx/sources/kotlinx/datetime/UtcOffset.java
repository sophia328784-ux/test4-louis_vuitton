package kotlinx.datetime;

import java.time.ZoneOffset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.UtcOffsetSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/UtcOffset;", "", "Ljava/time/ZoneOffset;", "zoneOffset", "<init>", "(Ljava/time/ZoneOffset;)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = UtcOffsetSerializer.class)
public final class UtcOffset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ZoneOffset f75246a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/UtcOffset$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/UtcOffset;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UtcOffset> serializer() {
            return UtcOffsetSerializer.f75514a;
        }
    }

    static {
        ZoneOffset zoneOffset = ZoneOffset.UTC;
        zoneOffset.getClass();
        new UtcOffset(zoneOffset);
    }

    public UtcOffset(ZoneOffset zoneOffset) {
        zoneOffset.getClass();
        this.f75246a = zoneOffset;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UtcOffset) {
            return Intrinsics.c(this.f75246a, ((UtcOffset) obj).f75246a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75246a.hashCode();
    }

    public final String toString() {
        String string = this.f75246a.toString();
        string.getClass();
        return string;
    }
}
