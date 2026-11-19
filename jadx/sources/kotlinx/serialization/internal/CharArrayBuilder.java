package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/CharArrayBuilder;", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "", "bufferWithData", "<init>", "([C)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CharArrayBuilder extends PrimitiveArrayBuilder<char[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public char[] f75583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f75584b;

    public CharArrayBuilder(char[] cArr) {
        cArr.getClass();
        this.f75583a = cArr;
        this.f75584b = cArr.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public final Object a() {
        return Arrays.copyOf(this.f75583a, this.f75584b);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public final void b(int i2) {
        char[] cArr = this.f75583a;
        if (cArr.length < i2) {
            int length = cArr.length * 2;
            if (i2 < length) {
                i2 = length;
            }
            this.f75583a = Arrays.copyOf(cArr, i2);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF75584b() {
        return this.f75584b;
    }
}
