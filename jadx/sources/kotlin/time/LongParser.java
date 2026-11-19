package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/time/LongParser;", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LongParser {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f74582e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final LongParser f74583f = new LongParser(4611686018427387903L, true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f74584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f74585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f74586c;
    public final long d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/time/LongParser$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public LongParser(long j2, boolean z) {
        this.f74584a = j2;
        this.f74585b = z;
        this.f74586c = j2 / 10;
        this.d = j2 % 10;
    }
}
