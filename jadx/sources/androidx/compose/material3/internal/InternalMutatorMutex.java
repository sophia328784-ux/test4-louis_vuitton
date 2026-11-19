package androidx.compose.material3.internal;

import androidx.compose.foundation.MutatePriority;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/material3/internal/InternalMutatorMutex;", "", "<init>", "()V", "Mutator", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalMutatorMutex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f7624a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutexImpl f7625b = MutexKt.a();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;", "", "Landroidx/compose/foundation/MutatePriority;", "priority", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Mutator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutatePriority f7626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Job f7627b;

        public Mutator(MutatePriority mutatePriority, Job job) {
            this.f7626a = mutatePriority;
            this.f7627b = job;
        }
    }
}
