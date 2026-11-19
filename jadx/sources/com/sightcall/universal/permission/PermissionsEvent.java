package com.sightcall.universal.permission;

import defpackage.d21;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class PermissionsEvent {
    private final int[] grantResults;
    private final boolean neverAskAgain;
    private final String[] permissions;
    private final boolean[] shouldShowRationales;

    public PermissionsEvent(String[] strArr, int[] iArr, boolean[] zArr, boolean z) {
        this.permissions = strArr;
        this.grantResults = iArr;
        this.shouldShowRationales = zArr;
        this.neverAskAgain = z;
    }

    public boolean granted() {
        for (int i2 : this.grantResults) {
            if (i2 == -1) {
                return false;
            }
        }
        return true;
    }

    public boolean neverAskAgain() {
        return this.neverAskAgain;
    }

    public boolean[] shouldShowRationales() {
        return this.shouldShowRationales;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PermissionsEvent{permissions=");
        sb.append(Arrays.toString(this.permissions));
        sb.append(", grantResults=");
        sb.append(Arrays.toString(this.grantResults));
        sb.append(", shouldShowRationales=");
        sb.append(Arrays.toString(this.shouldShowRationales));
        sb.append(", neverAskAgain=");
        return d21.q(sb, this.neverAskAgain, '}');
    }
}
