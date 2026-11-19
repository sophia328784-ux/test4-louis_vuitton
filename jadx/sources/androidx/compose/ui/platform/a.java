package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import defpackage.md;
import defpackage.os;
import defpackage.v40;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements WindowRecomposerFactory {
    @Override // androidx.compose.ui.platform.WindowRecomposerFactory
    public final Recomposer a(final View view) {
        CoroutineContext coroutineContext;
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.f10186a;
        CoroutineContext coroutineContext2 = EmptyCoroutineContext.f71840b;
        ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
        coroutineContext2.getClass();
        companion.getClass();
        AndroidUiDispatcher.l.getClass();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            coroutineContext = (CoroutineContext) AndroidUiDispatcher.m.getF71699b();
        } else {
            coroutineContext = AndroidUiDispatcher.n.get();
            if (coroutineContext == null) {
                md.k("no AndroidUiDispatcher for this thread");
                return null;
            }
        }
        CoroutineContext coroutineContextPlus = coroutineContext.plus(coroutineContext2);
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContextPlus.get(MonotonicFrameClock.Key.f8020b);
        if (monotonicFrameClock != null) {
            pausableMonotonicFrameClock = new PausableMonotonicFrameClock(monotonicFrameClock);
            Latch latch = pausableMonotonicFrameClock.f8053c;
            synchronized (latch.f8011a) {
                latch.d = false;
            }
        } else {
            pausableMonotonicFrameClock = null;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        CoroutineContext motionDurationScaleImpl = (MotionDurationScale) coroutineContextPlus.get(MotionDurationScale.Key.f8616b);
        if (motionDurationScaleImpl == null) {
            motionDurationScaleImpl = new MotionDurationScaleImpl(view.getContext().getApplicationContext());
            ref$ObjectRef.f71921b = motionDurationScaleImpl;
        }
        if (pausableMonotonicFrameClock != null) {
            coroutineContext2 = pausableMonotonicFrameClock;
        }
        CoroutineContext coroutineContextPlus2 = coroutineContextPlus.plus(coroutineContext2).plus(motionDurationScaleImpl);
        final Recomposer recomposer = new Recomposer(coroutineContextPlus2);
        synchronized (recomposer.f8083c) {
            recomposer.t = true;
        }
        final ContextScope contextScopeA = CoroutineScopeKt.a(coroutineContextPlus2);
        LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(view);
        Lifecycle f13561b = lifecycleOwnerA != null ? lifecycleOwnerA.getF13561b() : null;
        if (f13561b != null) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    recomposer.B();
                }
            });
            f13561b.a(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                public static final /* synthetic */ class WhenMappings {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final /* synthetic */ int[] f10192a;

                    static {
                        int[] iArr = new int[Lifecycle.Event.values().length];
                        try {
                            iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                        } catch (NoSuchFieldError unused5) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                        } catch (NoSuchFieldError unused6) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                        } catch (NoSuchFieldError unused7) {
                        }
                        f10192a = iArr;
                    }
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    boolean z;
                    CancellableContinuation cancellableContinuationD = null;
                    switch (WhenMappings.f10192a[event.ordinal()]) {
                        case 1:
                            BuildersKt.c(contextScopeA, null, CoroutineStart.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(ref$ObjectRef, recomposer, lifecycleOwner, this, null), 1);
                            return;
                        case 2:
                            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = pausableMonotonicFrameClock;
                            if (pausableMonotonicFrameClock2 != null) {
                                Latch latch2 = pausableMonotonicFrameClock2.f8053c;
                                synchronized (latch2.f8011a) {
                                    try {
                                        synchronized (latch2.f8011a) {
                                            z = latch2.d;
                                        }
                                        if (!z) {
                                            ArrayList arrayList = latch2.f8012b;
                                            latch2.f8012b = latch2.f8013c;
                                            latch2.f8013c = arrayList;
                                            latch2.d = true;
                                            int size = arrayList.size();
                                            for (int i2 = 0; i2 < size; i2++) {
                                                Continuation continuation = (Continuation) arrayList.get(i2);
                                                Result.Companion companion2 = Result.INSTANCE;
                                                continuation.resumeWith(Unit.f71739a);
                                            }
                                            arrayList.clear();
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                            Recomposer recomposer2 = recomposer;
                            synchronized (recomposer2.f8083c) {
                                if (recomposer2.t) {
                                    recomposer2.t = false;
                                    cancellableContinuationD = recomposer2.D();
                                }
                                break;
                            }
                            if (cancellableContinuationD != null) {
                                Result.Companion companion3 = Result.INSTANCE;
                                cancellableContinuationD.resumeWith(Unit.f71739a);
                                return;
                            }
                            return;
                        case 3:
                            Recomposer recomposer3 = recomposer;
                            synchronized (recomposer3.f8083c) {
                                recomposer3.t = true;
                            }
                            return;
                        case 4:
                            recomposer.B();
                            return;
                        case 5:
                        case 6:
                        case 7:
                            return;
                        default:
                            v40.g();
                            return;
                    }
                }
            });
            return recomposer;
        }
        InlineClassHelperKt.d("ViewTreeLifecycleOwner not found from " + view);
        os.d();
        return null;
    }
}
