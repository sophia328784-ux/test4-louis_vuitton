package com.perfectcorp.thirdparty.com.google.gson;

import com.perfectcorp.thirdparty.com.google.gson.internal.z;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonParser {
    public static JsonElement a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        boolean z = aVar.f42559c;
        aVar.f42559c = true;
        try {
            try {
                try {
                    JsonElement jsonElementA = z.a(aVar);
                    aVar.f42559c = z;
                    return jsonElementA;
                } catch (StackOverflowError e2) {
                    throw new JsonParseException("Failed parsing JSON source: " + aVar + " to Json", e2);
                }
            } catch (OutOfMemoryError e3) {
                throw new JsonParseException("Failed parsing JSON source: " + aVar + " to Json", e3);
            }
        } catch (Throwable th) {
            aVar.f42559c = z;
            throw th;
        }
    }

    public static JsonElement b(FileReader fileReader) {
        try {
            com.perfectcorp.thirdparty.com.google.gson.stream.a aVar = new com.perfectcorp.thirdparty.com.google.gson.stream.a(fileReader);
            JsonElement jsonElementA = a(aVar);
            if (!(jsonElementA instanceof JsonNull) && aVar.w() != com.perfectcorp.thirdparty.com.google.gson.stream.c.f42573j) {
                throw new j("Did not consume the entire document.");
            }
            return jsonElementA;
        } catch (com.perfectcorp.thirdparty.com.google.gson.stream.e e2) {
            throw new j(e2);
        } catch (IOException e3) {
            throw new h(e3);
        } catch (NumberFormatException e4) {
            throw new j(e4);
        }
    }
}
