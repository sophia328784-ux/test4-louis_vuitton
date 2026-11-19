package androidx.datastore.preferences.protobuf;

import androidx.datastore.core.UncloseableOutputStream;
import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder;
import defpackage.bm;
import defpackage.r81;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractMessageLite<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite {
    protected int memoizedHashCode = 0;

    public static abstract class Builder<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite.Builder {
        @Override // 
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public abstract GeneratedMessageLite.Builder clone();
    }

    public interface InternalOneOfEnum {
    }

    public static void i(Iterable iterable, List list) {
        Charset charset = Internal.f12947a;
        if (!(iterable instanceof LazyStringList)) {
            if (iterable instanceof PrimitiveNonBoxingCollection) {
                list.addAll((Collection) iterable);
                return;
            }
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
            }
            int size = list.size();
            for (Object obj : iterable) {
                if (obj == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    r81.d(str);
                    return;
                }
                list.add(obj);
            }
            return;
        }
        List listK0 = ((LazyStringList) iterable).k0();
        LazyStringList lazyStringList = (LazyStringList) list;
        int size3 = list.size();
        for (Object obj2 : listK0) {
            if (obj2 == null) {
                String str2 = "Element at index " + (lazyStringList.size() - size3) + " is null.";
                for (int size4 = lazyStringList.size() - 1; size4 >= size3; size4--) {
                    lazyStringList.remove(size4);
                }
                r81.d(str2);
                return;
            }
            if (obj2 instanceof ByteString) {
                lazyStringList.a1();
            } else if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                ByteString.h(0, bArr.length, bArr);
                lazyStringList.a1();
            } else {
                lazyStringList.add((String) obj2);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public final ByteString e() {
        try {
            int iK = ((GeneratedMessageLite) this).k(null);
            ByteString byteString = ByteString.f12895c;
            ByteString.CodedBuilder codedBuilder = new ByteString.CodedBuilder(iK);
            CodedOutputStream codedOutputStream = codedBuilder.f12900a;
            ((GeneratedMessageLite) this).h(codedOutputStream);
            CodedOutputStream.ArrayEncoder arrayEncoder = (CodedOutputStream.ArrayEncoder) codedOutputStream;
            if (arrayEncoder.f12925e - arrayEncoder.f12926f == 0) {
                return new ByteString.LiteralByteString(codedBuilder.f12901b);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            bm.h("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen).", e2);
            return null;
        }
    }

    public int j() {
        throw new UnsupportedOperationException();
    }

    public int k(Schema schema) {
        int iJ = j();
        if (iJ != -1) {
            return iJ;
        }
        int iE = schema.e(this);
        l(iE);
        return iE;
    }

    public void l(int i2) {
        throw new UnsupportedOperationException();
    }

    public final void m(UncloseableOutputStream uncloseableOutputStream) throws IOException {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) this;
        int iK = generatedMessageLite.k(null);
        Logger logger = CodedOutputStream.f12920b;
        if (iK > 4096) {
            iK = 4096;
        }
        CodedOutputStream.OutputStreamEncoder outputStreamEncoder = new CodedOutputStream.OutputStreamEncoder(uncloseableOutputStream, iK);
        generatedMessageLite.h(outputStreamEncoder);
        if (outputStreamEncoder.f12924f > 0) {
            outputStreamEncoder.J();
        }
    }
}
