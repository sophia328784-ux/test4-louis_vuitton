package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import java.io.ByteArrayInputStream;
import javax.xml.parsers.SAXParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class d extends a {
    public d(String str) {
        super(str);
    }

    @Override // com.android.wiimu.model.cling_callback.playqueue.browsequeue.a
    public f a() {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.f22359a.getBytes("utf-8"));
            SAXParserFactory.newInstance().newSAXParser().parse(byteArrayInputStream, this);
            byteArrayInputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.f22360b;
    }
}
