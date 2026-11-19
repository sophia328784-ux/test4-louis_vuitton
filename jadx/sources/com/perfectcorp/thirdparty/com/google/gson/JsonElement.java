package com.perfectcorp.thirdparty.com.google.gson;

import com.perfectcorp.thirdparty.com.google.gson.internal.z;
import defpackage.a61;
import defpackage.md;
import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes3.dex */
public abstract class JsonElement {
    public float f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public abstract JsonElement h();

    public int i() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final JsonObject m() {
        if (this instanceof JsonObject) {
            return (JsonObject) this;
        }
        a61.q(this, "Not a JSON Object: ");
        return null;
    }

    public String n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.perfectcorp.thirdparty.com.google.gson.stream.d dVar = new com.perfectcorp.thirdparty.com.google.gson.stream.d(stringWriter);
            dVar.f42580f = true;
            z.b(this, dVar);
            return stringWriter.toString();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }
}
