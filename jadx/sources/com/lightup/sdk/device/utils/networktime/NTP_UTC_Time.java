package com.lightup.sdk.device.utils.networktime;

import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
class NTP_UTC_Time {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f36051a;

    public static long a(int i2, byte[] bArr) {
        int i3 = bArr[i2];
        int i4 = bArr[i2 + 1];
        int i5 = bArr[i2 + 2];
        int i6 = bArr[i2 + 3];
        if ((i3 & 128) == 128) {
            i3 = (i3 & CertificateBody.profileType) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & CertificateBody.profileType) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & CertificateBody.profileType) + 128;
        }
        if ((i6 & 128) == 128) {
            i6 = (i6 & CertificateBody.profileType) + 128;
        }
        return (((long) i3) << 24) + (((long) i4) << 16) + (((long) i5) << 8) + ((long) i6);
    }
}
