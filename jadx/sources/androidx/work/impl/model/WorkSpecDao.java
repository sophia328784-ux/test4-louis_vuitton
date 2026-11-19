package androidx.work.impl.model;

import androidx.room.RoomLambdaTrackingLiveData;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.work.Data;
import androidx.work.WorkInfo;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface WorkSpecDao {
    int A();

    void a(String str);

    void b(String str);

    int c(long j2, String str);

    List d(long j2);

    void e(WorkSpec workSpec);

    void f(int i2, String str);

    List g();

    int h(String str, WorkInfo.State state);

    List i(String str);

    WorkInfo.State j(String str);

    WorkSpec k(String str);

    int l(String str);

    List m(String str);

    int n();

    List o();

    List p(String str);

    FlowUtil$createFlow$$inlined$map$1 q();

    List r(int i2);

    void s(long j2, String str);

    void t(String str, Data data);

    List u();

    void v(int i2, String str);

    List w();

    int x(String str);

    RoomLambdaTrackingLiveData y(List list);

    int z(String str);
}
