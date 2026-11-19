package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ArrayPoolsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f75771a;

    static {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            failure = property != null ? StringsKt.toIntOrNull(property) : null;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Integer num = (Integer) (failure instanceof Result.Failure ? null : failure);
        f75771a = num != null ? num.intValue() : PKIFailureInfo.badSenderNonce;
    }
}
