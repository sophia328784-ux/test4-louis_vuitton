package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import androidx.activity.compose.internal.BackHandlerCompat;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/activity/compose/ComposePredictiveBackHandler;", "Landroidx/activity/compose/internal/BackHandlerCompat;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Landroidx/activity/compose/PredictiveBackHandlerInfo;", "info", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/activity/compose/PredictiveBackHandlerInfo;)V", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ComposePredictiveBackHandler extends BackHandlerCompat {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineScope f703c;
    public Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BufferedChannel f704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Job f705f;
    public boolean g;

    public ComposePredictiveBackHandler(CoroutineScope coroutineScope, PredictiveBackHandlerInfo predictiveBackHandlerInfo) {
        super(predictiveBackHandlerInfo);
        this.f703c = coroutineScope;
        this.d = new ComposePredictiveBackHandler$currentOnBack$1(2, null);
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public final void b() {
        BufferedChannel bufferedChannel = this.f704e;
        if (bufferedChannel != null) {
            bufferedChannel.n(new CancellationException("onBack cancelled"), true);
        }
        Job job = this.f705f;
        if (job != null) {
            job.cancel(null);
        }
        this.f704e = null;
        this.f705f = null;
        this.g = false;
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public final void c() {
        if (this.f704e != null && !this.g) {
            b();
        }
        if (this.f704e == null) {
            this.g = false;
            this.f704e = ChannelKt.a(-2, 4, BufferOverflow.SUSPEND);
            this.f705f = BuildersKt.c(this.f703c, null, null, new ComposePredictiveBackHandler$launchNewGesture$1(this, null), 3);
        }
        BufferedChannel bufferedChannel = this.f704e;
        if (bufferedChannel != null) {
            bufferedChannel.l(null);
        }
        this.g = false;
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public final void d(BackEventCompat backEventCompat) {
        BufferedChannel bufferedChannel = this.f704e;
        if (bufferedChannel != null) {
            bufferedChannel.b(backEventCompat);
            ChannelResult.Companion companion = ChannelResult.f74759b;
        }
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public final void e() {
        b();
        if (super.a()) {
            this.g = true;
            this.f704e = ChannelKt.a(-2, 4, BufferOverflow.SUSPEND);
            this.f705f = BuildersKt.c(this.f703c, null, null, new ComposePredictiveBackHandler$launchNewGesture$1(this, null), 3);
        }
    }

    public final void f(boolean z) {
        Job job;
        if (!z && super.a() && (job = this.f705f) != null && !job.isActive()) {
            b();
        }
        f(z);
        i(z);
    }
}
