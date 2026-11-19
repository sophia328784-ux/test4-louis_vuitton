package kotlinx.serialization;

import defpackage.av0;
import defpackage.yt0;
import defpackage.zt0;
import kotlin.Metadata;
import kotlinx.serialization.internal.CachingKt;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.SerializerCache;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SerializersCacheKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SerializerCache f75525a = CachingKt.a(new yt0(29));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerializerCache f75526b = CachingKt.a(new av0(0));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ParametrizedSerializerCache f75527c = CachingKt.b(new zt0(14));
    public static final ParametrizedSerializerCache d = CachingKt.b(new zt0(15));
}
