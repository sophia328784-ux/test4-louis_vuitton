package com.perfectcorp.uma;

import java.util.Calendar;

/* JADX INFO: loaded from: classes3.dex */
final enum f extends d.a {
    public f() {
        super("WEEKLY", 1);
    }

    @Override // com.perfectcorp.uma.d.a
    public final void a(Calendar calendar) {
        calendar.set(7, 1);
    }
}
