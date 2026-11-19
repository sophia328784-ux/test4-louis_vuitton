package com.linecorp.linesdk.databinding;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import androidx.databinding.ViewDataBinding;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class OpenChatInfoFragmentBinding extends ViewDataBinding {
    public static final /* synthetic */ int y = 0;
    public final View r;
    public final View s;
    public final EditText t;
    public final View u;
    public final EditText v;
    public final CheckBox w;
    public OpenChatInfoViewModel x;

    public OpenChatInfoFragmentBinding(Object obj, View view, View view2, View view3, EditText editText, View view4, EditText editText2, CheckBox checkBox) {
        super(obj, view, 3);
        this.r = view2;
        this.s = view3;
        this.t = editText;
        this.u = view4;
        this.v = editText2;
        this.w = checkBox;
    }

    public abstract void m(OpenChatInfoViewModel openChatInfoViewModel);
}
