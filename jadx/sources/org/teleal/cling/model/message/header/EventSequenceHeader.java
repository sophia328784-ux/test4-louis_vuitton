package org.teleal.cling.model.message.header;

import com.linkplay.medialib.ContentTree;
import defpackage.v40;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class EventSequenceHeader extends UpnpHeader<UnsignedIntegerFourBytes> {
    public EventSequenceHeader(long j2) {
        this.f78433a = new UnsignedIntegerFourBytes(j2);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final String a() {
        return Long.toString(((UnsignedIntegerFourBytes) this.f78433a).f78534a);
    }

    @Override // org.teleal.cling.model.message.header.UpnpHeader
    public final void b(String str) {
        if (!ContentTree.ROOT_ID.equals(str)) {
            while (str.startsWith(ContentTree.ROOT_ID)) {
                str = str.substring(1);
            }
        }
        try {
            this.f78433a = new UnsignedIntegerFourBytes(str);
        } catch (NumberFormatException e2) {
            v40.h(e2.getMessage(), "Invalid event sequence, ");
        }
    }

    public EventSequenceHeader() {
    }
}
