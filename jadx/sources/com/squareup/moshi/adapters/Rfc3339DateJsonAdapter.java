package com.squareup.moshi.adapters;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public final class Rfc3339DateJsonAdapter extends JsonAdapter<Date> {
    @Override // com.squareup.moshi.JsonAdapter
    public synchronized Date fromJson(JsonReader jsonReader) throws IOException {
        if (jsonReader.z() == JsonReader.Token.NULL) {
            jsonReader.u();
            return null;
        }
        return Iso8601Utils.d(jsonReader.w());
    }

    @Override // com.squareup.moshi.JsonAdapter
    public synchronized void toJson(JsonWriter jsonWriter, Date date) throws IOException {
        try {
            if (date == null) {
                jsonWriter.r();
            } else {
                jsonWriter.C(Iso8601Utils.b(date));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
