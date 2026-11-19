package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SystemPropertiesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f72181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f72182b;

    static {
        Object failure;
        Object failure2;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = System.getProperty("kotlin.reflect.jvm.useK1Implementation");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (failure instanceof Result.Failure) {
            failure = null;
        }
        String str = (String) failure;
        boolean z = false;
        f72181a = str != null && Boolean.parseBoolean(str);
        try {
            failure2 = System.getProperty("kotlin.reflect.jvm.loadMetadataDirectly");
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure2 = new Result.Failure(th2);
        }
        String str2 = (String) (failure2 instanceof Result.Failure ? null : failure2);
        if (str2 != null && Boolean.parseBoolean(str2)) {
            z = true;
        }
        f72182b = z;
    }
}
