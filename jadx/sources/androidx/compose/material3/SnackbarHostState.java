package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/compose/material3/SnackbarHostState;", "", "<init>", "()V", "SnackbarVisualsImpl", "SnackbarDataImpl", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SnackbarHostState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutexImpl f7290a = MutexKt.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f7291b = SnapshotStateKt.g(null);

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;", "Landroidx/compose/material3/SnackbarData;", "Landroidx/compose/material3/SnackbarVisuals;", "visuals", "Lkotlinx/coroutines/CancellableContinuation;", "Landroidx/compose/material3/SnackbarResult;", "continuation", "<init>", "(Landroidx/compose/material3/SnackbarVisuals;Lkotlinx/coroutines/CancellableContinuation;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SnackbarDataImpl implements SnackbarData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SnackbarVisuals f7292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CancellableContinuation f7293b;

        public SnackbarDataImpl(SnackbarVisuals snackbarVisuals, CancellableContinuation<? super SnackbarResult> cancellableContinuation) {
            this.f7292a = snackbarVisuals;
            this.f7293b = cancellableContinuation;
        }

        @Override // androidx.compose.material3.SnackbarData
        /* JADX INFO: renamed from: a, reason: from getter */
        public final SnackbarVisuals getF7292a() {
            return this.f7292a;
        }

        @Override // androidx.compose.material3.SnackbarData
        public final void b() {
            CancellableContinuation cancellableContinuation = this.f7293b;
            if (cancellableContinuation.isActive()) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(SnackbarResult.ActionPerformed);
            }
        }

        @Override // androidx.compose.material3.SnackbarData
        public final void dismiss() {
            CancellableContinuation cancellableContinuation = this.f7293b;
            if (cancellableContinuation.isActive()) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(SnackbarResult.Dismissed);
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SnackbarDataImpl.class != obj.getClass()) {
                return false;
            }
            SnackbarDataImpl snackbarDataImpl = (SnackbarDataImpl) obj;
            return Intrinsics.c(this.f7292a, snackbarDataImpl.f7292a) && Intrinsics.c(this.f7293b, snackbarDataImpl.f7293b);
        }

        public final int hashCode() {
            return this.f7293b.hashCode() + (this.f7292a.hashCode() * 31);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;", "Landroidx/compose/material3/SnackbarVisuals;", "", "message", "actionLabel", "", "withDismissAction", "Landroidx/compose/material3/SnackbarDuration;", "duration", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SnackbarVisualsImpl implements SnackbarVisuals {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f7294a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f7295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f7296c;
        public final SnackbarDuration d;

        public SnackbarVisualsImpl(String str, String str2, boolean z, SnackbarDuration snackbarDuration) {
            this.f7294a = str;
            this.f7295b = str2;
            this.f7296c = z;
            this.d = snackbarDuration;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF7294a() {
            return this.f7294a;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getF7295b() {
            return this.f7295b;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getF7296c() {
            return this.f7296c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SnackbarVisualsImpl.class != obj.getClass()) {
                return false;
            }
            SnackbarVisualsImpl snackbarVisualsImpl = (SnackbarVisualsImpl) obj;
            return Intrinsics.c(this.f7294a, snackbarVisualsImpl.f7294a) && Intrinsics.c(this.f7295b, snackbarVisualsImpl.f7295b) && this.f7296c == snackbarVisualsImpl.f7296c && this.d == snackbarVisualsImpl.d;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        /* JADX INFO: renamed from: getDuration, reason: from getter */
        public final SnackbarDuration getD() {
            return this.d;
        }

        public final int hashCode() {
            int iHashCode = this.f7294a.hashCode() * 31;
            String str = this.f7295b;
            return this.d.hashCode() + o60.b((iHashCode + (str != null ? str.hashCode() : 0)) * 31, 31, this.f7296c);
        }
    }

    public static Object b(SnackbarHostState snackbarHostState, String str, Continuation continuation) {
        SnackbarDuration snackbarDuration = SnackbarDuration.Short;
        snackbarHostState.getClass();
        return snackbarHostState.a(new SnackbarVisualsImpl(str, null, false, snackbarDuration), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
    
        if (r9 == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.compose.material3.SnackbarHostState] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(androidx.compose.material3.SnackbarVisuals r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.compose.material3.SnackbarHostState$showSnackbar$2
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.material3.SnackbarHostState$showSnackbar$2 r0 = (androidx.compose.material3.SnackbarHostState$showSnackbar$2) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            androidx.compose.material3.SnackbarHostState$showSnackbar$2 r0 = new androidx.compose.material3.SnackbarHostState$showSnackbar$2
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f7299e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            androidx.compose.runtime.MutableState r3 = r7.f7291b
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L3f
            if (r2 == r5) goto L37
            if (r2 != r4) goto L31
            kotlinx.coroutines.sync.Mutex r7 = r0.f7298c
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L2f
            goto L75
        L2f:
            r8 = move-exception
            goto L7e
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r6
        L37:
            kotlinx.coroutines.sync.Mutex r7 = r0.f7298c
            androidx.compose.material3.SnackbarVisuals r8 = r0.f7297b
            kotlin.ResultKt.b(r9)
            goto L51
        L3f:
            kotlin.ResultKt.b(r9)
            r0.f7297b = r8
            kotlinx.coroutines.sync.MutexImpl r7 = r7.f7290a
            r0.f7298c = r7
            r0.g = r5
            java.lang.Object r9 = r7.c(r0)
            if (r9 != r1) goto L51
            goto L74
        L51:
            r0.f7297b = r8     // Catch: java.lang.Throwable -> L2f
            r0.f7298c = r7     // Catch: java.lang.Throwable -> L2f
            r0.g = r4     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.CancellableContinuationImpl r9 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L2f
            kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.b(r0)     // Catch: java.lang.Throwable -> L2f
            r9.<init>(r0, r5)     // Catch: java.lang.Throwable -> L2f
            r9.initCancellability()     // Catch: java.lang.Throwable -> L2f
            androidx.compose.material3.SnackbarHostState$SnackbarDataImpl r0 = new androidx.compose.material3.SnackbarHostState$SnackbarDataImpl     // Catch: java.lang.Throwable -> L2f
            r0.<init>(r8, r9)     // Catch: java.lang.Throwable -> L2f
            r8 = r3
            androidx.compose.runtime.SnapshotMutableStateImpl r8 = (androidx.compose.runtime.SnapshotMutableStateImpl) r8     // Catch: java.lang.Throwable -> L2f
            r8.setValue(r0)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r9 = r9.getResult()     // Catch: java.lang.Throwable -> L2f
            if (r9 != r1) goto L75
        L74:
            return r1
        L75:
            androidx.compose.runtime.SnapshotMutableStateImpl r3 = (androidx.compose.runtime.SnapshotMutableStateImpl) r3     // Catch: java.lang.Throwable -> L84
            r3.setValue(r6)     // Catch: java.lang.Throwable -> L84
            r7.d(r6)
            return r9
        L7e:
            androidx.compose.runtime.SnapshotMutableStateImpl r3 = (androidx.compose.runtime.SnapshotMutableStateImpl) r3     // Catch: java.lang.Throwable -> L84
            r3.setValue(r6)     // Catch: java.lang.Throwable -> L84
            throw r8     // Catch: java.lang.Throwable -> L84
        L84:
            r8 = move-exception
            r7.d(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SnackbarHostState.a(androidx.compose.material3.SnackbarVisuals, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
