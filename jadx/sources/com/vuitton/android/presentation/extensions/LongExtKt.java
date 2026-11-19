package com.vuitton.android.presentation.extensions;

import com.linkplay.medialib.ContentTree;
import defpackage.d21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LongExtKt {
    public static final String a(long j2) {
        return String.valueOf((Math.abs(j2) / 1000) / 60);
    }

    public static final String b(long j2) {
        return String.valueOf((Math.abs(j2) / 1000) % 60);
    }

    public static final String c(long j2) {
        long jAbs = Math.abs(j2) / 1000;
        long j3 = jAbs / 60;
        long j4 = jAbs % 60;
        return d21.k(j2 < 0 ? "- " : "", j3 < 10 ? d21.g(j3, ContentTree.ROOT_ID) : String.valueOf(j3), ":", j4 < 10 ? d21.g(j4, ContentTree.ROOT_ID) : String.valueOf(j4));
    }
}
