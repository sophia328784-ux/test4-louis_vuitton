package androidx.room;

import android.content.Context;
import defpackage.md;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/Room;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class Room {
    public static final RoomDatabase.Builder a(Context context, Class cls, String str) {
        context.getClass();
        if (StringsKt.w(str)) {
            md.n("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            return null;
        }
        if (!str.equals(":memory:")) {
            return new RoomDatabase.Builder(context, cls, str);
        }
        md.n("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        return null;
    }
}
