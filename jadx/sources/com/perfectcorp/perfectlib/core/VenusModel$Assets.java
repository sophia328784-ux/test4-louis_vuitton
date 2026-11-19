package com.perfectcorp.perfectlib.core;

import android.content.Context;
import android.text.TextUtils;
import com.perfectcorp.common.android.Apk;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.az;
import defpackage.k7;
import defpackage.n00;
import defpackage.r81;
import defpackage.tr;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes3.dex */
public final class VenusModel$Assets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40095c;

    public VenusModel$Assets(String str, String str2, String str3) {
        Preconditions.g(!TextUtils.isEmpty(str), "prefix can't be null or empty");
        Preconditions.g(!TextUtils.isEmpty(str2), "postfix can't be null or empty");
        Preconditions.g(!TextUtils.isEmpty(str3), "versionedName can't be null or empty");
        this.f40093a = str;
        this.f40094b = str2;
        this.f40095c = str3;
    }

    public static void a(Context context, VenusModel$Assets venusModel$Assets) throws IOException {
        File[] fileArrListFiles;
        if (TextUtils.isEmpty(venusModel$Assets.f40093a) || TextUtils.isEmpty(venusModel$Assets.f40094b) || (fileArrListFiles = new File(c(context)).listFiles(new k7(venusModel$Assets, 1))) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (!file.delete() && file.exists()) {
                az.y(file.getAbsolutePath(), "Delete file failed. file=");
                return;
            }
        }
    }

    public static void b(Context context, String str, File file) throws Throwable {
        File parentFile = file.getParentFile();
        Objects.requireNonNull(parentFile);
        if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
            az.y(parentFile.getAbsolutePath(), "Could not create directory at ");
            return;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            try {
                Apk.b(context, str, file);
                return;
            } catch (ZipException unused) {
            }
        }
        Apk.b(context, str, file);
    }

    public static String c(Context context) {
        return context.getFilesDir().getAbsolutePath() + "/mcsdk/makeup_model/";
    }

    public static String d(Context context, String str, VenusModel$Assets venusModel$Assets) throws Throwable {
        Context applicationContext = context.getApplicationContext();
        StringBuilder sbT = n00.t(str);
        String str2 = venusModel$Assets.f40095c;
        sbT.append(str2);
        String string = sbT.toString();
        String str3 = c(applicationContext) + str2;
        File file = new File(str3);
        if (file.exists()) {
            return str3;
        }
        try {
            a(applicationContext, venusModel$Assets);
            b(applicationContext, string, file);
            return str3;
        } catch (IOException e2) {
            r81.g(tr.g("Cannot copy model. fileName=", str2), e2);
            return null;
        }
    }

    public static String e(Context context, String str, VenusModel$Assets venusModel$Assets) throws Throwable {
        Context applicationContext = context.getApplicationContext();
        StringBuilder sbT = n00.t(str);
        String str2 = venusModel$Assets.f40095c;
        sbT.append(str2);
        String string = sbT.toString();
        String str3 = c(applicationContext) + str2;
        File file = new File(str3);
        if (file.exists()) {
            return str3;
        }
        try {
            a(applicationContext, venusModel$Assets);
            try {
                InputStream inputStreamC = Apk.c(applicationContext, string);
                if (inputStreamC != null) {
                    inputStreamC.close();
                }
                b(applicationContext, string, file);
                return str3;
            } catch (Throwable unused) {
                Log.g(3, "VenusModel", "Doesn't have model ".concat(string));
                return null;
            }
        } catch (IOException e2) {
            r81.g(tr.g("Cannot copy model. fileName=", str2), e2);
            return null;
        }
    }

    public VenusModel$Assets(String str) {
        Preconditions.g(!TextUtils.isEmpty(str), "versionedName can't be null or empty");
        this.f40093a = "";
        this.f40094b = "";
        this.f40095c = str;
    }
}
