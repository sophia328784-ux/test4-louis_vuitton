package com.sightcall.pratik.mappers;

import com.sightcall.pratik.KeyEvent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toKeyEvent", "Lcom/sightcall/pratik/KeyEvent;", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class KeyEventMappersKt {
    public static final KeyEvent toKeyEvent(int i2) {
        if (i2 == 4) {
            return KeyEvent.BackButton.INSTANCE;
        }
        return null;
    }
}
