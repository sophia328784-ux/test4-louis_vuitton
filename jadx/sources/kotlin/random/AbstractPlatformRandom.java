package kotlin.random;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/random/AbstractPlatformRandom;", "Lkotlin/random/Random;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AbstractPlatformRandom extends Random {
    @Override // kotlin.random.Random
    public final int a(int i2) {
        return (f().nextInt() >>> (32 - i2)) & ((-i2) >> 31);
    }

    @Override // kotlin.random.Random
    public final double b() {
        return f().nextDouble();
    }

    @Override // kotlin.random.Random
    public final int d() {
        return f().nextInt();
    }

    public abstract java.util.Random f();
}
