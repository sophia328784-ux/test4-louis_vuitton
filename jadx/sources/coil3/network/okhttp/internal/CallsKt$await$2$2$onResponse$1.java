package coil3.network.okhttp.internal;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class CallsKt$await$2$2$onResponse$1 implements Function3<Throwable, Response, CoroutineContext, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CallsKt$await$2$2$onResponse$1 f21604b = new CallsKt$await$2$2$onResponse$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        try {
            d21.D((Response) obj2);
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
        return Unit.f71739a;
    }
}
