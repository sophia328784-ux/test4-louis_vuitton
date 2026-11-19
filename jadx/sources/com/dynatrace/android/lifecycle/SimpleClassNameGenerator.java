package com.dynatrace.android.lifecycle;

import com.dynatrace.android.useraction.ActionNameCustomizer;
import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleClassNameGenerator implements ActionNameCustomizer {
    @Override // com.dynatrace.android.useraction.ActionNameCustomizer
    public final String a(String str) {
        int iLastIndexOf = str.lastIndexOf(FileUtils.HIDDEN_PREFIX);
        return iLastIndexOf < 0 ? str : str.substring(iLastIndexOf + 1);
    }
}
