package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\b\tB%\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/FormBody;", "Lokhttp3/RequestBody;", "", "", "encodedNames", "encodedValues", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FormBody extends RequestBody {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final MediaType f76906e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f76907c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/FormBody$Companion;", "", "Lokhttp3/MediaType;", "CONTENT_TYPE", "Lokhttp3/MediaType;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        MediaType.f76933e.getClass();
        f76906e = MediaType.Companion.a("application/x-www-form-urlencoded");
    }

    public FormBody(List<String> list, List<String> list2) {
        list.getClass();
        list2.getClass();
        this.f76907c = _UtilJvmKt.j(list);
        this.d = _UtilJvmKt.j(list2);
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return f(null, true);
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: b */
    public final MediaType getF76981c() {
        return f76906e;
    }

    @Override // okhttp3.RequestBody
    public final void e(BufferedSink bufferedSink) {
        f(bufferedSink, false);
    }

    public final long f(BufferedSink bufferedSink, boolean z) {
        Buffer f77444c;
        if (z) {
            f77444c = new Buffer();
        } else {
            bufferedSink.getClass();
            f77444c = bufferedSink.getF77441c();
        }
        List list = this.f76907c;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                f77444c.m0(38);
            }
            f77444c.M0((String) list.get(i2));
            f77444c.m0(61);
            f77444c.M0((String) this.d.get(i2));
        }
        if (!z) {
            return 0L;
        }
        long j2 = f77444c.f77390c;
        f77444c.h();
        return j2;
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/FormBody$Builder;", "", "Ljava/nio/charset/Charset;", "charset", "<init>", "(Ljava/nio/charset/Charset;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Charset f76908a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f76909b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f76910c;

        public Builder(Charset charset) {
            this.f76908a = charset;
            this.f76909b = new ArrayList();
            this.f76910c = new ArrayList();
        }

        public final void a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f76909b.add(_UrlKt.b(str, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, this.f76908a, 91));
            this.f76910c.add(_UrlKt.b(str2, 0, 0, " !\"#$&'()+,/:;<=>?@[\\]^`{|}~", false, false, false, false, this.f76908a, 91));
        }

        public final FormBody b() {
            return new FormBody(this.f76909b, this.f76910c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Builder(Charset charset, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : charset);
        }
    }
}
