package com.perfectcorp.common.network;

import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
final class m implements Comparator<Runnable> {
    @Override // java.util.Comparator
    public final int compare(Runnable runnable, Runnable runnable2) {
        long jG = ((j) runnable).g();
        long jG2 = ((j) runnable2).g();
        if (jG < jG2) {
            return -1;
        }
        return jG > jG2 ? 1 : 0;
    }
}
