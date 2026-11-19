package com.vuitton.android.data.database.room;

import androidx.room.RoomDatabase;
import androidx.room.migration.AutoMigrationSpec;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/database/room/LVAppDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Companion", "DeleteClubMigration", "DeleteProfileMigration", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVAppDatabase extends RoomDatabase {
    public static LVAppDatabase o;
    public static final Companion n = new Companion(null);
    public static final LVAppDatabase$Companion$MIGRATION_1_2$1 p = new LVAppDatabase$Companion$MIGRATION_1_2$1(1, 2);
    public static final LVAppDatabase$Companion$MIGRATION_2_3$1 q = new LVAppDatabase$Companion$MIGRATION_2_3$1(2, 3);

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0004*\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;", "", "", "DATABASE_NAME", "Ljava/lang/String;", "Lcom/vuitton/android/data/database/room/LVAppDatabase;", "instance", "Lcom/vuitton/android/data/database/room/LVAppDatabase;", "com/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_1_2$1", "MIGRATION_1_2", "Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_1_2$1;", "com/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1", "MIGRATION_2_3", "Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteClubMigration;", "Landroidx/room/migration/AutoMigrationSpec;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class DeleteClubMigration implements AutoMigrationSpec {
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/database/room/LVAppDatabase$DeleteProfileMigration;", "Landroidx/room/migration/AutoMigrationSpec;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class DeleteProfileMigration implements AutoMigrationSpec {
    }

    public abstract LightUpProductDao y();
}
