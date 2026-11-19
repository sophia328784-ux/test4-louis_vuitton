package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;", "primary", "primaryInvert", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVTextFields {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationTextField f48635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigurationTextField f48636b;

    public LVTextFields(ConfigurationTextField configurationTextField, ConfigurationTextField configurationTextField2) {
        configurationTextField.getClass();
        configurationTextField2.getClass();
        this.f48635a = configurationTextField;
        this.f48636b = configurationTextField2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVTextFields)) {
            return false;
        }
        LVTextFields lVTextFields = (LVTextFields) obj;
        return Intrinsics.c(this.f48635a, lVTextFields.f48635a) && Intrinsics.c(this.f48636b, lVTextFields.f48636b);
    }

    public final int hashCode() {
        return this.f48636b.hashCode() + (this.f48635a.hashCode() * 31);
    }

    public final String toString() {
        return "LVTextFields(primary=" + this.f48635a + ", primaryInvert=" + this.f48636b + ")";
    }
}
