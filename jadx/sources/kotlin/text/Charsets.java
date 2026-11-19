package kotlin.text;

import java.nio.charset.Charset;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/text/Charsets;", "", "Ljava/nio/charset/Charset;", "UTF_8", "Ljava/nio/charset/Charset;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Charsets {
    public static final Charset UTF_8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charsets f74510a = new Charsets();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f74511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f74512c;
    public static final Charset d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile Charset f74513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile Charset f74514f;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        charsetForName.getClass();
        UTF_8 = charsetForName;
        Charset.forName("UTF-16").getClass();
        Charset charsetForName2 = Charset.forName("UTF-16BE");
        charsetForName2.getClass();
        f74511b = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16LE");
        charsetForName3.getClass();
        f74512c = charsetForName3;
        Charset.forName("US-ASCII").getClass();
        Charset charsetForName4 = Charset.forName("ISO-8859-1");
        charsetForName4.getClass();
        d = charsetForName4;
    }
}
