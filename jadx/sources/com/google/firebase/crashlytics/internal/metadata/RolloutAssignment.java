package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Encodable
public abstract class RolloutAssignment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DataEncoder f34632a;

    static {
        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
        AutoRolloutAssignmentEncoder$RolloutAssignmentEncoder autoRolloutAssignmentEncoder$RolloutAssignmentEncoder = AutoRolloutAssignmentEncoder$RolloutAssignmentEncoder.f34593a;
        jsonDataEncoderBuilder.b(RolloutAssignment.class, autoRolloutAssignmentEncoder$RolloutAssignmentEncoder);
        jsonDataEncoderBuilder.b(AutoValue_RolloutAssignment.class, autoRolloutAssignmentEncoder$RolloutAssignmentEncoder);
        f34632a = jsonDataEncoderBuilder.a();
    }

    public static RolloutAssignment a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String string = jSONObject.getString("rolloutId");
        String string2 = jSONObject.getString("parameterKey");
        String string3 = jSONObject.getString("parameterValue");
        String string4 = jSONObject.getString("variantId");
        long j2 = jSONObject.getLong("templateVersion");
        if (string3.length() > 256) {
            string3 = string3.substring(0, 256);
        }
        return new AutoValue_RolloutAssignment(j2, string, string2, string3, string4);
    }

    public abstract String b();

    public abstract String c();

    public abstract String d();

    public abstract long e();

    public abstract String f();
}
