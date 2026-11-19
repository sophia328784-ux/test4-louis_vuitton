package com.google.firebase.sessions;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.UncloseableOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/google/firebase/sessions/SessionDataSerializer;", "Landroidx/datastore/core/Serializer;", "Lcom/google/firebase/sessions/SessionData;", "Lcom/google/firebase/sessions/SessionGenerator;", "sessionGenerator", "<init>", "(Lcom/google/firebase/sessions/SessionGenerator;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionDataSerializer implements Serializer<SessionData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionGenerator f35464a;

    @Inject
    public SessionDataSerializer(SessionGenerator sessionGenerator) {
        sessionGenerator.getClass();
        this.f35464a = sessionGenerator;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object a() {
        return new SessionData(this.f35464a.a(null), (Time) null, (Map) null, 6, (DefaultConstructorMarker) null);
    }

    @Override // androidx.datastore.core.Serializer
    public final Unit b(Object obj, UncloseableOutputStream uncloseableOutputStream) throws IOException {
        uncloseableOutputStream.f12845b.write(StringsKt.o(Json.d.c(SessionData.INSTANCE.serializer(), (SessionData) obj)));
        return Unit.f71739a;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object c(FileInputStream fileInputStream) throws CorruptionException {
        try {
            Json.Default r2 = Json.d;
            String str = new String(ByteStreamsKt.b(fileInputStream), Charsets.UTF_8);
            r2.getClass();
            return (SessionData) r2.b(SessionData.INSTANCE.serializer(), str);
        } catch (Exception e2) {
            throw new CorruptionException("Cannot parse session data", e2);
        }
    }
}
