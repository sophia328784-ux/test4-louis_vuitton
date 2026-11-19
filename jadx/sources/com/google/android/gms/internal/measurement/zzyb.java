package com.google.android.gms.internal.measurement;

import io.jsonwebtoken.JwtParser;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
final class zzyb extends zzyc {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31086e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31084b = "com/google/android/libraries/phenotype/client/Phlogger";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31085c = "logInternal";
    public final String d = "Phlogger.java";

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String a() {
        return this.f31084b.replace('/', JwtParser.SEPARATOR_CHAR);
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String b() {
        return this.f31085c;
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final int c() {
        return 44;
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String d() {
        char c2 = File.separatorChar;
        String str = this.d;
        return str.substring(str.lastIndexOf(c2) + 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzyc
    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzyb) {
            zzyb zzybVar = (zzyb) obj;
            if (this.f31085c.equals(zzybVar.f31085c)) {
                String str = zzybVar.f31084b;
                String str2 = this.f31084b;
                if (str2 != str) {
                    if (str2.length() == str.length()) {
                        for (int i2 = 0; i2 < str2.length(); i2++) {
                            char cCharAt = str2.charAt(i2);
                            char cCharAt2 = str.charAt(i2);
                            if (cCharAt == cCharAt2 || ((cCharAt & (-2)) == 46 && (cCharAt ^ cCharAt2) == 1)) {
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f31086e;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = ((this.f31085c.hashCode() + 4867) * 31) + 44;
        this.f31086e = iHashCode;
        return iHashCode;
    }
}
