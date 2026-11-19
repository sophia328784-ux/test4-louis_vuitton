package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
import com.batch.android.c0.a;
import com.batch.android.r0.h;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class z71 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81569c;
    public final /* synthetic */ Object d;

    public /* synthetic */ z71(Object obj, Object obj2, int i2) {
        this.f81568b = i2;
        this.f81569c = obj;
        this.d = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f81568b;
        Object obj = this.d;
        Object obj2 = this.f81569c;
        switch (i3) {
            case 0:
                ((a) obj2).a((com.batch.android.h0.a) obj, dialogInterface, i2);
                break;
            default:
                h.a.a((EditText) obj2, (JsPromptResult) obj, dialogInterface, i2);
                break;
        }
    }
}
