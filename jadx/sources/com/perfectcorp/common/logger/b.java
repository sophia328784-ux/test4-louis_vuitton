package com.perfectcorp.common.logger;

import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class b extends ThreadLocal<SimpleDateFormat> {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ SimpleDateFormat initialValue() {
        return new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss", Locale.US);
    }
}
