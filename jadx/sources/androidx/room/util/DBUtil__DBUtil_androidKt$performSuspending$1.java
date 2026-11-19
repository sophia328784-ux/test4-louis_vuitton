package androidx.room.util;

import androidx.room.RoomDatabase;
import com.github.druk.dnssd.NSType;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt", f = "DBUtil.android.kt", l = {NSType.TKEY, NSType.IXFR, NSType.IXFR}, m = "performSuspending")
final class DBUtil__DBUtil_androidKt$performSuspending$1<R> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RoomDatabase f19750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function1 f19751c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f19753f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f19753f = obj;
        this.g |= Integer.MIN_VALUE;
        return DBUtil.d(null, false, false, null, this);
    }
}
