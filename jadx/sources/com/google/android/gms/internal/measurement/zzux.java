package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.system.Os;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzux {
    public static IOException a(zzru zzruVar, Uri uri, IOException iOException, String str) {
        try {
            zzsr zzsrVar = new zzsr();
            zzsrVar.f30912a = true;
            File file = (File) zzruVar.a(uri, zzsrVar);
            if (!file.exists()) {
                return b(file, iOException, str);
            }
            if (file.isFile()) {
                if (file.canRead()) {
                    return file.canWrite() ? b(file, iOException, str) : b(file, iOException, str);
                }
                return file.canWrite() ? b(file, iOException, str) : b(file, iOException, str);
            }
            if (file.canRead()) {
                return file.canWrite() ? b(file, iOException, str) : b(file, iOException, str);
            }
            return file.canWrite() ? b(file, iOException, str) : b(file, iOException, str);
        } catch (IOException unused) {
            return new IOException(iOException);
        }
    }

    public static IOException b(File file, IOException iOException, String str) {
        File parentFile = file.getParentFile();
        if (parentFile != null && parentFile.exists()) {
            if (parentFile.isDirectory()) {
                if (parentFile.canRead()) {
                    return parentFile.canWrite() ? c(file, iOException, str) : c(file, iOException, str);
                }
                return parentFile.canWrite() ? c(file, iOException, str) : c(file, iOException, str);
            }
            if (parentFile.canRead()) {
                return parentFile.canWrite() ? c(file, iOException, str) : c(file, iOException, str);
            }
            return parentFile.canWrite() ? c(file, iOException, str) : c(file, iOException, str);
        }
        return c(file, iOException, str);
    }

    public static IOException c(File file, IOException iOException, String str) {
        String strConcat;
        try {
            Locale locale = Locale.US;
            String str2 = " canonical[" + file.getCanonicalPath() + "] freeSpace[" + file.getFreeSpace() + "] protoName[" + str + "]";
            StringBuilder sb = new StringBuilder(str2.length() + 16);
            sb.append("Inoperable file:");
            sb.append(str2);
            strConcat = sb.toString();
            try {
                String str3 = " mode[" + Os.stat(file.getCanonicalPath()).st_mode + "]";
                StringBuilder sb2 = new StringBuilder(strConcat.length() + str3.length());
                sb2.append(strConcat);
                sb2.append(str3);
                strConcat = sb2.toString();
            } catch (Exception unused) {
            }
        } catch (IOException unused2) {
            strConcat = "Inoperable file:".concat(" failed");
        }
        return new IOException(strConcat, iOException);
    }
}
