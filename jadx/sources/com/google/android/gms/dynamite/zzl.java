package com.google.android.gms.dynamite;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
final class zzl implements DynamiteModule.VersionPolicy {
    /* JADX WARN: Code duplicated, block: B:7:0x001b A[DONT_INVERT, PHI: r3
      0x001b: PHI (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:3:0x0014, B:5:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        selectionResult.f29396a = iVersions.b(context, str);
        int i2 = 1;
        int iA = iVersions.a(context, str, true);
        selectionResult.f29397b = iA;
        int i3 = selectionResult.f29396a;
        if (i3 == 0) {
            i3 = 0;
            if (iA == 0) {
                i2 = 0;
            } else if (iA < i3) {
                i2 = -1;
            }
        } else if (iA < i3) {
            i2 = -1;
        }
        selectionResult.f29398c = i2;
        return selectionResult;
    }
}
