package com.google.android.exoplayer2;

import defpackage.a;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class ParserException extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f28185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28186c;

    public ParserException(String str, boolean z, int i2) {
        super(str, null);
        this.f28185b = z;
        this.f28186c = i2;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.getMessage());
        sb.append("{contentIsMalformed=");
        sb.append(this.f28185b);
        sb.append(", dataType=");
        return a.i(this.f28186c, "}", sb);
    }
}
