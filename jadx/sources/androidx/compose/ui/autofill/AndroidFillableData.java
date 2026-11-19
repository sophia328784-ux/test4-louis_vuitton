package androidx.compose.ui.autofill;

import android.view.autofill.AutofillValue;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/autofill/AndroidFillableData;", "Landroidx/compose/ui/autofill/FillableData;", "Landroid/view/autofill/AutofillValue;", "autofillValue", "<init>", "(Landroid/view/autofill/AutofillValue;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidFillableData implements FillableData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AutofillValue f8641a;

    public AndroidFillableData(AutofillValue autofillValue) {
        this.f8641a = autofillValue;
    }

    @Override // androidx.compose.ui.autofill.FillableData
    public final CharSequence a() {
        AutofillValue autofillValue = this.f8641a;
        if (autofillValue.isText()) {
            return autofillValue.getTextValue();
        }
        return null;
    }

    @Override // androidx.compose.ui.autofill.FillableData
    public final Boolean b() {
        AutofillValue autofillValue = this.f8641a;
        if (autofillValue.isToggle()) {
            return Boolean.valueOf(autofillValue.getToggleValue());
        }
        return null;
    }
}
