package com.perfectcorp.common.utility;

import android.text.Layout;
import android.text.SpannableString;
import android.text.style.AlignmentSpan;
import android.widget.Toast;
import com.perfectcorp.common.PfCommons;

/* JADX INFO: loaded from: classes3.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f39457a;

    public q(String str) {
        this.f39457a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Toast toast = ToastUtils.f39435a;
        if (toast != null) {
            toast.cancel();
        }
        SpannableString spannableString = new SpannableString(this.f39457a);
        spannableString.setSpan(new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER), 0, this.f39457a.length() - 1, 18);
        Toast toastMakeText = Toast.makeText(PfCommons.b(), spannableString, 1);
        ToastUtils.f39435a = toastMakeText;
        toastMakeText.setGravity(17, 0, 0);
        ToastUtils.f39435a.show();
    }
}
