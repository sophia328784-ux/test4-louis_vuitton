package com.google.android.gms.internal.measurement;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public enum zzabx implements zzady {
    PURPOSE_RESTRICTION_NOT_ALLOWED(0),
    PURPOSE_RESTRICTION_REQUIRE_CONSENT(1),
    PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST(2),
    PURPOSE_RESTRICTION_UNDEFINED(3),
    UNRECOGNIZED(-1);

    private final int zzf;

    zzabx(int i2) {
        this.zzf = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzady
    public final int d0() {
        if (this != UNRECOGNIZED) {
            return this.zzf;
        }
        md.n("Can't get the number of an unknown enum value.");
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzf);
    }
}
