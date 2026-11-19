package com.linecorp.linesdk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.PropertyChangeRegistry;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.linecorp.linesdk.BR;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class ProfileInfoFragmentBindingImpl extends ProfileInfoFragmentBinding {
    public static final SparseIntArray v;
    public long u;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        v = sparseIntArray;
        sparseIntArray.put(R.id.displayNameGuide, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ProfileInfoFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        Object[] objArr = new Object[3];
        ViewDataBinding.f(dataBindingComponent, view, objArr, v, true);
        EditText editText = (EditText) objArr[1];
        super(dataBindingComponent, view, editText);
        this.u = -1L;
        this.r.setTag(null);
        ((ConstraintLayout) objArr[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        synchronized (this) {
            this.u = 4L;
        }
        j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public final void c() {
        long j2;
        synchronized (this) {
            j2 = this.u;
            this.u = 0L;
        }
        OpenChatInfoViewModel openChatInfoViewModel = this.s;
        long j3 = j2 & 7;
        String str = null;
        if (j3 != 0) {
            MutableLiveData mutableLiveData = openChatInfoViewModel != null ? openChatInfoViewModel.d : null;
            l(0, mutableLiveData);
            if (mutableLiveData != null) {
                str = (String) mutableLiveData.getValue();
            }
        }
        if (j3 != 0) {
            TextViewBindingAdapter.a(this.r, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public final boolean d() {
        synchronized (this) {
            try {
                return this.u != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public final boolean g(int i2, int i3, Object obj) {
        if (i2 != 0) {
            return false;
        }
        return n(i3);
    }

    @Override // com.linecorp.linesdk.databinding.ProfileInfoFragmentBinding
    public final void m(OpenChatInfoViewModel openChatInfoViewModel) {
        this.s = openChatInfoViewModel;
        synchronized (this) {
            this.u |= 2;
        }
        int i2 = BR.viewModel;
        synchronized (this) {
            try {
                PropertyChangeRegistry propertyChangeRegistry = this.f12575b;
                if (propertyChangeRegistry != null) {
                    propertyChangeRegistry.c(this, i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        j();
    }

    public final boolean n(int i2) {
        if (i2 != BR._all) {
            return false;
        }
        synchronized (this) {
            this.u |= 1;
        }
        return true;
    }
}
