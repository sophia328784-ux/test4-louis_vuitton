package kotlin.time;

import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001:\u0001\fB?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/time/UnboundLocalDateTime;", "", "", "year", "month", "day", "hour", "minute", "second", "nanosecond", "<init>", "(IIIIIII)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class UnboundLocalDateTime {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f74591h = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f74592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f74593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f74594c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f74595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f74596f;
    public final int g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/time/UnboundLocalDateTime$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public UnboundLocalDateTime(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f74592a = i2;
        this.f74593b = i3;
        this.f74594c = i4;
        this.d = i5;
        this.f74595e = i6;
        this.f74596f = i7;
        this.g = i8;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnboundLocalDateTime(");
        sb.append(this.f74592a);
        sb.append('-');
        sb.append(this.f74593b);
        sb.append('-');
        sb.append(this.f74594c);
        sb.append(' ');
        sb.append(this.d);
        sb.append(':');
        sb.append(this.f74595e);
        sb.append(':');
        sb.append(this.f74596f);
        sb.append(JwtParser.SEPARATOR_CHAR);
        return tr.k(sb, this.g, ')');
    }
}
