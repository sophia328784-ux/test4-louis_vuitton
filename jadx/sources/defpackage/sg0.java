package defpackage;

import io.reactivex.rxjava3.core.Observable;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import java.util.function.Supplier;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.exception.UncheckedException;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sg0 implements Supplier {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79797b;

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f79797b) {
            case 0:
                return Observable.empty();
            case 1:
                return RandomUtils.f77540b;
            case 2:
                return ThreadLocalRandom.current();
            case 3:
                return new SecureRandom();
            case 4:
                return (Random) RandomUtils.d.get();
            default:
                RandomUtils randomUtils = RandomUtils.f77540b;
                try {
                    return SecureRandom.getInstanceStrong();
                } catch (NoSuchAlgorithmException e2) {
                    throw new UncheckedException(e2);
                }
        }
    }
}
