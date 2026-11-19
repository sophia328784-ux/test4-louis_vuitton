package androidx.datastore.core;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {365, 366, 368, 369, 380, KyberEngine.KyberPolyBytes}, m = "readDataOrHandleCorruption")
final class DataStoreImpl$readDataOrHandleCorruption$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f12701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f12702c;
    public Serializable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Ref$ObjectRef f12703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f12704f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f12705h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12706i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12707j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$1(DataStoreImpl dataStoreImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f12706i = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f12705h = obj;
        this.f12707j |= Integer.MIN_VALUE;
        return DataStoreImpl.f(this.f12706i, false, this);
    }
}
