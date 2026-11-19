package androidx.paging;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/paging/MulticastedPagingData;", "T", "", "prev", "next"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.CachedPagingDataKt$cachedIn$2", f = "CachedPagingData.kt", l = {104}, m = "invokeSuspend")
final class CachedPagingDataKt$cachedIn$2 extends SuspendLambda implements Function3<MulticastedPagingData<Object>, MulticastedPagingData<Object>, Continuation<? super MulticastedPagingData<Object>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18556c;
    public /* synthetic */ Object d;

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$2 = new CachedPagingDataKt$cachedIn$2(3, (Continuation) obj3);
        cachedPagingDataKt$cachedIn$2.f18556c = (MulticastedPagingData) obj;
        cachedPagingDataKt$cachedIn$2.d = (MulticastedPagingData) obj2;
        return cachedPagingDataKt$cachedIn$2.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18555b;
        if (i2 != 0) {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MulticastedPagingData multicastedPagingData = (MulticastedPagingData) this.f18556c;
            ResultKt.b(obj);
            return multicastedPagingData;
        }
        ResultKt.b(obj);
        MulticastedPagingData multicastedPagingData2 = (MulticastedPagingData) this.f18556c;
        MulticastedPagingData multicastedPagingData3 = (MulticastedPagingData) this.d;
        this.f18556c = multicastedPagingData3;
        this.f18555b = 1;
        multicastedPagingData2.d.d.cancel(null);
        return Unit.f71739a == coroutineSingletons ? coroutineSingletons : multicastedPagingData3;
    }
}
