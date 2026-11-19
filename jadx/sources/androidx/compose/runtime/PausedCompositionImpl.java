package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.Thread_jvmKt;
import io.jsonwebtoken.JwtParser;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B`\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\b\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011\u0012\n\u0010\u0015\u001a\u00060\u0013j\u0002`\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/compose/runtime/PausedCompositionImpl;", "Landroidx/compose/runtime/PausedComposition;", "Landroidx/compose/runtime/CompositionImpl;", "composition", "Landroidx/compose/runtime/CompositionContext;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/runtime/InternalComposer;", "composer", "", "Landroidx/compose/runtime/RememberObserver;", "abandonSet", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "content", "", "reusable", "Landroidx/compose/runtime/Applier;", "applier", "", "Landroidx/compose/runtime/platform/SynchronizedObject;", "lock", "<init>", "(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/InternalComposer;Ljava/util/Set;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Applier;Ljava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PausedCompositionImpl implements PausedComposition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositionImpl f8057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositionContext f8058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InternalComposer f8059c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f8060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Applier f8061f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicReference f8062h = new AtomicReference(PausedCompositionState.InitialPending);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f8063i = Thread_jvmKt.a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ScatterSet f8064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RememberEventDispatcher f8065k;
    public final RecordingApplier l;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8066a;

        static {
            int[] iArr = new int[PausedCompositionState.values().length];
            try {
                iArr[PausedCompositionState.InitialPending.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PausedCompositionState.RecomposePending.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PausedCompositionState.Recomposing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PausedCompositionState.ApplyPending.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PausedCompositionState.Applied.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PausedCompositionState.Cancelled.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PausedCompositionState.Invalid.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f8066a = iArr;
        }
    }

    public PausedCompositionImpl(CompositionImpl compositionImpl, CompositionContext compositionContext, InternalComposer internalComposer, Set<RememberObserver> set, Function2<? super Composer, ? super Integer, Unit> function2, boolean z, Applier<?> applier, Object obj) {
        this.f8057a = compositionImpl;
        this.f8058b = compositionContext;
        this.f8059c = internalComposer;
        this.d = function2;
        this.f8060e = z;
        this.f8061f = applier;
        this.g = obj;
        MutableScatterSet mutableScatterSet = ScatterSetKt.f3371a;
        mutableScatterSet.getClass();
        this.f8064j = mutableScatterSet;
        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher();
        rememberEventDispatcher.n(set, internalComposer.N());
        this.f8065k = rememberEventDispatcher;
        this.l = new RecordingApplier(applier.getF8109c());
    }

    @Override // androidx.compose.runtime.PausedComposition
    public final boolean a() {
        return ((PausedCompositionState) this.f8062h.get()).compareTo(PausedCompositionState.ApplyPending) >= 0;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public final void apply() throws Exception {
        AtomicReference atomicReference = this.f8062h;
        try {
            switch (WhenMappings.f8066a[((PausedCompositionState) atomicReference.get()).ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case 4:
                    c();
                    PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.Applied;
                    while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                        if (atomicReference.get() != pausedCompositionState) {
                            PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + JwtParser.SEPARATOR_CHAR);
                            return;
                        }
                    }
                    return;
                case 5:
                    throw new IllegalStateException("The paused composition has already been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e2) {
            atomicReference.set(PausedCompositionState.Invalid);
            throw e2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009a A[Catch: Exception -> 0x0023, TryCatch #2 {Exception -> 0x0023, blocks: (B:3:0x0002, B:6:0x001d, B:7:0x0022, B:10:0x0026, B:11:0x002d, B:12:0x002e, B:13:0x0035, B:14:0x0036, B:15:0x003d, B:16:0x003e, B:17:0x0045, B:18:0x0046, B:19:0x0050, B:20:0x0051, B:21:0x0055, B:27:0x007d, B:29:0x008d, B:30:0x0093, B:36:0x00bb, B:38:0x00c3, B:33:0x009a, B:35:0x00a0, B:40:0x00c9, B:41:0x00cf, B:43:0x00d5, B:46:0x00dc, B:47:0x00f7, B:24:0x005c, B:26:0x0062, B:50:0x00fe, B:53:0x010b, B:54:0x010e, B:55:0x0112, B:61:0x013a, B:63:0x0142, B:58:0x0119, B:60:0x011f, B:68:0x014d, B:69:0x0150, B:28:0x007f, B:51:0x0101), top: B:76:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c3 A[Catch: Exception -> 0x0023, TryCatch #2 {Exception -> 0x0023, blocks: (B:3:0x0002, B:6:0x001d, B:7:0x0022, B:10:0x0026, B:11:0x002d, B:12:0x002e, B:13:0x0035, B:14:0x0036, B:15:0x003d, B:16:0x003e, B:17:0x0045, B:18:0x0046, B:19:0x0050, B:20:0x0051, B:21:0x0055, B:27:0x007d, B:29:0x008d, B:30:0x0093, B:36:0x00bb, B:38:0x00c3, B:33:0x009a, B:35:0x00a0, B:40:0x00c9, B:41:0x00cf, B:43:0x00d5, B:46:0x00dc, B:47:0x00f7, B:24:0x005c, B:26:0x0062, B:50:0x00fe, B:53:0x010b, B:54:0x010e, B:55:0x0112, B:61:0x013a, B:63:0x0142, B:58:0x0119, B:60:0x011f, B:68:0x014d, B:69:0x0150, B:28:0x007f, B:51:0x0101), top: B:76:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0142 A[Catch: Exception -> 0x0023, TRY_LEAVE, TryCatch #2 {Exception -> 0x0023, blocks: (B:3:0x0002, B:6:0x001d, B:7:0x0022, B:10:0x0026, B:11:0x002d, B:12:0x002e, B:13:0x0035, B:14:0x0036, B:15:0x003d, B:16:0x003e, B:17:0x0045, B:18:0x0046, B:19:0x0050, B:20:0x0051, B:21:0x0055, B:27:0x007d, B:29:0x008d, B:30:0x0093, B:36:0x00bb, B:38:0x00c3, B:33:0x009a, B:35:0x00a0, B:40:0x00c9, B:41:0x00cf, B:43:0x00d5, B:46:0x00dc, B:47:0x00f7, B:24:0x005c, B:26:0x0062, B:50:0x00fe, B:53:0x010b, B:54:0x010e, B:55:0x0112, B:61:0x013a, B:63:0x0142, B:58:0x0119, B:60:0x011f, B:68:0x014d, B:69:0x0150, B:28:0x007f, B:51:0x0101), top: B:76:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:? A[LOOP:1: B:30:0x0093->B:82:?, LOOP_END, SYNTHETIC] */
    @Override // androidx.compose.runtime.PausedComposition
    public final boolean b(ShouldPauseCallback shouldPauseCallback) throws Exception {
        long j2;
        PausedCompositionState pausedCompositionState;
        PausedCompositionState pausedCompositionState2;
        AtomicReference atomicReference = this.f8062h;
        try {
            int i2 = WhenMappings.f8066a[((PausedCompositionState) atomicReference.get()).ordinal()];
            CompositionImpl compositionImpl = this.f8057a;
            CompositionContext compositionContext = this.f8058b;
            switch (i2) {
                case 1:
                    InternalComposer internalComposer = this.f8059c;
                    boolean z = this.f8060e;
                    if (z) {
                        internalComposer.R();
                    }
                    try {
                        this.f8064j = compositionContext.b(compositionImpl, shouldPauseCallback, this.d);
                        if (z) {
                            internalComposer.M();
                        }
                        PausedCompositionState pausedCompositionState3 = PausedCompositionState.InitialPending;
                        PausedCompositionState pausedCompositionState4 = PausedCompositionState.RecomposePending;
                        while (!atomicReference.compareAndSet(pausedCompositionState3, pausedCompositionState4)) {
                            if (atomicReference.get() != pausedCompositionState3) {
                                PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState4 + JwtParser.SEPARATOR_CHAR);
                                if (this.f8064j.b()) {
                                    d();
                                }
                                return a();
                            }
                        }
                        if (this.f8064j.b()) {
                            d();
                        }
                        return a();
                    } catch (Throwable th) {
                        if (z) {
                            internalComposer.M();
                        }
                        throw th;
                    }
                case 2:
                    PausedCompositionState pausedCompositionState5 = PausedCompositionState.RecomposePending;
                    PausedCompositionState pausedCompositionState6 = PausedCompositionState.Recomposing;
                    try {
                        while (!atomicReference.compareAndSet(pausedCompositionState5, pausedCompositionState6)) {
                            if (atomicReference.get() != pausedCompositionState5) {
                                PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState5 + " to: " + pausedCompositionState6 + JwtParser.SEPARATOR_CHAR);
                                j2 = this.f8063i;
                                this.f8063i = Thread_jvmKt.a();
                                this.f8064j = compositionContext.r(compositionImpl, shouldPauseCallback, this.f8064j);
                                this.f8063i = j2;
                                pausedCompositionState = PausedCompositionState.Recomposing;
                                pausedCompositionState2 = PausedCompositionState.RecomposePending;
                                while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                                    if (atomicReference.get() != pausedCompositionState) {
                                        PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + JwtParser.SEPARATOR_CHAR);
                                        if (this.f8064j.b()) {
                                            d();
                                        }
                                        return a();
                                    }
                                }
                                if (this.f8064j.b()) {
                                    d();
                                }
                                return a();
                            }
                        }
                        this.f8063i = Thread_jvmKt.a();
                        this.f8064j = compositionContext.r(compositionImpl, shouldPauseCallback, this.f8064j);
                        this.f8063i = j2;
                        pausedCompositionState = PausedCompositionState.Recomposing;
                        pausedCompositionState2 = PausedCompositionState.RecomposePending;
                        while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                            if (atomicReference.get() != pausedCompositionState) {
                                PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + JwtParser.SEPARATOR_CHAR);
                                if (this.f8064j.b()) {
                                    d();
                                }
                                return a();
                            }
                        }
                        if (this.f8064j.b()) {
                            d();
                        }
                        return a();
                    } catch (Throwable th2) {
                        this.f8063i = j2;
                        PausedCompositionState pausedCompositionState7 = PausedCompositionState.Recomposing;
                        PausedCompositionState pausedCompositionState8 = PausedCompositionState.RecomposePending;
                        while (!atomicReference.compareAndSet(pausedCompositionState7, pausedCompositionState8)) {
                            if (atomicReference.get() != pausedCompositionState7) {
                                PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState7 + " to: " + pausedCompositionState8 + JwtParser.SEPARATOR_CHAR);
                                throw th2;
                            }
                        }
                        throw th2;
                    }
                    j2 = this.f8063i;
                case 3:
                    ComposerKt.b("Recursive call to resume()");
                    throw new KotlinNothingValueException();
                case 4:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case 5:
                    throw new IllegalStateException("The paused composition has been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e2) {
            atomicReference.set(PausedCompositionState.Invalid);
            throw e2;
        }
    }

    public final void c() {
        Trace.beginSection("PausedComposition:applyChanges");
        try {
            synchronized (this.g) {
                try {
                    RecordingApplier recordingApplier = this.l;
                    Applier applier = this.f8061f;
                    applier.getClass();
                    recordingApplier.k(applier, this.f8065k);
                    this.f8065k.k();
                    this.f8065k.l();
                    this.f8065k.j();
                    this.f8057a.r = null;
                } catch (Throwable th) {
                    this.f8065k.j();
                    this.f8057a.r = null;
                    throw th;
                }
            }
            Trace.endSection();
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.PausedComposition
    public final void cancel() {
        MutableScatterSet mutableScatterSet;
        this.f8062h.set(PausedCompositionState.Cancelled);
        RememberEventDispatcher rememberEventDispatcher = this.f8065k;
        if (rememberEventDispatcher.d.c()) {
            mutableScatterSet = rememberEventDispatcher.d;
            rememberEventDispatcher.d = ScatterSetKt.a();
            rememberEventDispatcher.f8395c.j();
        } else {
            mutableScatterSet = null;
        }
        rememberEventDispatcher.j();
        CompositionImpl compositionImpl = this.f8057a;
        compositionImpl.r = null;
        if (mutableScatterSet != null) {
            compositionImpl.v.f8401k = mutableScatterSet;
            compositionImpl.x = 2;
        }
    }

    public final void d() {
        boolean z;
        PausedCompositionState pausedCompositionState = PausedCompositionState.RecomposePending;
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.ApplyPending;
        while (true) {
            AtomicReference atomicReference = this.f8062h;
            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                z = true;
                break;
            } else if (atomicReference.get() != pausedCompositionState) {
                z = false;
                break;
            }
        }
        if (z) {
            return;
        }
        PreconditionsKt.b("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + JwtParser.SEPARATOR_CHAR);
    }
}
