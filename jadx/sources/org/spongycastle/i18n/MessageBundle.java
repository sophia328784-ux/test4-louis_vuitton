package org.spongycastle.i18n;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class MessageBundle extends TextBundle {
    public MessageBundle(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public MessageBundle(String str, String str2, String str3) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3);
    }

    public MessageBundle(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }

    public MessageBundle(String str, String str2, String str3, Object[] objArr) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3, objArr);
    }
}
