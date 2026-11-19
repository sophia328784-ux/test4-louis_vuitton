package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import defpackage.md;
import defpackage.v7;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\n\u000bB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/room/support/AutoCloser;", "", "", "timeoutAmount", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "Landroidx/room/support/AutoCloser$Watch;", "watch", "<init>", "(JLjava/util/concurrent/TimeUnit;Landroidx/room/support/AutoCloser$Watch;)V", "Watch", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AutoCloser {
    public static final /* synthetic */ int l = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Watch f19701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SupportSQLiteOpenHelper f19702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CoroutineScope f19703c;
    public Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f19704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f19705f;
    public final AtomicInteger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicLong f19706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SupportSQLiteDatabase f19707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f19708j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Job f19709k;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/support/AutoCloser$Companion;", "", "", "BUG_LINK", "Ljava/lang/String;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/room/support/AutoCloser$Watch;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Watch {
        long a();
    }

    static {
        new Companion(null);
    }

    public AutoCloser(long j2, TimeUnit timeUnit, Watch watch) {
        timeUnit.getClass();
        watch.getClass();
        this.f19701a = watch;
        this.f19704e = new Object();
        this.f19705f = timeUnit.toMillis(j2);
        this.g = new AtomicInteger(0);
        this.f19706h = new AtomicLong(watch.a());
    }

    public final void a() {
        int iDecrementAndGet = this.g.decrementAndGet();
        if (iDecrementAndGet < 0) {
            md.k("Unbalanced reference count.");
            return;
        }
        this.f19706h.set(this.f19701a.a());
        if (iDecrementAndGet == 0) {
            CoroutineScope coroutineScope = this.f19703c;
            if (coroutineScope != null) {
                this.f19709k = BuildersKt.c(coroutineScope, null, null, new AutoCloser$decrementCountAndScheduleClose$2(this, null), 3);
            } else {
                Intrinsics.h("coroutineScope");
                throw null;
            }
        }
    }

    public final Object b(Function1 function1) {
        function1.getClass();
        try {
            return function1.invoke(c());
        } finally {
            a();
        }
    }

    public final SupportSQLiteDatabase c() {
        Job job = this.f19709k;
        if (job != null) {
            job.cancel(null);
        }
        this.f19709k = null;
        this.g.incrementAndGet();
        if (this.f19708j) {
            md.k("Attempting to open already closed database.");
            return null;
        }
        synchronized (this.f19704e) {
            SupportSQLiteDatabase supportSQLiteDatabase = this.f19707i;
            if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                return supportSQLiteDatabase;
            }
            SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.f19702b;
            if (supportSQLiteOpenHelper == null) {
                Intrinsics.h("delegateOpenHelper");
                throw null;
            }
            SupportSQLiteDatabase writableDatabase = supportSQLiteOpenHelper.getWritableDatabase();
            this.f19707i = writableDatabase;
            return writableDatabase;
        }
    }

    public /* synthetic */ AutoCloser(long j2, TimeUnit timeUnit, Watch watch, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, timeUnit, (i2 & 4) != 0 ? new v7(24) : watch);
    }
}
