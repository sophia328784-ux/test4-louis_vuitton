package com.vuitton.android.presentation.ar;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/ar/PermissionResultEvent;", "", "", "requestCode", "", "grantResults", "<init>", "(I[I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PermissionResultEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f50554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f50555b;

    public PermissionResultEvent(int i2, int[] iArr) {
        iArr.getClass();
        this.f50554a = i2;
        this.f50555b = iArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!PermissionResultEvent.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        PermissionResultEvent permissionResultEvent = (PermissionResultEvent) obj;
        return this.f50554a == permissionResultEvent.f50554a && Arrays.equals(this.f50555b, permissionResultEvent.f50555b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f50555b) + (this.f50554a * 31);
    }

    public final String toString() {
        return "PermissionResultEvent(requestCode=" + this.f50554a + ", grantResults=" + Arrays.toString(this.f50555b) + ")";
    }
}
