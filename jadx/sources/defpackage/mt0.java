package defpackage;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mt0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoomDatabase f76363c;

    public /* synthetic */ mt0(RoomDatabase roomDatabase, int i2) {
        this.f76362b = i2;
        this.f76363c = roomDatabase;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76362b;
        RoomDatabase roomDatabase = this.f76363c;
        switch (i2) {
            case 0:
                int i3 = RoomDatabase.m;
                ((SupportSQLiteDatabase) obj).getClass();
                roomDatabase.l().getWritableDatabase().t0();
                if (!roomDatabase.r()) {
                    InvalidationTracker invalidationTrackerK = roomDatabase.k();
                    invalidationTrackerK.f19402e.e(invalidationTrackerK.f19405i, invalidationTrackerK.f19406j);
                }
                return Unit.f71739a;
            case 1:
                DatabaseConfiguration databaseConfiguration = (DatabaseConfiguration) obj;
                int i4 = RoomDatabase.m;
                databaseConfiguration.getClass();
                return roomDatabase.g(databaseConfiguration);
            default:
                int i5 = RoomDatabase.m;
                ((SupportSQLiteDatabase) obj).getClass();
                roomDatabase.s();
                return Unit.f71739a;
        }
    }
}
