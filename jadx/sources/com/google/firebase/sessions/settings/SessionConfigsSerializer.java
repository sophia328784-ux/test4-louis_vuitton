package com.google.firebase.sessions.settings;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.UncloseableOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;", "Landroidx/datastore/core/Serializer;", "Lcom/google/firebase/sessions/settings/SessionConfigs;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionConfigsSerializer implements Serializer<SessionConfigs> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SessionConfigsSerializer f35592a = new SessionConfigsSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SessionConfigs f35593b = new SessionConfigs(null, null, null, null, null);

    @Override // androidx.datastore.core.Serializer
    public final Object a() {
        return f35593b;
    }

    @Override // androidx.datastore.core.Serializer
    public final Unit b(Object obj, UncloseableOutputStream uncloseableOutputStream) throws IOException {
        uncloseableOutputStream.f12845b.write(StringsKt.o(Json.d.c(SessionConfigs.INSTANCE.serializer(), (SessionConfigs) obj)));
        return Unit.f71739a;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object c(FileInputStream fileInputStream) throws CorruptionException {
        try {
            Json.Default r2 = Json.d;
            String str = new String(ByteStreamsKt.b(fileInputStream), Charsets.UTF_8);
            r2.getClass();
            return (SessionConfigs) r2.b(SessionConfigs.INSTANCE.serializer(), str);
        } catch (Exception e2) {
            throw new CorruptionException("Cannot parse session configs", e2);
        }
    }
}
