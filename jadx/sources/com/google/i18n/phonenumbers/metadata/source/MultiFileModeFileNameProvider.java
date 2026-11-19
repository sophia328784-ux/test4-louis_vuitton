package com.google.i18n.phonenumbers.metadata.source;

import defpackage.d21;
import defpackage.md;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiFileModeFileNameProvider implements PhoneMetadataFileNameProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35673a;

    public MultiFileModeFileNameProvider(String str) {
        this.f35673a = d21.j(str, "_");
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.PhoneMetadataFileNameProvider
    public final String a(Object obj) {
        String string = obj.toString();
        if (string != null && string.length() != 0) {
            int length = string.length();
            int iCharCount = 0;
            while (iCharCount < length) {
                int iCodePointAt = string.codePointAt(iCharCount);
                if (Character.isLetterOrDigit(iCodePointAt)) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
            }
            return this.f35673a + obj;
        }
        md.n(tr.g("Invalid key: ", string));
        return null;
    }
}
