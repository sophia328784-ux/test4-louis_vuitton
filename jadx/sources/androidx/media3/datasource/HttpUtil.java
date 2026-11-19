package androidx.media3.datasource;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class HttpUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f14433a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f14434b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");
}
