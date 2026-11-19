package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.internal.Serialization;

/* JADX INFO: loaded from: classes2.dex */
public abstract class KeySerializer<KeyT extends Key, SerializationT extends Serialization> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f33985a;

    public interface KeySerializationFunction<KeyT extends Key, SerializationT extends Serialization> {
    }

    public KeySerializer(Class cls) {
        this.f33985a = cls;
    }

    public static KeySerializer a(final KeySerializationFunction keySerializationFunction, Class cls) {
        return new KeySerializer<Key, Serialization>(cls) { // from class: com.google.crypto.tink.internal.KeySerializer.1
        };
    }
}
