package androidx.compose.ui.platform;

import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidUiFrameClock;", "Landroidx/compose/runtime/MonotonicFrameClock;", "Landroid/view/Choreographer;", "choreographer", "Landroidx/compose/ui/platform/AndroidUiDispatcher;", "dispatcher", "<init>", "(Landroid/view/Choreographer;Landroidx/compose/ui/platform/AndroidUiDispatcher;)V", "(Landroid/view/Choreographer;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidUiFrameClock implements MonotonicFrameClock {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Choreographer f9968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AndroidUiDispatcher f9969c;

    public AndroidUiFrameClock(Choreographer choreographer, AndroidUiDispatcher androidUiDispatcher) {
        this.f9968b = choreographer;
        this.f9969c = androidUiDispatcher;
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object c(Continuation continuation, final Function1 function1) {
        final AndroidUiDispatcher androidUiDispatcher = this.f9969c;
        if (androidUiDispatcher == null) {
            CoroutineContext.Element element = continuation.getContext().get(ContinuationInterceptor.INSTANCE);
            androidUiDispatcher = element instanceof AndroidUiDispatcher ? (AndroidUiDispatcher) element : null;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback(this, function1) { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Function1 f9973c;

            {
                this.f9973c = function1;
            }

            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                Object failure;
                Function1 function2 = this.f9973c;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    failure = function2.invoke(Long.valueOf(j2));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
                this.f9972b.resumeWith(failure);
            }
        };
        if (androidUiDispatcher == null || !Intrinsics.c(androidUiDispatcher.f9959b, this.f9968b)) {
            this.f9968b.postFrameCallback(frameCallback);
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    this.f9971c.f9968b.removeFrameCallback(frameCallback);
                    return Unit.f71739a;
                }
            });
        } else {
            synchronized (androidUiDispatcher.d) {
                androidUiDispatcher.f9962f.add(frameCallback);
                if (!androidUiDispatcher.f9964i) {
                    androidUiDispatcher.f9964i = true;
                    androidUiDispatcher.f9959b.postFrameCallback(androidUiDispatcher.f9965j);
                }
            }
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    AndroidUiDispatcher androidUiDispatcher2 = androidUiDispatcher;
                    Choreographer.FrameCallback frameCallback2 = frameCallback;
                    synchronized (androidUiDispatcher2.d) {
                        androidUiDispatcher2.f9962f.remove(frameCallback2);
                    }
                    return Unit.f71739a;
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }

    public AndroidUiFrameClock(Choreographer choreographer) {
        this(choreographer, null);
    }
}
