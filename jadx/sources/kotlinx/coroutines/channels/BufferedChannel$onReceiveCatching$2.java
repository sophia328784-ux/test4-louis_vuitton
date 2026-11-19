package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final /* synthetic */ class BufferedChannel$onReceiveCatching$2 extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BufferedChannel$onReceiveCatching$2 f74741b = new BufferedChannel$onReceiveCatching$2(3, BufferedChannel.class, "processResultSelectReceiveCatching", "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        BufferedChannel bufferedChannel = (BufferedChannel) obj;
        AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.f74728e;
        bufferedChannel.getClass();
        if (obj3 == BufferedChannelKt.l) {
            ChannelResult.Companion companion = ChannelResult.f74759b;
            Throwable thY = bufferedChannel.y();
            companion.getClass();
            obj3 = ChannelResult.Companion.a(thY);
        } else {
            ChannelResult.f74759b.getClass();
        }
        return new ChannelResult(obj3);
    }
}
