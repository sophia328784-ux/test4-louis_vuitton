package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzht extends zzdk {
    public static final String c(String str, int i2, HashSet hashSet) {
        if (i2 == 1) {
            try {
                return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }
        if (i2 != 2) {
            return str;
        }
        String strReplace = str.replace("\\", "\\\\");
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String string = ((Character) it.next()).toString();
            strReplace = strReplace.replace(string, "\\".concat(String.valueOf(string)));
        }
        return strReplace;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        zzkk zzkkVar2;
        int length = zzkkVarArr.length;
        boolean z = true;
        Preconditions.a(length > 0);
        zzkk zzkkVar3 = zzkkVarArr[0];
        zzkk zzkkVar4 = length > 1 ? zzkkVarArr[1] : zzko.f30172h;
        int i2 = 2;
        String strD = (length <= 2 || (zzkkVar2 = zzkkVarArr[2]) == zzko.f30172h) ? "" : zzdj.d(zzkkVar2);
        String strD2 = "=";
        if (length > 3 && (zzkkVar = zzkkVarArr[3]) != zzko.f30172h) {
            strD2 = zzdj.d(zzkkVar);
        }
        HashSet hashSet = null;
        if (zzkkVar4 != zzko.f30172h) {
            Preconditions.a(zzkkVar4 instanceof zzkv);
            if (ConfigurationName.DOWNLOAD_PLUGIN_URL.equals(zzkkVar4.c())) {
                i2 = 1;
            } else {
                if (!"backslash".equals(zzkkVar4.c())) {
                    return new zzkv("");
                }
                hashSet = new HashSet();
                for (int i3 = 0; i3 < strD.length(); i3++) {
                    hashSet.add(Character.valueOf(strD.charAt(i3)));
                }
                for (int i4 = 0; i4 < strD2.length(); i4++) {
                    hashSet.add(Character.valueOf(strD2.charAt(i4)));
                }
                hashSet.remove('\\');
            }
        } else {
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        if (zzkkVar3 instanceof zzkr) {
            for (zzkk zzkkVar5 : ((zzkr) zzkkVar3).f30180b) {
                if (!z) {
                    sb.append(strD);
                }
                sb.append(c(zzdj.d(zzkkVar5), i2, hashSet));
                z = false;
            }
        } else if (zzkkVar3 instanceof zzks) {
            Map map = ((zzks) zzkkVar3).f30163a;
            for (String str : map.keySet()) {
                if (!z) {
                    sb.append(strD);
                }
                String strD3 = zzdj.d((zzkk) map.get(str));
                sb.append(c(str, i2, hashSet));
                sb.append(strD2);
                sb.append(c(strD3, i2, hashSet));
                z = false;
            }
        } else {
            sb.append(c(zzdj.d(zzkkVar3), i2, hashSet));
        }
        return new zzkv(sb.toString());
    }
}
