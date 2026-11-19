package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class UnrecognizedInputFormatException extends ParserException {
    public UnrecognizedInputFormatException(String str, Uri uri) {
        super(str, false, 1);
    }
}
