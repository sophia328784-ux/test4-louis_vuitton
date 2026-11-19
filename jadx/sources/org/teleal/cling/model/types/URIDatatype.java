package org.teleal.cling.model.types;

import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes5.dex */
public class URIDatatype extends AbstractDatatype<URI> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e2) {
            throw new InvalidValueException(e2.getMessage(), e2);
        }
    }
}
