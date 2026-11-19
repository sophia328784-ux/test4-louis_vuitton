package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/serialization/json/internal/JsonToStringWriter;", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "<init>", "()V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonToStringWriter implements InternalJsonWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public char[] f75796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f75797b;

    public JsonToStringWriter() {
        char[] cArr;
        CharArrayPool charArrayPool = CharArrayPool.f75772c;
        synchronized (charArrayPool) {
            ArrayDeque arrayDeque = charArrayPool.f75773a;
            cArr = null;
            char[] cArr2 = (char[]) (arrayDeque.isEmpty() ? null : arrayDeque.removeLast());
            if (cArr2 != null) {
                charArrayPool.f75774b -= cArr2.length;
                cArr = cArr2;
            }
        }
        this.f75796a = cArr == null ? new char[128] : cArr;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public final void a(char c2) {
        d(this.f75797b, 1);
        char[] cArr = this.f75796a;
        int i2 = this.f75797b;
        this.f75797b = i2 + 1;
        cArr[i2] = c2;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public final void b(String str) {
        byte b2;
        str.getClass();
        d(this.f75797b, str.length() + 2);
        char[] cArr = this.f75796a;
        int i2 = this.f75797b;
        int i3 = i2 + 1;
        cArr[i2] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i3);
        int i4 = length + i3;
        int i5 = i3;
        while (i5 < i4) {
            char c2 = cArr[i5];
            byte[] bArr = StringOpsKt.f75834b;
            if (c2 < bArr.length && bArr[c2] != 0) {
                int length2 = str.length();
                for (int i6 = i5 - i3; i6 < length2; i6++) {
                    d(i5, 2);
                    char cCharAt = str.charAt(i6);
                    byte[] bArr2 = StringOpsKt.f75834b;
                    if (cCharAt >= bArr2.length || (b2 = bArr2[cCharAt]) == 0) {
                        int i7 = i5 + 1;
                        this.f75796a[i5] = cCharAt;
                        i5 = i7;
                    } else if (b2 == 1) {
                        String str2 = StringOpsKt.f75833a[cCharAt];
                        str2.getClass();
                        d(i5, str2.length());
                        str2.getChars(0, str2.length(), this.f75796a, i5);
                        int length3 = str2.length() + i5;
                        this.f75797b = length3;
                        i5 = length3;
                    } else {
                        char[] cArr2 = this.f75796a;
                        cArr2[i5] = '\\';
                        cArr2[i5 + 1] = (char) b2;
                        i5 += 2;
                        this.f75797b = i5;
                    }
                }
                d(i5, 1);
                this.f75796a[i5] = '\"';
                this.f75797b = i5 + 1;
                return;
            }
            i5++;
        }
        cArr[i4] = '\"';
        this.f75797b = i4 + 1;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public final void c(String str) {
        str.getClass();
        int length = str.length();
        if (length == 0) {
            return;
        }
        d(this.f75797b, length);
        str.getChars(0, str.length(), this.f75796a, this.f75797b);
        this.f75797b += length;
    }

    public final void d(int i2, int i3) {
        int i4 = i3 + i2;
        char[] cArr = this.f75796a;
        if (cArr.length <= i4) {
            int i5 = i2 * 2;
            if (i4 < i5) {
                i4 = i5;
            }
            this.f75796a = Arrays.copyOf(cArr, i4);
        }
    }

    public final void e() {
        CharArrayPool charArrayPool = CharArrayPool.f75772c;
        char[] cArr = this.f75796a;
        charArrayPool.getClass();
        cArr.getClass();
        synchronized (charArrayPool) {
            int i2 = charArrayPool.f75774b;
            if (cArr.length + i2 < ArrayPoolsKt.f75771a) {
                charArrayPool.f75774b = i2 + cArr.length;
                charArrayPool.f75773a.addLast(cArr);
            }
        }
    }

    public final String toString() {
        return new String(this.f75796a, 0, this.f75797b);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public final void writeLong(long j2) {
        c(String.valueOf(j2));
    }
}
