package com.google.firebase.encoders;

import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public interface DataEncoder {
    void a(Writer writer, Object obj);

    String encode(Object obj);
}
