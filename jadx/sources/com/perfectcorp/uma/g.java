package com.perfectcorp.uma;

import java.util.Calendar;

/* JADX INFO: loaded from: classes3.dex */
final enum g extends d.a {
    public g() {
        super("MONTHLY", 2);
    }

    @Override // com.perfectcorp.uma.d.a
    public final void a(Calendar calendar) {
        calendar.set(5, 1);
    }
}
