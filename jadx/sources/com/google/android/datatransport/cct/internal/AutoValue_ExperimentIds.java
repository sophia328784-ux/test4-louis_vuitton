package com.google.android.datatransport.cct.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_ExperimentIds extends ExperimentIds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f27879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f27880b;

    public static final class Builder extends ExperimentIds.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f27881a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f27882b;

        @Override // com.google.android.datatransport.cct.internal.ExperimentIds.Builder
        public final ExperimentIds a() {
            return new AutoValue_ExperimentIds(this.f27881a, this.f27882b);
        }

        @Override // com.google.android.datatransport.cct.internal.ExperimentIds.Builder
        public final ExperimentIds.Builder b(byte[] bArr) {
            this.f27881a = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ExperimentIds.Builder
        public final ExperimentIds.Builder c(byte[] bArr) {
            this.f27882b = bArr;
            return this;
        }
    }

    public AutoValue_ExperimentIds(byte[] bArr, byte[] bArr2) {
        this.f27879a = bArr;
        this.f27880b = bArr2;
    }

    @Override // com.google.android.datatransport.cct.internal.ExperimentIds
    public final byte[] b() {
        return this.f27879a;
    }

    @Override // com.google.android.datatransport.cct.internal.ExperimentIds
    public final byte[] c() {
        return this.f27880b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExperimentIds)) {
            return false;
        }
        ExperimentIds experimentIds = (ExperimentIds) obj;
        boolean z = experimentIds instanceof AutoValue_ExperimentIds;
        if (Arrays.equals(this.f27879a, z ? ((AutoValue_ExperimentIds) experimentIds).f27879a : experimentIds.b())) {
            return Arrays.equals(this.f27880b, z ? ((AutoValue_ExperimentIds) experimentIds).f27880b : experimentIds.c());
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f27880b) ^ ((Arrays.hashCode(this.f27879a) ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f27879a) + ", encryptedBlob=" + Arrays.toString(this.f27880b) + "}";
    }
}
