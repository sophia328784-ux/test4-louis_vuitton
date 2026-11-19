package okio;

import kotlin.Metadata;

/* JADX INFO: renamed from: okio.-Base64, reason: invalid class name */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Base64 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f77382a;

    static {
        ByteString.f77398e.getClass();
        f77382a = ByteString.Companion.c("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").data;
        ByteString.Companion.c("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    }
}
