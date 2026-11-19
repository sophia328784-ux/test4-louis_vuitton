package com.kakao.sdk.common.json;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/common/json/KakaoDateTypeAdapter;", "Lcom/google/gson/TypeAdapter;", "Ljava/util/Date;", "<init>", "()V", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class KakaoDateTypeAdapter extends TypeAdapter<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f35870a;

    public KakaoDateTypeAdapter() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        this.f35870a = simpleDateFormat;
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public final Date read2(JsonReader jsonReader) throws IOException {
        if ((jsonReader != null ? jsonReader.peek() : null) == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        if ((jsonReader != null ? jsonReader.peek() : null) == JsonToken.STRING) {
            return this.f35870a.parse(jsonReader.nextString());
        }
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    public final void write(JsonWriter jsonWriter, Date date) throws IOException {
        Date date2 = date;
        if (date2 == null) {
            if (jsonWriter != null) {
                jsonWriter.nullValue();
            }
        } else if (jsonWriter != null) {
            jsonWriter.value(this.f35870a.format(date2));
        }
    }
}
