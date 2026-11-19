package androidx.compose.ui.autofill;

import android.view.View;
import android.view.autofill.AutofillId;
import androidx.compose.ui.geometry.Rect;
import defpackage.a;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/autofill/AndroidAutofill;", "Landroidx/compose/ui/autofill/Autofill;", "Landroid/view/View;", "view", "Landroidx/compose/ui/autofill/AutofillTree;", "autofillTree", "<init>", "(Landroid/view/View;Landroidx/compose/ui/autofill/AutofillTree;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidAutofill implements Autofill {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f8625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AutofillTree f8626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.view.autofill.AutofillManager f8627c;
    public final AutofillId d;

    public AndroidAutofill(View view, AutofillTree autofillTree) {
        this.f8625a = view;
        this.f8626b = autofillTree;
        android.view.autofill.AutofillManager autofillManager = (android.view.autofill.AutofillManager) view.getContext().getSystemService(android.view.autofill.AutofillManager.class);
        if (autofillManager == null) {
            md.k("Autofill service could not be located.");
            throw null;
        }
        this.f8627c = autofillManager;
        view.setImportantForAutofill(1);
        AutofillId autofillId = view.getAutofillId();
        if (autofillId == null) {
            throw a.s("Required value was null.");
        }
        this.d = autofillId;
    }

    @Override // androidx.compose.ui.autofill.Autofill
    public final void a(AutofillNode autofillNode) {
        this.f8627c.notifyViewExited(this.f8625a, autofillNode.d);
    }

    @Override // androidx.compose.ui.autofill.Autofill
    public final void b(AutofillNode autofillNode) {
        Rect rect = autofillNode.f8644b;
        if (rect == null) {
            md.k("requestAutofill called before onChildPositioned()");
            return;
        }
        this.f8627c.notifyViewEntered(this.f8625a, autofillNode.d, new android.graphics.Rect(Math.round(rect.f8811a), Math.round(rect.f8812b), Math.round(rect.f8813c), Math.round(rect.d)));
    }
}
