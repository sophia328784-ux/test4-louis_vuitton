package com.sightcall.universal.guest;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.model.Session;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Calls {

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    String id;

    @Json(name = "type")
    final String type = "calls";

    public enum Action {
        WAIT,
        CALL
    }

    public static class Attributes {

        @Json(name = "next-action")
        Action nextAction;

        @Json(name = "pincode")
        String pincode;

        @Json(name = "state")
        State state;

        @Json(name = "suffix")
        String suffix;

        @Json(name = "uid")
        String uid;
    }

    public enum State {
        CONNECTED
    }

    private Calls(Attributes attributes) {
        this.attributes = attributes;
    }

    public static Calls ready(Session session) {
        Attributes attributes = new Attributes();
        attributes.state = State.CONNECTED;
        attributes.pincode = session.config.pin();
        attributes.suffix = session.config.suffix();
        return new Calls(attributes);
    }

    public Action nextAction() {
        return this.attributes.nextAction;
    }
}
