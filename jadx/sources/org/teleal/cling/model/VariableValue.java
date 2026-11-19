package org.teleal.cling.model;

import org.teleal.cling.model.types.Datatype;
import org.teleal.cling.model.types.InvalidValueException;

/* JADX INFO: loaded from: classes5.dex */
public class VariableValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Datatype f78393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f78394b;

    public VariableValue(Datatype datatype, Object obj) throws InvalidValueException {
        this.f78393a = datatype;
        obj = obj instanceof String ? datatype.e((String) obj) : obj;
        this.f78394b = obj;
        if (ModelUtil.f78377a) {
            return;
        }
        if (!datatype.b(obj)) {
            throw new InvalidValueException("Invalid value for " + datatype + ": " + obj);
        }
        String string = toString();
        int iCharCount = 0;
        while (iCharCount < string.length()) {
            int iCodePointAt = string.codePointAt(iCharCount);
            if (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 13 && ((iCodePointAt < 32 || iCodePointAt > 55295) && ((iCodePointAt < 57344 || iCodePointAt > 65533) && (iCodePointAt < 65536 || iCodePointAt > 1114111)))) {
                throw new InvalidValueException("Invalid characters in string value (XML 1.0, section 2.2) produced by " + this.f78393a + "");
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    public final String toString() {
        return this.f78393a.a(this.f78394b);
    }
}
