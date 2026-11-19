package androidx.savedstate.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayClassDesc;
import kotlinx.serialization.internal.ArrayListClassDesc;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanArraySerializer;
import kotlinx.serialization.internal.CharArraySerializer;
import kotlinx.serialization.internal.DoubleArraySerializer;
import kotlinx.serialization.internal.FloatArraySerializer;
import kotlinx.serialization.internal.IntArraySerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongArraySerializer;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"savedstate"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SavedStateCodecUtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayListClassDesc f19802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayListClassDesc f19803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PrimitiveArrayDescriptor f19804c;
    public static final PrimitiveArrayDescriptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final PrimitiveArrayDescriptor f19805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PrimitiveArrayDescriptor f19806f;
    public static final PrimitiveArrayDescriptor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final PrimitiveArrayDescriptor f19807h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ArrayClassDesc f19808i;

    static {
        IntCompanionObject.f71912a.getClass();
        f19802a = new ArrayListSerializer(IntSerializer.f75624a).f75570b;
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        f19803b = new ArrayListSerializer(stringSerializer).f75570b;
        f19804c = BooleanArraySerializer.f75573c.f75670b;
        d = CharArraySerializer.f75585c.f75670b;
        f19805e = DoubleArraySerializer.f75601c.f75670b;
        f19806f = FloatArraySerializer.f75615c.f75670b;
        g = IntArraySerializer.f75623c.f75670b;
        f19807h = LongArraySerializer.f75634c.f75670b;
        f19808i = BuiltinSerializersKt.a(Reflection.f71922a.b(String.class), stringSerializer).f75675c;
    }
}
