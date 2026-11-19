package com.vuitton.android.presentation.screen.authentication.common.validation;

import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;", "", "", "isConfirmPasswordError", "passwordHasValidLength", "passwordHasOneNumber", "passwordHasOneCapitalLetter", "passwordHasOneSpecialCharacter", "passwordHasLowerCaseLetter", "<init>", "(ZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PasswordValidationState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f53496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53497c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f53498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f53499f;

    public /* synthetic */ PasswordValidationState(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5, (i2 & 32) != 0 ? false : z6);
    }

    public static PasswordValidationState a(PasswordValidationState passwordValidationState, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i2) {
        if ((i2 & 1) != 0) {
            z = passwordValidationState.f53495a;
        }
        boolean z7 = z;
        if ((i2 & 2) != 0) {
            z2 = passwordValidationState.f53496b;
        }
        boolean z8 = z2;
        if ((i2 & 4) != 0) {
            z3 = passwordValidationState.f53497c;
        }
        boolean z9 = z3;
        if ((i2 & 8) != 0) {
            z4 = passwordValidationState.d;
        }
        boolean z10 = z4;
        if ((i2 & 16) != 0) {
            z5 = passwordValidationState.f53498e;
        }
        boolean z11 = z5;
        if ((i2 & 32) != 0) {
            z6 = passwordValidationState.f53499f;
        }
        passwordValidationState.getClass();
        return new PasswordValidationState(z7, z8, z9, z10, z11, z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PasswordValidationState)) {
            return false;
        }
        PasswordValidationState passwordValidationState = (PasswordValidationState) obj;
        return this.f53495a == passwordValidationState.f53495a && this.f53496b == passwordValidationState.f53496b && this.f53497c == passwordValidationState.f53497c && this.d == passwordValidationState.d && this.f53498e == passwordValidationState.f53498e && this.f53499f == passwordValidationState.f53499f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f53499f) + o60.b(o60.b(o60.b(o60.b(Boolean.hashCode(this.f53495a) * 31, 31, this.f53496b), 31, this.f53497c), 31, this.d), 31, this.f53498e);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("PasswordValidationState(isConfirmPasswordError=", ", passwordHasValidLength=", ", passwordHasOneNumber=", this.f53495a, this.f53496b);
        fc.y(sbM, this.f53497c, ", passwordHasOneCapitalLetter=", this.d, ", passwordHasOneSpecialCharacter=");
        return pq0.p(sbM, this.f53498e, ", passwordHasLowerCaseLetter=", this.f53499f, ")");
    }

    public PasswordValidationState(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f53495a = z;
        this.f53496b = z2;
        this.f53497c = z3;
        this.d = z4;
        this.f53498e = z5;
        this.f53499f = z6;
    }

    public PasswordValidationState() {
        this(false, false, false, false, false, false, 63, null);
    }
}
