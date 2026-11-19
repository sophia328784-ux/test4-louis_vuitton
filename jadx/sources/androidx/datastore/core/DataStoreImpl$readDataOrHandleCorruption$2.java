package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", "T", "locked", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", l = {370, 371}, m = "invokeSuspend")
final class DataStoreImpl$readDataOrHandleCorruption$2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Data<Object>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f12708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12709c;
    public /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f12711f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$2(DataStoreImpl dataStoreImpl, int i2, Continuation continuation) {
        super(2, continuation);
        this.f12710e = dataStoreImpl;
        this.f12711f = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(this.f12710e, this.f12711f, continuation);
        dataStoreImpl$readDataOrHandleCorruption$2.d = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataOrHandleCorruption$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        return ((DataStoreImpl$readDataOrHandleCorruption$2) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0059  */
    /* JADX WARN: Code duplicated, block: B:23:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        int iIntValue;
        Object obj2;
        int iHashCode;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f12709c;
        DataStoreImpl dataStoreImpl = this.f12710e;
        if (i2 == 0) {
            ResultKt.b(obj);
            z = this.d;
            this.d = z;
            this.f12709c = 1;
            int i3 = DataStoreImpl.m;
            obj = dataStoreImpl.i(this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            z = this.d;
            ResultKt.b(obj);
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f12708b;
            ResultKt.b(obj);
        }
        iIntValue = ((Number) obj).intValue();
        if (obj2 != null) {
            iHashCode = obj2.hashCode();
        } else {
            iHashCode = 0;
        }
        return new Data(obj2, iHashCode, iIntValue);
        if (z) {
            int i4 = DataStoreImpl.m;
            InterProcessCoordinator interProcessCoordinatorG = dataStoreImpl.g();
            this.f12708b = obj;
            this.f12709c = 2;
            Object objC = interProcessCoordinatorG.c(this);
            if (objC != coroutineSingletons) {
                Object obj3 = obj;
                obj = objC;
                obj2 = obj3;
                iIntValue = ((Number) obj).intValue();
            }
            return coroutineSingletons;
        }
        Object obj4 = obj;
        iIntValue = this.f12711f;
        obj2 = obj4;
        if (obj2 != null) {
            iHashCode = obj2.hashCode();
        } else {
            iHashCode = 0;
        }
        return new Data(obj2, iHashCode, iIntValue);
    }
}
