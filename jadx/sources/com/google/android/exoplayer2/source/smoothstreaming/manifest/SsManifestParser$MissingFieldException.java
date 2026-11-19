package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import com.google.android.exoplayer2.ParserException;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class SsManifestParser$MissingFieldException extends ParserException {
    public SsManifestParser$MissingFieldException(String str) {
        super(tr.g("Missing required field: ", str), true, 4);
    }
}
