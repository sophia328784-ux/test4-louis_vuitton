package com.google.accompanist.permissions;

import defpackage.d21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/google/accompanist/permissions/PermissionStatus;", "", "Denied", "Granted", "Lcom/google/accompanist/permissions/PermissionStatus$Denied;", "Lcom/google/accompanist/permissions/PermissionStatus$Granted;", "permissions_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PermissionStatus {

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/accompanist/permissions/PermissionStatus$Denied;", "Lcom/google/accompanist/permissions/PermissionStatus;", "", "shouldShowRationale", "<init>", "(Z)V", "permissions_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Denied implements PermissionStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f27776a;

        public Denied(boolean z) {
            this.f27776a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Denied) && this.f27776a == ((Denied) obj).f27776a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f27776a);
        }

        public final String toString() {
            return d21.q(new StringBuilder("Denied(shouldShowRationale="), this.f27776a, ')');
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/accompanist/permissions/PermissionStatus$Granted;", "Lcom/google/accompanist/permissions/PermissionStatus;", "permissions_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Granted implements PermissionStatus {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Granted f27777a = new Granted();
    }
}
