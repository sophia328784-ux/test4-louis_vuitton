package coil3.network;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/network/ConcurrentRequestStrategy;", "", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface ConcurrentRequestStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentRequestStrategy f21537a = new UncoordinatedConcurrentRequestStrategy();

    Object a(Continuation continuation, Function1 function1);
}
