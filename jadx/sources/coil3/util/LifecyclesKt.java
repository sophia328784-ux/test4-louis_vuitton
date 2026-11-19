package coil3.util;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class LifecyclesKt {
    /* JADX WARN: Code duplicated, block: B:29:0x0076  */
    /* JADX WARN: Code duplicated, block: B:36:0x0087  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(Lifecycle lifecycle, ContinuationImpl continuationImpl) throws Throwable {
        LifecyclesKt$awaitStarted$1 lifecyclesKt$awaitStarted$1;
        Lifecycle lifecycle2;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        LifecycleObserver lifecycleObserver;
        LifecycleObserver lifecycleObserver2;
        if (continuationImpl instanceof LifecyclesKt$awaitStarted$1) {
            lifecyclesKt$awaitStarted$1 = (LifecyclesKt$awaitStarted$1) continuationImpl;
            int i2 = lifecyclesKt$awaitStarted$1.f21726e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lifecyclesKt$awaitStarted$1.f21726e = i2 - Integer.MIN_VALUE;
            } else {
                lifecyclesKt$awaitStarted$1 = new LifecyclesKt$awaitStarted$1(continuationImpl);
            }
        } else {
            lifecyclesKt$awaitStarted$1 = new LifecyclesKt$awaitStarted$1(continuationImpl);
        }
        Object obj = lifecyclesKt$awaitStarted$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = lifecyclesKt$awaitStarted$1.f21726e;
        if (i3 != 0) {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = lifecyclesKt$awaitStarted$1.f21725c;
            lifecycle2 = lifecyclesKt$awaitStarted$1.f21724b;
            try {
                ResultKt.b(obj);
                lifecycleObserver2 = (LifecycleObserver) ref$ObjectRef.f71921b;
                if (lifecycleObserver2 != null) {
                    lifecycle2.d(lifecycleObserver2);
                }
                return Unit.f71739a;
            } catch (Throwable th2) {
                th = th2;
                lifecycleObserver = (LifecycleObserver) ref$ObjectRef.f71921b;
                if (lifecycleObserver != null) {
                    lifecycle2.d(lifecycleObserver);
                }
                throw th;
            }
        }
        ResultKt.b(obj);
        if (lifecycle.getF13454i().a(Lifecycle.State.STARTED)) {
            return Unit.f71739a;
        }
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        try {
            lifecyclesKt$awaitStarted$1.f21724b = lifecycle;
            lifecyclesKt$awaitStarted$1.f21725c = ref$ObjectRef2;
            lifecyclesKt$awaitStarted$1.f21726e = 1;
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(lifecyclesKt$awaitStarted$1), 1);
            cancellableContinuationImpl.initCancellability();
            DefaultLifecycleObserver defaultLifecycleObserver = new DefaultLifecycleObserver() { // from class: coil3.util.LifecyclesKt$awaitStarted$2$1
                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public final void onStart(LifecycleOwner lifecycleOwner) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Unit.f71739a);
                }
            };
            ref$ObjectRef2.f71921b = defaultLifecycleObserver;
            lifecycle.a(defaultLifecycleObserver);
            if (cancellableContinuationImpl.getResult() == coroutineSingletons) {
                return coroutineSingletons;
            }
            lifecycle2 = lifecycle;
            ref$ObjectRef = ref$ObjectRef2;
            lifecycleObserver2 = (LifecycleObserver) ref$ObjectRef.f71921b;
            if (lifecycleObserver2 != null) {
                lifecycle2.d(lifecycleObserver2);
            }
            return Unit.f71739a;
        } catch (Throwable th3) {
            lifecycle2 = lifecycle;
            ref$ObjectRef = ref$ObjectRef2;
            th = th3;
            lifecycleObserver = (LifecycleObserver) ref$ObjectRef.f71921b;
            if (lifecycleObserver != null) {
                lifecycle2.d(lifecycleObserver);
            }
            throw th;
        }
    }
}
