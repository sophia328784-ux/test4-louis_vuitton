package kotlinx.serialization.json.internal;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/serialization/json/internal/CharMappings;", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CharMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f75775a = new char[117];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f75776b = new byte[126];

    static {
        for (int i2 = 0; i2 < 32; i2++) {
        }
        a(8, 'b');
        a(9, 't');
        a(10, 'n');
        a(12, 'f');
        a(13, 'r');
        a(47, '/');
        a(34, '\"');
        a(92, '\\');
        byte[] bArr = f75776b;
        for (int i3 = 0; i3 < 33; i3++) {
            bArr[i3] = 127;
        }
        bArr[9] = 3;
        bArr[10] = 3;
        bArr[13] = 3;
        bArr[32] = 3;
        bArr[44] = 4;
        bArr[58] = 5;
        bArr[123] = 6;
        bArr[125] = 7;
        bArr[91] = 8;
        bArr[93] = 9;
        bArr[34] = 1;
        bArr[92] = 2;
    }

    public static void a(int i2, char c2) {
        if (c2 != 'u') {
            f75775a[c2] = (char) i2;
        }
    }
}
