package androidx.databinding;

import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MergedDataBinderMapper extends DataBinderMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f12582a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f12583b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f12584c = new CopyOnWriteArrayList();

    @Override // androidx.databinding.DataBinderMapper
    public final ViewDataBinding b(DataBindingComponent dataBindingComponent, View view, int i2) {
        Iterator it = this.f12583b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingB = ((DataBinderMapper) it.next()).b(dataBindingComponent, view, i2);
            if (viewDataBindingB != null) {
                return viewDataBindingB;
            }
        }
        CopyOnWriteArrayList<String> copyOnWriteArrayList = this.f12584c;
        boolean z = false;
        for (String str : copyOnWriteArrayList) {
            try {
                Class<?> cls = Class.forName(str);
                if (DataBinderMapper.class.isAssignableFrom(cls)) {
                    c((DataBinderMapper) cls.newInstance());
                    copyOnWriteArrayList.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
            }
        }
        if (z) {
            return b(dataBindingComponent, view, i2);
        }
        return null;
    }

    public final void c(DataBinderMapper dataBinderMapper) {
        if (this.f12582a.add(dataBinderMapper.getClass())) {
            this.f12583b.add(dataBinderMapper);
            Iterator it = dataBinderMapper.a().iterator();
            while (it.hasNext()) {
                c((DataBinderMapper) it.next());
            }
        }
    }
}
