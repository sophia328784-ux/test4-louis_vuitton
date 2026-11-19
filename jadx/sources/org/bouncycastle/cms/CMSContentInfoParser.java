package org.bouncycastle.cms;

import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1StreamParser;
import org.bouncycastle.asn1.cms.ContentInfoParser;

/* JADX INFO: loaded from: classes3.dex */
public class CMSContentInfoParser {
    protected ContentInfoParser _contentInfo;
    protected InputStream _data;

    public CMSContentInfoParser(InputStream inputStream) throws CMSException {
        this._data = inputStream;
        try {
            ASN1SequenceParser aSN1SequenceParser = (ASN1SequenceParser) new ASN1StreamParser(inputStream).readObject();
            if (aSN1SequenceParser == null) {
                throw new CMSException("No content found.");
            }
            this._contentInfo = new ContentInfoParser(aSN1SequenceParser);
        } catch (IOException e2) {
            md.l("IOException reading content.", e2);
            throw null;
        } catch (ClassCastException e3) {
            md.l("Unexpected object reading content.", e3);
            throw null;
        }
    }

    public void close() throws IOException {
        this._data.close();
    }
}
