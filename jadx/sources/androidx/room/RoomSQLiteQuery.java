package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/RoomSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "Binding", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f19488j = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final TreeMap f19489k = new TreeMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile String f19491c;
    public final long[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double[] f19492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String[] f19493f;
    public final byte[][] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f19494h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19495i;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/room/RoomSQLiteQuery$Binding;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention
    public @interface Binding {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Landroidx/room/RoomSQLiteQuery$Companion;", "", "", "NULL", "I", "LONG", "DOUBLE", "STRING", "BLOB", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public RoomSQLiteQuery(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f19490b = i2;
        int i3 = i2 + 1;
        this.f19494h = new int[i3];
        this.d = new long[i3];
        this.f19492e = new double[i3];
        this.f19493f = new String[i3];
        this.g = new byte[i3][];
    }

    public static final RoomSQLiteQuery c(int i2, String str) {
        f19488j.getClass();
        TreeMap treeMap = f19489k;
        synchronized (treeMap) {
            Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i2));
            if (entryCeilingEntry == null) {
                RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i2, null);
                roomSQLiteQuery.f19491c = str;
                roomSQLiteQuery.f19495i = i2;
                return roomSQLiteQuery;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            RoomSQLiteQuery roomSQLiteQuery2 = (RoomSQLiteQuery) entryCeilingEntry.getValue();
            roomSQLiteQuery2.f19491c = str;
            roomSQLiteQuery2.f19495i = i2;
            return roomSQLiteQuery2;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void O0(int i2, String str) {
        str.getClass();
        this.f19494h[i2] = 4;
        this.f19493f[i2] = str;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void a(int i2, long j2) {
        this.f19494h[i2] = 2;
        this.d[i2] = j2;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void b(int i2, byte[] bArr) {
        bArr.getClass();
        this.f19494h[i2] = 5;
        this.g[i2] = bArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    /* JADX INFO: renamed from: h */
    public final String getF19871b() {
        String str = this.f19491c;
        if (str != null) {
            return str;
        }
        md.k("Required value was null.");
        return null;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public final void j(SupportSQLiteProgram supportSQLiteProgram) {
        int i2 = this.f19495i;
        if (1 > i2) {
            return;
        }
        int i3 = 1;
        while (true) {
            int i4 = this.f19494h[i3];
            if (i4 == 1) {
                supportSQLiteProgram.l(i3);
            } else if (i4 == 2) {
                supportSQLiteProgram.a(i3, this.d[i3]);
            } else if (i4 == 3) {
                supportSQLiteProgram.t1(this.f19492e[i3], i3);
            } else if (i4 == 4) {
                String str = this.f19493f[i3];
                if (str == null) {
                    md.n("Required value was null.");
                    return;
                }
                supportSQLiteProgram.O0(i3, str);
            } else if (i4 == 5) {
                byte[] bArr = this.g[i3];
                if (bArr == null) {
                    md.n("Required value was null.");
                    return;
                }
                supportSQLiteProgram.b(i3, bArr);
            }
            if (i3 == i2) {
                return;
            } else {
                i3++;
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void l(int i2) {
        this.f19494h[i2] = 1;
    }

    public final void release() {
        TreeMap treeMap = f19489k;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f19490b), this);
            f19488j.getClass();
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                it.getClass();
                while (true) {
                    int i2 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i2;
                }
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void t1(double d, int i2) {
        this.f19494h[i2] = 3;
        this.f19492e[i2] = d;
    }
}
