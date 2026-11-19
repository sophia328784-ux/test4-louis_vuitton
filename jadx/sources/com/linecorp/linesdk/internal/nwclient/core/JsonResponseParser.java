package com.linecorp.linesdk.internal.nwclient.core;

import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JsonResponseParser implements ResponseDataParser<JSONObject> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResponseParser f36241a;

    public JsonResponseParser() {
        this.f36241a = new StringResponseParser();
    }

    @Override // com.linecorp.linesdk.internal.nwclient.core.ResponseDataParser
    public final Object a(InputStream inputStream) throws IOException {
        try {
            return new JSONObject(this.f36241a.a(inputStream));
        } catch (JSONException e2) {
            throw new IOException(e2);
        }
    }

    public JsonResponseParser(String str) {
        this.f36241a = new StringResponseParser(str);
    }
}
