package com.batch.android.i;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {
    public b() {
        super(System.currentTimeMillis());
    }

    @Override // com.batch.android.i.a
    public long a() {
        return this.f23480b - ((long) Calendar.getInstance().getTimeZone().getOffset(this.f23480b));
    }

    public b(long j2) {
        super(j2);
    }
}
