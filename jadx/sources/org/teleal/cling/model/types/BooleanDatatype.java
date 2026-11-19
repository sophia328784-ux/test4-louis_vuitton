package org.teleal.cling.model.types;

import com.linkplay.medialib.ContentTree;

/* JADX INFO: loaded from: classes5.dex */
public class BooleanDatatype extends AbstractDatatype<Boolean> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final String a(Object obj) {
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            return "";
        }
        return bool.booleanValue() ? "1" : ContentTree.ROOT_ID;
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        if (str.equals("1") || str.toUpperCase().equals("YES") || str.toUpperCase().equals("TRUE")) {
            return Boolean.TRUE;
        }
        if (str.equals(ContentTree.ROOT_ID) || str.toUpperCase().equals("NO") || str.toUpperCase().equals("FALSE")) {
            return Boolean.FALSE;
        }
        throw new InvalidValueException("Invalid boolean value string: ".concat(str));
    }
}
