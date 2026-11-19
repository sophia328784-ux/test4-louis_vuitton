package com.linecorp.linesdk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.PropertyChangeRegistry;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.linecorp.linesdk.BR;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class OpenChatInfoFragmentBindingImpl extends OpenChatInfoFragmentBinding {
    public static final SparseIntArray A;
    public long z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        A = sparseIntArray;
        sparseIntArray.put(R.id.nameMaxTextView, 4);
        sparseIntArray.put(R.id.name_divider, 5);
        sparseIntArray.put(R.id.descriptionMaxTextView, 6);
        sparseIntArray.put(R.id.description_detail, 7);
        sparseIntArray.put(R.id.description_divider, 8);
        sparseIntArray.put(R.id.category_title, 9);
        sparseIntArray.put(R.id.categoryLabelTextView, 10);
        sparseIntArray.put(R.id.category_guide, 11);
        sparseIntArray.put(R.id.category_divider, 12);
        sparseIntArray.put(R.id.searchIncludedContainer, 13);
        sparseIntArray.put(R.id.search_title, 14);
        sparseIntArray.put(R.id.search_description, 15);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public OpenChatInfoFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        Object[] objArr = new Object[16];
        ViewDataBinding.f(dataBindingComponent, view, objArr, A, true);
        View view2 = (View) objArr[12];
        View view3 = (View) objArr[8];
        EditText editText = (EditText) objArr[2];
        View view4 = (View) objArr[5];
        EditText editText2 = (EditText) objArr[1];
        CheckBox checkBox = (CheckBox) objArr[3];
        super(dataBindingComponent, view, view2, view3, editText, view4, editText2, checkBox);
        this.z = -1L;
        this.t.setTag(null);
        ((ScrollView) objArr[0]).setTag(null);
        this.v.setTag(null);
        this.w.setTag(null);
        view.setTag(R.id.dataBinding, this);
        synchronized (this) {
            this.z = 16L;
        }
        j();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:30:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x005b  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006f  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public final void c() {
        long j2;
        long j3;
        String str;
        String str2;
        MutableLiveData mutableLiveData;
        Boolean bool;
        synchronized (this) {
            j2 = this.z;
            this.z = 0L;
        }
        OpenChatInfoViewModel openChatInfoViewModel = this.x;
        boolean zBooleanValue = false;
        String str3 = null;
        if ((31 & j2) != 0) {
            if ((j2 & 25) == 0) {
                str = null;
            } else {
                MutableLiveData mutableLiveData2 = openChatInfoViewModel != null ? openChatInfoViewModel.f36271c : null;
                l(0, mutableLiveData2);
                if (mutableLiveData2 != null) {
                    str = (String) mutableLiveData2.getValue();
                } else {
                    str = null;
                }
            }
            if ((j2 & 26) != 0) {
                MutableLiveData mutableLiveData3 = openChatInfoViewModel != null ? openChatInfoViewModel.f36272e : null;
                j3 = 0;
                l(1, mutableLiveData3);
                if (mutableLiveData3 != null) {
                    str2 = (String) mutableLiveData3.getValue();
                }
                if ((j2 & 28) != j3) {
                    if (openChatInfoViewModel != null) {
                        mutableLiveData = openChatInfoViewModel.g;
                    } else {
                        mutableLiveData = null;
                    }
                    l(2, mutableLiveData);
                    bool = mutableLiveData != null ? (Boolean) mutableLiveData.getValue() : null;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    }
                }
                str3 = str2;
            } else {
                j3 = 0;
            }
            str2 = null;
            if ((j2 & 28) != j3) {
                if (openChatInfoViewModel != null) {
                    mutableLiveData = openChatInfoViewModel.g;
                } else {
                    mutableLiveData = null;
                }
                l(2, mutableLiveData);
                if (mutableLiveData != null) {
                }
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                }
            }
            str3 = str2;
        } else {
            j3 = 0;
            str = null;
        }
        if ((j2 & 26) != j3) {
            TextViewBindingAdapter.a(this.t, str3);
        }
        if ((j2 & 25) != j3) {
            TextViewBindingAdapter.a(this.v, str);
        }
        if ((j2 & 28) != j3) {
            CheckBox checkBox = this.w;
            if (checkBox.isChecked() != zBooleanValue) {
                checkBox.setChecked(zBooleanValue);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public final boolean d() {
        synchronized (this) {
            try {
                return this.z != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public final boolean g(int i2, int i3, Object obj) {
        if (i2 == 0) {
            return n(i3);
        }
        if (i2 == 1) {
            return o(i3);
        }
        if (i2 != 2) {
            return false;
        }
        return p(i3);
    }

    @Override // com.linecorp.linesdk.databinding.OpenChatInfoFragmentBinding
    public final void m(OpenChatInfoViewModel openChatInfoViewModel) {
        this.x = openChatInfoViewModel;
        synchronized (this) {
            this.z |= 8;
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
            this.z |= 1;
        }
        return true;
    }

    public final boolean o(int i2) {
        if (i2 != BR._all) {
            return false;
        }
        synchronized (this) {
            this.z |= 2;
        }
        return true;
    }

    public final boolean p(int i2) {
        if (i2 != BR._all) {
            return false;
        }
        synchronized (this) {
            this.z |= 4;
        }
        return true;
    }
}
