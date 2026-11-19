package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/ShortArrayBuilder;", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "", "bufferWithData", "<init>", "([S)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShortArrayBuilder extends PrimitiveArrayBuilder<short[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public short[] f75679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f75680b;

    public ShortArrayBuilder(short[] sArr) {
        sArr.getClass();
        this.f75679a = sArr;
        this.f75680b = sArr.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public final Object a() {
        return Arrays.copyOf(this.f75679a, this.f75680b);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public final void b(int i2) {
        short[] sArr = this.f75679a;
        if (sArr.length < i2) {
            int length = sArr.length * 2;
            if (i2 < length) {
                i2 = length;
            }
            this.f75679a = Arrays.copyOf(sArr, i2);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF75680b() {
        return this.f75680b;
    }
}
