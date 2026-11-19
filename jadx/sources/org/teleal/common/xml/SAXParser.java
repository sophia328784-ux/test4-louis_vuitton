package org.teleal.common.xml;

import defpackage.x1;
import java.net.URI;
import java.util.logging.Logger;
import org.xml.sax.Attributes;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

/* JADX INFO: loaded from: classes5.dex */
public class SAXParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78650b = Logger.getLogger(SAXParser.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XMLReader f78651a;

    static {
        URI.create("http://www.w3.org/2001/xml.xsd");
        Thread.currentThread().getContextClassLoader().getResource("org/teleal/common/schemas/xml.xsd");
    }

    public SAXParser(DefaultHandler defaultHandler) {
        try {
            XMLReader xMLReaderCreateXMLReader = XMLReaderFactory.createXMLReader();
            this.f78651a = xMLReaderCreateXMLReader;
            if (defaultHandler != null) {
                xMLReaderCreateXMLReader.setContentHandler(defaultHandler);
            }
        } catch (Exception e2) {
            x1.m(e2);
            throw null;
        }
    }

    public SAXParser() {
        this(null);
    }

    public static class Handler<I> extends DefaultHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SAXParser f78652a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f78653b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Handler f78654c;
        public StringBuilder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Attributes f78655e;

        public Handler(I i2, SAXParser sAXParser, Handler handler) {
            this.d = new StringBuilder();
            this.f78653b = i2;
            this.f78652a = sAXParser;
            this.f78654c = handler;
            if (sAXParser != null) {
                sAXParser.f78651a.setContentHandler(this);
            }
        }

        public boolean a(String str, String str2) {
            return false;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void characters(char[] cArr, int i2, int i3) {
            this.d.append(cArr, i2, i3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            Handler handler;
            if (!a(str, str2)) {
                SAXParser.f78650b.finer(getClass().getSimpleName() + " ending: " + str2);
                return;
            }
            SAXParser.f78650b.finer(getClass().getSimpleName() + ": last element, switching to parent: " + str2);
            SAXParser sAXParser = this.f78652a;
            if (sAXParser == null || (handler = this.f78654c) == null) {
                return;
            }
            sAXParser.f78651a.setContentHandler(handler);
            this.f78655e = null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            this.d = new StringBuilder();
            this.f78655e = attributes;
            SAXParser.f78650b.finer(getClass().getSimpleName() + " starting: " + str2);
        }

        public Handler(I i2, SAXParser sAXParser) {
            this(i2, sAXParser, null);
        }

        public Handler(I i2) {
            this(i2, null, null);
        }

        public Handler(I i2, Handler handler) {
            this(i2, handler.f78652a, handler);
        }
    }
}
