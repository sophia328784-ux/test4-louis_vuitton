package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
abstract class UnknownFieldSchema<T, B> {
    public abstract UnknownFieldSetLite a(Object obj);

    public final boolean b(int i2, Reader reader, Object obj) throws InvalidProtocolBufferException {
        int tag = reader.getTag();
        int i3 = tag >>> 3;
        int i4 = tag & 7;
        if (i4 == 0) {
            ((UnknownFieldSetLite) obj).c(i3 << 3, Long.valueOf(reader.h()));
            return true;
        }
        if (i4 == 1) {
            ((UnknownFieldSetLite) obj).c((i3 << 3) | 1, Long.valueOf(reader.a()));
            return true;
        }
        if (i4 == 2) {
            ((UnknownFieldSetLite) obj).c((i3 << 3) | 2, reader.b());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw InvalidProtocolBufferException.b();
            }
            ((UnknownFieldSetLite) obj).c(5 | (i3 << 3), Integer.valueOf(reader.c()));
            return true;
        }
        UnknownFieldSetLite unknownFieldSetLite = new UnknownFieldSetLite(0, new int[8], new Object[8], true);
        int i5 = i3 << 3;
        int i6 = i5 | 4;
        int i7 = i2 + 1;
        if (i7 >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (reader.f() != Integer.MAX_VALUE && b(i7, reader, unknownFieldSetLite)) {
        }
        if (i6 != reader.getTag()) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
        if (unknownFieldSetLite.f13016e) {
            unknownFieldSetLite.f13016e = false;
        }
        ((UnknownFieldSetLite) obj).c(i5 | 3, unknownFieldSetLite);
        return true;
    }

    public abstract void c(Object obj, Object obj2);
}
