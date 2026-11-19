package com.clj.fastble.utils;

import com.clj.fastble.bluetooth.BleBluetooth;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BleLruHashMap<K, V> extends LinkedHashMap<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25311b;

    public BleLruHashMap(int i2) {
        super(((int) Math.ceil(((double) i2) / 0.75d)) + 1, 0.75f, true);
        this.f25311b = i2;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        int size = size();
        int i2 = this.f25311b;
        if (size > i2 && (entry.getValue() instanceof BleBluetooth)) {
            ((BleBluetooth) entry.getValue()).c();
        }
        return size() > i2;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<K, V> entry : entrySet()) {
            sb.append(String.format("%s:%s ", entry.getKey(), entry.getValue()));
        }
        return sb.toString();
    }
}
