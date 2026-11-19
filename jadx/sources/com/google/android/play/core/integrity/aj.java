package com.google.android.play.core.integrity;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.play.integrity.internal.d;
import com.google.android.play.integrity.internal.f;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class aj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.play.integrity.internal.s f33289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f33290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f33291c;
    public final com.google.android.play.integrity.internal.ae d;

    public aj(Context context, com.google.android.play.integrity.internal.s sVar, i iVar) {
        com.google.android.play.integrity.internal.s sVar2;
        String strEncodeToString;
        this.f33290b = context.getPackageName();
        this.f33289a = sVar;
        this.f33291c = iVar;
        com.google.android.play.integrity.internal.s sVar3 = com.google.android.play.integrity.internal.ai.f33324a;
        try {
            if (context.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled) {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures;
                if (signatureArr == null || (signatureArr.length) == 0) {
                    sVar2 = sVar;
                    com.google.android.play.integrity.internal.s sVar4 = com.google.android.play.integrity.internal.ai.f33324a;
                    Object[] objArr = new Object[0];
                    sVar4.getClass();
                    if (Log.isLoggable("PlayCore", 5)) {
                        com.google.android.play.integrity.internal.s.b(sVar4.f33333a, "Phonesky package is not signed -- possibly self-built package. Could not verify.", objArr);
                    }
                } else {
                    for (Signature signature : signatureArr) {
                        byte[] byteArray = signature.toByteArray();
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                            messageDigest.update(byteArray);
                            strEncodeToString = Base64.encodeToString(messageDigest.digest(), 11);
                        } catch (NoSuchAlgorithmException unused) {
                            strEncodeToString = "";
                        }
                        if (!"8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(strEncodeToString)) {
                            String str = Build.TAGS;
                            if ((!str.contains("dev-keys") && !str.contains("test-keys")) || !"GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(strEncodeToString)) {
                            }
                        }
                        this.d = new com.google.android.play.integrity.internal.ae(context, sVar, "IntegrityService", ak.f33292a, ae.f33281a, null);
                        return;
                    }
                    sVar2 = sVar;
                }
            } else {
                sVar2 = sVar;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        Object[] objArr2 = new Object[0];
        sVar2.getClass();
        if (Log.isLoggable("PlayCore", 6)) {
            com.google.android.play.integrity.internal.s.b(sVar2.f33333a, "Phonesky is not installed.", objArr2);
        }
        this.d = null;
    }

    public static Bundle a(aj ajVar, byte[] bArr, Long l) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", ajVar.f33290b);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 3);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList<f> arrayList = new ArrayList();
        d.a(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (f fVar : arrayList) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("event_type", fVar.a());
            bundle2.putLong("event_timestamp", fVar.b());
            arrayList2.add(bundle2);
        }
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(arrayList2));
        return bundle;
    }
}
