package com.perfectcorp.thirdparty.com.google.gson.internal;

import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class z {
    public static JsonElement a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        boolean z;
        try {
            try {
                aVar.w();
                z = false;
                try {
                    return (JsonElement) com.perfectcorp.thirdparty.com.google.gson.internal.bind.p.f42512f.a(aVar);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return JsonNull.f42453b;
                    }
                    throw new com.perfectcorp.thirdparty.com.google.gson.j(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (com.perfectcorp.thirdparty.com.google.gson.stream.e e4) {
            throw new com.perfectcorp.thirdparty.com.google.gson.j(e4);
        } catch (IOException e5) {
            throw new com.perfectcorp.thirdparty.com.google.gson.h(e5);
        } catch (NumberFormatException e6) {
            throw new com.perfectcorp.thirdparty.com.google.gson.j(e6);
        }
    }

    public static void b(JsonElement jsonElement, com.perfectcorp.thirdparty.com.google.gson.stream.d dVar) {
        com.perfectcorp.thirdparty.com.google.gson.internal.bind.p.f42512f.b(dVar, jsonElement);
    }
}
