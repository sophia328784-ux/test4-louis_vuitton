package com.linecorp.linesdk.internal.nwclient;

import com.linecorp.linesdk.internal.nwclient.core.JsonResponseParser;
import com.linecorp.linesdk.internal.nwclient.core.ResponseDataParser;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonToObjectBaseResponseParser<T> implements ResponseDataParser<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JsonResponseParser f36216a;

    public JsonToObjectBaseResponseParser() {
        this(new JsonResponseParser());
    }

    @Override // com.linecorp.linesdk.internal.nwclient.core.ResponseDataParser
    public final Object a(InputStream inputStream) throws IOException {
        try {
            JsonResponseParser jsonResponseParser = this.f36216a;
            jsonResponseParser.getClass();
            try {
                return b(new JSONObject(jsonResponseParser.f36241a.a(inputStream)));
            } catch (JSONException e2) {
                throw new IOException(e2);
            }
        } catch (JSONException e3) {
            throw new IOException(e3);
        }
    }

    public abstract Object b(JSONObject jSONObject);

    public JsonToObjectBaseResponseParser(String str) {
        this(new JsonResponseParser(str));
    }

    public JsonToObjectBaseResponseParser(JsonResponseParser jsonResponseParser) {
        this.f36216a = jsonResponseParser;
    }
}
