package com.google.crypto.tink.shaded.protobuf;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
abstract class UnknownFieldSchema<T, B> {
    public abstract UnknownFieldSetLite a(Object obj);

    public final boolean b(Object obj, Reader reader) throws InvalidProtocolBufferException {
        int tag = reader.getTag();
        int i2 = tag >>> 3;
        int i3 = tag & 7;
        if (i3 == 0) {
            ((UnknownFieldSetLite) obj).d(i2 << 3, Long.valueOf(reader.h()));
            return true;
        }
        if (i3 == 1) {
            ((UnknownFieldSetLite) obj).d((i2 << 3) | 1, Long.valueOf(reader.a()));
            return true;
        }
        if (i3 == 2) {
            ((UnknownFieldSetLite) obj).d((i2 << 3) | 2, reader.b());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw InvalidProtocolBufferException.c();
            }
            ((UnknownFieldSetLite) obj).d(5 | (i2 << 3), Integer.valueOf(reader.c()));
            return true;
        }
        UnknownFieldSetLite unknownFieldSetLiteC = UnknownFieldSetLite.c();
        int i4 = i2 << 3;
        int i5 = i4 | 4;
        while (reader.f() != Integer.MAX_VALUE && b(unknownFieldSetLiteC, reader)) {
        }
        if (i5 != reader.getTag()) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
        unknownFieldSetLiteC.f34261e = false;
        ((UnknownFieldSetLite) obj).d(i4 | 3, unknownFieldSetLiteC);
        return true;
    }

    public abstract void c(Object obj, Object obj2);
}
