package org.squirrelframework.foundation.fsm;

import defpackage.r81;
import defpackage.x1;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.squirrelframework.foundation.util.Base64Coder;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ObjectSerializableSupport {
    public static <T> T deserialize(String str) {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64Coder.decode(str)));
            try {
                return (T) objectInputStream.readObject();
            } finally {
                objectInputStream.close();
            }
        } catch (IOException e2) {
            r81.g("Data serialization failed.", e2);
            return null;
        } catch (ClassNotFoundException e3) {
            x1.m(e3);
            return null;
        }
    }

    public static String serialize(Object obj) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(obj);
                return new String(Base64Coder.encode(byteArrayOutputStream.toByteArray()));
            } finally {
                objectOutputStream.close();
            }
        } catch (IOException e2) {
            r81.g("Data serialization failed.", e2);
            return null;
        }
    }
}
