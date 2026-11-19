package org.teleal.common.xml;

import org.xml.sax.SAXParseException;

/* JADX INFO: loaded from: classes5.dex */
public class ParserException extends Exception {
    public ParserException(SAXParseException sAXParseException) {
        super("(Line/Column: " + sAXParseException.getLineNumber() + ":" + sAXParseException.getColumnNumber() + ") " + sAXParseException.getMessage());
    }

    public ParserException(String str) {
        super(str);
    }

    public ParserException(String str, Throwable th) {
        super(str, th);
    }

    public ParserException(Throwable th) {
        super(th);
    }

    public ParserException() {
    }
}
