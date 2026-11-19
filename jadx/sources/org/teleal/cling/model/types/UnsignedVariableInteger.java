package org.teleal.cling.model.types;

import com.linkplay.medialib.ContentTree;
import java.util.logging.Logger;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UnsignedVariableInteger {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78533b = Logger.getLogger(UnsignedVariableInteger.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f78534a;

    public enum Bits {
        EIGHT(255),
        SIXTEEN(65535),
        TWENTYFOUR(16777215),
        THIRTYTWO(BodyPartID.bodyIdMax);

        private long maxValue;

        Bits(long j2) {
            this.maxValue = j2;
        }

        public final long a() {
            return this.maxValue;
        }
    }

    public UnsignedVariableInteger(String str) throws NumberFormatException {
        if (str.startsWith("-")) {
            f78533b.warning("Invalid negative integer value '" + str + "', assuming value 0!");
            str = ContentTree.ROOT_ID;
        }
        b(Long.parseLong(str));
    }

    public abstract Bits a();

    public final void b(long j2) {
        if (j2 >= 0 && j2 <= a().a()) {
            this.f78534a = j2;
            return;
        }
        throw new NumberFormatException("Value must be between 0 and " + a().a() + ": " + j2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78534a == ((UnsignedVariableInteger) obj).f78534a;
    }

    public final int hashCode() {
        long j2 = this.f78534a;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public final String toString() {
        return Long.toString(this.f78534a);
    }

    public UnsignedVariableInteger(long j2) throws NumberFormatException {
        b(j2);
    }
}
