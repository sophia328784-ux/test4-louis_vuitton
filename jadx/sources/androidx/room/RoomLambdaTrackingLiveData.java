package androidx.room;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BE\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\u0012\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00018\u00000\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/room/RoomLambdaTrackingLiveData;", "T", "Landroidx/room/RoomTrackingLiveData;", "Landroidx/room/RoomDatabase;", "database", "Landroidx/room/InvalidationLiveDataContainer;", "container", "", "inTransaction", "", "", "tableNames", "Lkotlin/Function1;", "Landroidx/sqlite/SQLiteConnection;", "lambdaFunction", "<init>", "(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RoomLambdaTrackingLiveData<T> extends RoomTrackingLiveData<T> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Function1 f19475i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomLambdaTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, String[] strArr, Function1<? super SQLiteConnection, ? extends T> function1) {
        super(roomDatabase, invalidationLiveDataContainer, z, strArr, null);
        roomDatabase.getClass();
        invalidationLiveDataContainer.getClass();
        strArr.getClass();
        function1.getClass();
        this.f19475i = function1;
    }

    @Override // androidx.room.RoomTrackingLiveData
    public final Object c(Continuation continuation) {
        return DBUtil.d(this.f19496a, true, this.f19498c, this.f19475i, (ContinuationImpl) continuation);
    }
}
