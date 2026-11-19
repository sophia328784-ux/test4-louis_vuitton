package com.linecorp.linesdk.databinding;

import android.view.View;
import android.widget.EditText;
import androidx.databinding.ViewDataBinding;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProfileInfoFragmentBinding extends ViewDataBinding {
    public static final /* synthetic */ int t = 0;
    public final EditText r;
    public OpenChatInfoViewModel s;

    public ProfileInfoFragmentBinding(Object obj, View view, EditText editText) {
        super(obj, view, 1);
        this.r = editText;
    }

    public abstract void m(OpenChatInfoViewModel openChatInfoViewModel);
}
