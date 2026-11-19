package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.ArraysKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.UByteSerializer;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.internal.UShortSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class StreamingJsonEncoderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f75831a;

    static {
        UInt.INSTANCE.getClass();
        ULong.INSTANCE.getClass();
        UByte.INSTANCE.getClass();
        UShort.INSTANCE.getClass();
        f75831a = ArraysKt.Z(new SerialDescriptor[]{UIntSerializer.f75701b, ULongSerializer.f75706b, UByteSerializer.f75696b, UShortSerializer.f75711b});
    }

    public static final boolean a(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return serialDescriptor.getL() && f75831a.contains(serialDescriptor);
    }
}
