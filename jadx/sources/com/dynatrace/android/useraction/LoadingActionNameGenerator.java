package com.dynatrace.android.useraction;

import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
public class LoadingActionNameGenerator implements ActionNameCustomizer {
    @Override // com.dynatrace.android.useraction.ActionNameCustomizer
    public final String a(String str) {
        int iLastIndexOf = str.lastIndexOf(FileUtils.HIDDEN_PREFIX);
        if (iLastIndexOf >= 0) {
            str = str.substring(iLastIndexOf + 1);
        }
        return "Loading ".concat(str);
    }
}
