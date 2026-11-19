package androidx.databinding.library.baseAdapters;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import defpackage.v7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f12608a = new SparseIntArray(0);

    @Override // androidx.databinding.DataBinderMapper
    public final List a() {
        return new ArrayList(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    public final ViewDataBinding b(DataBindingComponent dataBindingComponent, View view, int i2) {
        if (f12608a.get(i2) <= 0 || view.getTag() != null) {
            return null;
        }
        v7.h("view must have a tag");
        return null;
    }
}
