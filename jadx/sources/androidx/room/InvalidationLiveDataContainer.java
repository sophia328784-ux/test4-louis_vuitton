package androidx.room;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/InvalidationLiveDataContainer;", "", "Landroidx/room/RoomDatabase;", "database", "<init>", "(Landroidx/room/RoomDatabase;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InvalidationLiveDataContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f19397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f19398b;

    public InvalidationLiveDataContainer(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.f19397a = roomDatabase;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        setNewSetFromMap.getClass();
        this.f19398b = setNewSetFromMap;
    }
}
