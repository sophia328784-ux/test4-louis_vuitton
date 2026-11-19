package kotlin.collections.builders;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.n00;
import io.jsonwebtoken.JwtParser;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0000\u0018\u0000 \f2\u00020\u0001:\u0001\rB\u001b\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0016¢\u0006\u0004\b\u0006\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/collections/builders/SerializedCollection;", "Ljava/io/Externalizable;", "", "collection", "", "tag", "<init>", "(Ljava/util/Collection;I)V", "()V", "", "readResolve", "()Ljava/lang/Object;", NBSSpanMetricUnit.Day, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SerializedCollection implements Externalizable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Collection f71824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71825c;

    public SerializedCollection(Collection<?> collection, int i2) {
        collection.getClass();
        this.f71824b = collection;
        this.f71825c = i2;
    }

    private final Object readResolve() {
        return this.f71824b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Collection collectionR;
        objectInput.getClass();
        byte b2 = objectInput.readByte();
        int i2 = b2 & 1;
        if ((b2 & (-2)) != 0) {
            throw new InvalidObjectException(n00.q("Unsupported flags value: ", b2, JwtParser.SEPARATOR_CHAR));
        }
        int i3 = objectInput.readInt();
        if (i3 < 0) {
            throw new InvalidObjectException(n00.q("Illegal size value: ", i3, JwtParser.SEPARATOR_CHAR));
        }
        int i4 = 0;
        if (i2 == 0) {
            ListBuilder listBuilder = new ListBuilder(i3);
            while (i4 < i3) {
                listBuilder.add(objectInput.readObject());
                i4++;
            }
            collectionR = CollectionsKt.r(listBuilder);
        } else {
            if (i2 != 1) {
                throw new InvalidObjectException(n00.q("Unsupported collection type tag: ", i2, JwtParser.SEPARATOR_CHAR));
            }
            SetBuilder setBuilder = new SetBuilder(i3);
            while (i4 < i3) {
                setBuilder.add(objectInput.readObject());
                i4++;
            }
            collectionR = SetsKt.a(setBuilder);
        }
        this.f71824b = collectionR;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.getClass();
        objectOutput.writeByte(this.f71825c);
        objectOutput.writeInt(this.f71824b.size());
        Iterator it = this.f71824b.iterator();
        while (it.hasNext()) {
            objectOutput.writeObject(it.next());
        }
    }

    public SerializedCollection() {
        this(EmptyList.f71768b, 0);
    }
}
