package androidx.room;

import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/room/RoomOpenDelegate;", "Landroidx/room/RoomOpenDelegateMarker;", "", "version", "", "identityHash", "legacyIdentityHash", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "ValidationResult", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class RoomOpenDelegate implements RoomOpenDelegateMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f19476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19478c;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/room/RoomOpenDelegate$ValidationResult;", "", "", "isValid", "", "expectedFoundMsg", "<init>", "(ZLjava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ValidationResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f19479a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f19480b;

        public ValidationResult(boolean z, String str) {
            this.f19479a = z;
            this.f19480b = str;
        }
    }

    public RoomOpenDelegate(int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f19476a = i2;
        this.f19477b = str;
        this.f19478c = str2;
    }

    public abstract void a(SQLiteConnection sQLiteConnection);

    public abstract void b(SQLiteConnection sQLiteConnection);

    public abstract void c(SQLiteConnection sQLiteConnection);

    public abstract void d(SQLiteConnection sQLiteConnection);

    public abstract void e(SQLiteConnection sQLiteConnection);

    public abstract void f(SQLiteConnection sQLiteConnection);

    public abstract ValidationResult g(SQLiteConnection sQLiteConnection);
}
