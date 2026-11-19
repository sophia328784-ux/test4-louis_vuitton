package com.google.android.gms.tagmanager;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzd extends zzg {
    @Override // com.google.android.gms.tagmanager.zzh
    public final void N(String str, HashMap map) {
        CustomTagProvider customTagProvider;
        HashMap map2 = zze.f32083c;
        if (map2.containsKey(str)) {
            customTagProvider = (CustomTagProvider) map2.get(str);
        } else {
            customTagProvider = (CustomTagProvider) zze.a(CustomTagProvider.class, str);
            map2.put(str, customTagProvider);
        }
        if (customTagProvider != null) {
            customTagProvider.execute();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzh
    public final String f2(String str, HashMap map) {
        CustomVariableProvider customVariableProvider;
        HashMap map2 = zze.d;
        if (map2.containsKey(str)) {
            customVariableProvider = (CustomVariableProvider) map2.get(str);
        } else {
            customVariableProvider = (CustomVariableProvider) zze.a(CustomVariableProvider.class, str);
            map2.put(str, customVariableProvider);
        }
        if (customVariableProvider != null) {
            return customVariableProvider.getValue();
        }
        return null;
    }
}
