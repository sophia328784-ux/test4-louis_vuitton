package com.linecorp.linesdk;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.linecorp.linesdk.databinding.OpenChatInfoFragmentBindingImpl;
import com.linecorp.linesdk.databinding.ProfileInfoFragmentBindingImpl;
import com.vuitton.android.R;
import defpackage.cj;
import defpackage.md;
import defpackage.v7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f36052a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        f36052a = sparseIntArray;
        sparseIntArray.put(R.layout.open_chat_info_fragment, 1);
        sparseIntArray.put(R.layout.profile_info_fragment, 2);
    }

    @Override // androidx.databinding.DataBinderMapper
    public final List a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public final ViewDataBinding b(DataBindingComponent dataBindingComponent, View view, int i2) {
        int i3 = f36052a.get(i2);
        if (i3 > 0) {
            Object tag = view.getTag();
            if (tag == null) {
                v7.h("view must have a tag");
            } else {
                if (i3 == 1) {
                    if ("layout/open_chat_info_fragment_0".equals(tag)) {
                        return new OpenChatInfoFragmentBindingImpl(dataBindingComponent, view);
                    }
                    md.n(cj.i(tag, "The tag for open_chat_info_fragment is invalid. Received: "));
                    return null;
                }
                if (i3 == 2) {
                    if ("layout/profile_info_fragment_0".equals(tag)) {
                        return new ProfileInfoFragmentBindingImpl(dataBindingComponent, view);
                    }
                    md.n(cj.i(tag, "The tag for profile_info_fragment is invalid. Received: "));
                    return null;
                }
            }
        }
        return null;
    }
}
