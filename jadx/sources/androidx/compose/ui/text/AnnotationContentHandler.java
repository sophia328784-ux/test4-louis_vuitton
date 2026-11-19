package androidx.compose.ui.text;

import android.text.Editable;
import java.util.ArrayList;
import kotlin.Metadata;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/AnnotationContentHandler;", "Lorg/xml/sax/ContentHandler;", "contentHandler", "Landroid/text/Editable;", "output", "<init>", "(Lorg/xml/sax/ContentHandler;Landroid/text/Editable;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnnotationContentHandler implements ContentHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentHandler f10432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Editable f10433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10434c;
    public BulletSpanWithLevel d;

    public AnnotationContentHandler(ContentHandler contentHandler, Editable editable) {
        this.f10432a = contentHandler;
        this.f10433b = editable;
    }

    public final void a() {
        BulletSpanWithLevel bulletSpanWithLevel = this.d;
        if (bulletSpanWithLevel != null) {
            int i2 = bulletSpanWithLevel.f10447c;
            Editable editable = this.f10433b;
            editable.setSpan(bulletSpanWithLevel, i2, editable.length(), 33);
        }
        this.d = null;
    }

    @Override // org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i2, int i3) throws SAXException {
        this.f10432a.characters(cArr, i2, i3);
    }

    @Override // org.xml.sax.ContentHandler
    public final void endDocument() throws SAXException {
        this.f10432a.endDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) throws SAXException {
        if (str2 != null) {
            int iHashCode = str2.hashCode();
            if (iHashCode != -1555043537) {
                if (iHashCode != 3453) {
                    if (iHashCode == 3735 && str2.equals("ul")) {
                        a();
                        this.f10434c--;
                        return;
                    }
                } else if (str2.equals(com.batch.android.b.b.f22945e)) {
                    a();
                    return;
                }
            } else if (str2.equals("annotation")) {
                Editable editable = this.f10433b;
                Object[] spans = editable.getSpans(0, editable.length(), AnnotationSpan.class);
                ArrayList arrayList = new ArrayList();
                for (Object obj : spans) {
                    if (editable.getSpanFlags((AnnotationSpan) obj) == 17) {
                        arrayList.add(obj);
                    }
                }
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    AnnotationSpan annotationSpan = (AnnotationSpan) arrayList.get(i2);
                    int spanStart = editable.getSpanStart(annotationSpan);
                    int length = editable.length();
                    editable.removeSpan(annotationSpan);
                    if (spanStart != length) {
                        editable.setSpan(annotationSpan, spanStart, length, 33);
                    }
                }
                return;
            }
        }
        this.f10432a.endElement(str, str2, str3);
    }

    @Override // org.xml.sax.ContentHandler
    public final void endPrefixMapping(String str) throws SAXException {
        this.f10432a.endPrefixMapping(str);
    }

    @Override // org.xml.sax.ContentHandler
    public final void ignorableWhitespace(char[] cArr, int i2, int i3) throws SAXException {
        this.f10432a.ignorableWhitespace(cArr, i2, i3);
    }

    @Override // org.xml.sax.ContentHandler
    public final void processingInstruction(String str, String str2) throws SAXException {
        this.f10432a.processingInstruction(str, str2);
    }

    @Override // org.xml.sax.ContentHandler
    public final void setDocumentLocator(Locator locator) {
        this.f10432a.setDocumentLocator(locator);
    }

    @Override // org.xml.sax.ContentHandler
    public final void skippedEntity(String str) throws SAXException {
        this.f10432a.skippedEntity(str);
    }

    @Override // org.xml.sax.ContentHandler
    public final void startDocument() throws SAXException {
        this.f10432a.startDocument();
    }

    @Override // org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str2 != null) {
            int iHashCode = str2.hashCode();
            Editable editable = this.f10433b;
            if (iHashCode != -1555043537) {
                if (iHashCode != 3453) {
                    if (iHashCode == 3735 && str2.equals("ul")) {
                        a();
                        this.f10434c++;
                        return;
                    }
                } else if (str2.equals(com.batch.android.b.b.f22945e)) {
                    a();
                    Bullet.f10437h.getClass();
                    this.d = new BulletSpanWithLevel(Bullet.f10439j, this.f10434c, editable.length());
                    return;
                }
            } else if (str2.equals("annotation")) {
                if (attributes != null) {
                    int length = attributes.getLength();
                    for (int i2 = 0; i2 < length; i2++) {
                        String localName = attributes.getLocalName(i2);
                        if (localName == null) {
                            localName = "";
                        }
                        String value = attributes.getValue(i2);
                        String str4 = value != null ? value : "";
                        if (localName.length() > 0 && str4.length() > 0) {
                            int length2 = editable.length();
                            editable.setSpan(new AnnotationSpan(localName, str4), length2, length2, 17);
                        }
                    }
                    return;
                }
                return;
            }
        }
        this.f10432a.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.ContentHandler
    public final void startPrefixMapping(String str, String str2) throws SAXException {
        this.f10432a.startPrefixMapping(str, str2);
    }
}
