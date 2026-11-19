package com.perfectcorp.common.logger;

import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class c extends ThreadLocal<SimpleDateFormat> {
    @Override // java.lang.ThreadLocal
    public final /* synthetic */ SimpleDateFormat initialValue() {
        return new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);
    }
}
