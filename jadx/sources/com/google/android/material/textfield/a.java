package com.google.android.material.textfield;

import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.dynatrace.android.callback.Callback;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f33219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndIconDelegate f33220c;

    public /* synthetic */ a(EndIconDelegate endIconDelegate, int i2) {
        this.f33219b = i2;
        this.f33220c = endIconDelegate;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f33219b;
        EndIconDelegate endIconDelegate = this.f33220c;
        switch (i2) {
            case 0:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) endIconDelegate;
                Callback.n(view);
                try {
                    EditText editText = clearTextEndIconDelegate.f33144i;
                    if (editText != null) {
                        Editable text = editText.getText();
                        if (text != null) {
                            text.clear();
                        }
                        clearTextEndIconDelegate.p();
                    }
                    return;
                } finally {
                    Callback.o();
                }
            case 1:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) endIconDelegate;
                Callback.n(view);
                try {
                    dropdownMenuEndIconDelegate.t();
                    return;
                } finally {
                    Callback.o();
                }
            default:
                PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = (PasswordToggleEndIconDelegate) endIconDelegate;
                Callback.n(view);
                try {
                    EditText editText2 = passwordToggleEndIconDelegate.f33196f;
                    if (editText2 != null) {
                        int selectionEnd = editText2.getSelectionEnd();
                        EditText editText3 = passwordToggleEndIconDelegate.f33196f;
                        boolean z = editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod);
                        EditText editText4 = passwordToggleEndIconDelegate.f33196f;
                        if (z) {
                            editText4.setTransformationMethod(null);
                        } else {
                            editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        }
                        if (selectionEnd >= 0) {
                            passwordToggleEndIconDelegate.f33196f.setSelection(selectionEnd);
                        }
                        passwordToggleEndIconDelegate.p();
                    }
                    return;
                } finally {
                    Callback.o();
                }
        }
    }
}
