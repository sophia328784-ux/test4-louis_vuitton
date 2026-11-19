package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class StringDatatype extends AbstractDatatype<String> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        return str;
    }
}
