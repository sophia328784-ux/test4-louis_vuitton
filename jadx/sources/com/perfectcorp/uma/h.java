package com.perfectcorp.uma;

import java.util.Calendar;

/* JADX INFO: loaded from: classes3.dex */
final enum h extends d.a {
    public h() {
        super("QUARTERLY", 3);
    }

    @Override // com.perfectcorp.uma.d.a
    public final void a(Calendar calendar) {
        calendar.set(2, (calendar.get(2) / 3) * 3);
    }
}
