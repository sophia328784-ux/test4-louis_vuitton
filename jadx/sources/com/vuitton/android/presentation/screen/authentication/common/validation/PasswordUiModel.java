package com.vuitton.android.presentation.screen.authentication.common.validation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PasswordUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f53492a = SnapshotStateKt.g(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f53493b = SnapshotStateKt.g("");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f53494c = SnapshotStateKt.g("");
    public final MutableState d = SnapshotStateKt.g(new PasswordValidationState(false, false, false, false, false, false, 63, null));

    public final void a() {
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) this.d;
        snapshotMutableStateImpl.setValue(PasswordValidationState.a((PasswordValidationState) snapshotMutableStateImpl.getF10755b(), !Intrinsics.c(((SnapshotMutableStateImpl) this.f53493b).getF10755b(), ((SnapshotMutableStateImpl) this.f53494c).getF10755b()), false, false, false, false, false, 62));
    }

    public final boolean b() {
        CharSequence charSequence = (CharSequence) ((SnapshotMutableStateImpl) this.f53492a).getF10755b();
        if (charSequence != null && !StringsKt.w(charSequence)) {
            return false;
        }
        PasswordValidationState passwordValidationState = (PasswordValidationState) ((SnapshotMutableStateImpl) this.d).getF10755b();
        return passwordValidationState.f53496b && passwordValidationState.f53497c && passwordValidationState.d && passwordValidationState.f53498e;
    }

    public final void c() {
        ((SnapshotMutableStateImpl) this.d).setValue(new PasswordValidationState(false, false, false, false, false, false, 63, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [int] */
    public final void d(String str) {
        boolean z;
        boolean z2;
        str.getClass();
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) this.f53493b;
        snapshotMutableStateImpl.setValue(str);
        SnapshotMutableStateImpl snapshotMutableStateImpl2 = (SnapshotMutableStateImpl) this.d;
        PasswordValidationState passwordValidationState = (PasswordValidationState) snapshotMutableStateImpl2.getF10755b();
        int length = ((String) snapshotMutableStateImpl.getF10755b()).length();
        boolean z3 = true;
        boolean z4 = false;
        if (8 > length || length >= 21) {
            z3 = false;
        }
        CharSequence charSequence = (CharSequence) snapshotMutableStateImpl.getF10755b();
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (Character.isDigit(charSequence.charAt(i2))) {
                z4 = true;
                break;
            }
        }
        ?? r6 = (CharSequence) snapshotMutableStateImpl.getF10755b();
        ?? r7 = z4;
        while (true) {
            if (r7 >= r6.length()) {
                z = z4;
                break;
            } else {
                if (Character.isUpperCase(r6.charAt(r7))) {
                    z = z3;
                    break;
                }
                r7++;
            }
        }
        boolean zA = new Regex("[!\"#$%&'()*+,-./:;\\\\<=>?@\\[\\]^_`{|}~]").a((CharSequence) snapshotMutableStateImpl.getF10755b());
        ?? r0 = (CharSequence) snapshotMutableStateImpl.getF10755b();
        for (?? r8 = z4; r8 < r0.length(); r8++) {
            if (Character.isLowerCase(r0.charAt(r8))) {
                z2 = z3;
                snapshotMutableStateImpl2.setValue(PasswordValidationState.a(passwordValidationState, false, z3, z4, z, zA, z2, 1));
                a();
            }
        }
        z2 = false;
        snapshotMutableStateImpl2.setValue(PasswordValidationState.a(passwordValidationState, false, z3, z4, z, zA, z2, 1));
        a();
    }
}
