package com.airbnb.lottie.parser.moshi;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ void a(Object obj, StringBuilder sb) {
        sb.append(" at path ");
        sb.append(obj);
        throw new JsonDataException(sb.toString());
    }
}
