package androidx.work.impl.model;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/work/impl/model/SystemIdInfoDao;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface SystemIdInfoDao {
    SystemIdInfo a(int i2, String str);

    default SystemIdInfo b(WorkGenerationalId workGenerationalId) {
        return a(workGenerationalId.f20500b, workGenerationalId.f20499a);
    }

    List c();

    void d(SystemIdInfo systemIdInfo);

    void e(String str);
}
