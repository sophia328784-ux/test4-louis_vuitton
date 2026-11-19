package com.perfectcorp.uma;

import java.util.Calendar;

/* JADX INFO: loaded from: classes3.dex */
final enum e extends d.a {
    public e() {
        super("DAILY", 0);
    }

    @Override // com.perfectcorp.uma.d.a
    public final void a(Calendar calendar) {
        calendar.set(14, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(10, 0);
    }
}
