package androidx.room;

import defpackage.md;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1", f = "MultiInstanceInvalidationClient.android.kt", l = {87}, m = "invokeSuspend")
final class MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Set f19431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19432c;
    public final /* synthetic */ String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationClient f19433e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(String[] strArr, MultiInstanceInvalidationClient multiInstanceInvalidationClient, Continuation continuation) {
        super(2, continuation);
        this.d = strArr;
        this.f19433e = multiInstanceInvalidationClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(this.d, this.f19433e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Set<String> set;
        Set setA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f19432c;
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f19433e;
        if (i2 == 0) {
            ResultKt.b(obj);
            String[] strArr = this.d;
            Set setZ = ArraysKt.Z(Arrays.copyOf(strArr, strArr.length));
            SharedFlowImpl sharedFlowImpl = multiInstanceInvalidationClient.f19420h;
            this.f19431b = setZ;
            this.f19432c = 1;
            if (sharedFlowImpl.emit(setZ, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            set = setZ;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            set = this.f19431b;
            ResultKt.b(obj);
        }
        InvalidationTracker invalidationTracker = multiInstanceInvalidationClient.f19416b;
        invalidationTracker.getClass();
        set.getClass();
        ReentrantLock reentrantLock = invalidationTracker.g;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> listY0 = CollectionsKt.y0(invalidationTracker.f19403f.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : listY0) {
                InvalidationTracker.Observer observer = observerWrapper.f19447a;
                observer.getClass();
                if (!(observer instanceof MultiInstanceInvalidationClient$observer$1)) {
                    String[] strArr2 = observerWrapper.f19449c;
                    int length = strArr2.length;
                    if (length == 0) {
                        setA = EmptySet.f71770b;
                    } else if (length == 1) {
                        Set set2 = set;
                        if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                            Iterator it = set2.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    setA = EmptySet.f71770b;
                                    break;
                                }
                                if (StringsKt.s((String) it.next(), strArr2[0], true)) {
                                    setA = observerWrapper.d;
                                    break;
                                }
                            }
                        } else {
                            setA = EmptySet.f71770b;
                            break;
                        }
                    } else {
                        SetBuilder setBuilder = new SetBuilder();
                        for (String str : set) {
                            for (String str2 : strArr2) {
                                if (StringsKt.s(str2, str, true)) {
                                    setBuilder.add(str2);
                                    break;
                                }
                            }
                        }
                        setA = SetsKt.a(setBuilder);
                    }
                    if (!setA.isEmpty()) {
                        observerWrapper.f19447a.a(setA);
                    }
                }
            }
            return Unit.f71739a;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
