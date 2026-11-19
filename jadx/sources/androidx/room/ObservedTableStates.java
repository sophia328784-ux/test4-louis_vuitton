package androidx.room;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/room/ObservedTableStates;", "", "", "size", "<init>", "(I)V", "ObserveOp", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ObservedTableStates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantLock f19441a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f19442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean[] f19443c;
    public boolean d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/ObservedTableStates$ObserveOp;", "", "NO_OP", "ADD", "REMOVE", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ObserveOp {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ObserveOp[] $VALUES;
        public static final ObserveOp ADD;
        public static final ObserveOp NO_OP;
        public static final ObserveOp REMOVE;

        static {
            ObserveOp observeOp = new ObserveOp("NO_OP", 0);
            NO_OP = observeOp;
            ObserveOp observeOp2 = new ObserveOp("ADD", 1);
            ADD = observeOp2;
            ObserveOp observeOp3 = new ObserveOp("REMOVE", 2);
            REMOVE = observeOp3;
            ObserveOp[] observeOpArr = {observeOp, observeOp2, observeOp3};
            $VALUES = observeOpArr;
            $ENTRIES = EnumEntriesKt.a(observeOpArr);
        }

        public static ObserveOp valueOf(String str) {
            return (ObserveOp) Enum.valueOf(ObserveOp.class, str);
        }

        public static ObserveOp[] values() {
            return (ObserveOp[]) $VALUES.clone();
        }
    }

    public ObservedTableStates(int i2) {
        this.f19442b = new long[i2];
        this.f19443c = new boolean[i2];
    }

    public final boolean a(int[] iArr) {
        iArr.getClass();
        ReentrantLock reentrantLock = this.f19441a;
        reentrantLock.lock();
        try {
            boolean z = false;
            for (int i2 : iArr) {
                long[] jArr = this.f19442b;
                long j2 = jArr[i2];
                jArr[i2] = 1 + j2;
                if (j2 == 0) {
                    z = true;
                    this.d = true;
                }
            }
            reentrantLock.unlock();
            return z;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final boolean b(int[] iArr) {
        iArr.getClass();
        ReentrantLock reentrantLock = this.f19441a;
        reentrantLock.lock();
        try {
            boolean z = false;
            for (int i2 : iArr) {
                long[] jArr = this.f19442b;
                long j2 = jArr[i2];
                jArr[i2] = j2 - 1;
                if (j2 == 1) {
                    z = true;
                    this.d = true;
                }
            }
            reentrantLock.unlock();
            return z;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
