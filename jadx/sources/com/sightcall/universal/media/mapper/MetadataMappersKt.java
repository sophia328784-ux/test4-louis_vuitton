package com.sightcall.universal.media.mapper;

import com.google.gson.internal.bind.util.ISO8601Utils;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\u0002¨\u0006\u0005"}, d2 = {"toMedaDataFormat", "", "Lcom/sightcall/universal/media/Metadata;", "createJsonFileNameFormat", "metadata", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MetadataMappersKt {
    private static final String createJsonFileNameFormat(com.sightcall.universal.media.Metadata metadata) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String lowerCase = metadata.origin().name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        jSONObject.put("origin", lowerCase);
        jSONObject.put("timestamp", ISO8601Utils.format(new Date(metadata.timestamp())));
        jSONObject.put("callDuration", metadata.timecode() / 1000);
        jSONObject.put("number", metadata.number() + 1);
        jSONObject.put("latitude", metadata.latitude());
        jSONObject.put("longitude", metadata.longitude());
        String string = jSONObject.toString();
        string.getClass();
        return string;
    }

    public static final String toMedaDataFormat(com.sightcall.universal.media.Metadata metadata) {
        metadata.getClass();
        return createJsonFileNameFormat(metadata);
    }
}
