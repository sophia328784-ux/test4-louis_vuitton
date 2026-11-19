package com.appsflyer.sdk_base.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import defpackage.p;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0004*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\f\u0010\b\u001a\u00020\u0004*\u00020\tH\u0007¨\u0006\n"}, d2 = {"getVersionCode", "", "Landroid/content/Context;", "packageName", "", "getVersionName", "signature", "Landroid/content/pm/PackageManager;", "bytesToUpperHexString", "", "sdk_base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AndroidExtensionsKt {
    public static final String bytesToUpperHexString(byte[] bArr) {
        bArr.getClass();
        return ArraysKt.G(bArr, "", new p(29), 30);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence bytesToUpperHexString$lambda$0(byte b2) {
        return String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
    }

    public static final long getVersionCode(Context context, String str) throws PackageManager.NameNotFoundException {
        context.getClass();
        str.getClass();
        try {
            return context.getPackageManager().getPackageInfo(str, 0).getLongVersionCode();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static final String getVersionName(Context context, String str) throws PackageManager.NameNotFoundException {
        context.getClass();
        str.getClass();
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static final String signature(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, CertificateException {
        Signature[] apkContentsSigners;
        packageManager.getClass();
        str.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(134217728L));
            packageInfo.getClass();
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo == null || (apkContentsSigners = signingInfo.getApkContentsSigners()) == null) {
                return null;
            }
        } else {
            SigningInfo signingInfo2 = packageManager.getPackageInfo(str, 134217728).signingInfo;
            if (signingInfo2 == null || (apkContentsSigners = signingInfo2.getApkContentsSigners()) == null) {
                return null;
            }
        }
        if (apkContentsSigners.length == 0) {
            return null;
        }
        Certificate certificateGenerateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(apkContentsSigners[0].toByteArray()));
        certificateGenerateCertificate.getClass();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        messageDigest.update(((X509Certificate) certificateGenerateCertificate).getEncoded());
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return bytesToUpperHexString(bArrDigest);
    }
}
