package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
class PasswordToggleEndIconDelegate extends EndIconDelegate {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f33195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f33196f;
    public final a g;

    public PasswordToggleEndIconDelegate(EndCompoundLayout endCompoundLayout, int i2) {
        super(endCompoundLayout);
        this.f33195e = R.drawable.design_password_eye;
        this.g = new a(this, 2);
        if (i2 != 0) {
            this.f33195e = i2;
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void b() {
        p();
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final int d() {
        return this.f33195e;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final View.OnClickListener f() {
        return this.g;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean j() {
        return true;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean k() {
        EditText editText = this.f33196f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void l(EditText editText) {
        this.f33196f = editText;
        p();
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void q() {
        EditText editText = this.f33196f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f33196f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void r() {
        EditText editText = this.f33196f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
