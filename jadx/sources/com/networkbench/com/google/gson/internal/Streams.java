package com.networkbench.com.google.gson.internal;

import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonIOException;
import com.networkbench.com.google.gson.JsonNull;
import com.networkbench.com.google.gson.JsonParseException;
import com.networkbench.com.google.gson.JsonSyntaxException;
import com.networkbench.com.google.gson.internal.a.m;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonWriter;
import com.networkbench.com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public final class Streams {
    public static JsonElement parse(JsonReader jsonReader) throws JsonParseException {
        boolean z;
        try {
            try {
                jsonReader.peek();
                z = false;
                try {
                    return m.P.read(jsonReader);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return JsonNull.INSTANCE;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (MalformedJsonException e4) {
            throw new JsonSyntaxException(e4);
        } catch (IOException e5) {
            throw new JsonIOException(e5);
        } catch (NumberFormatException e6) {
            throw new JsonSyntaxException(e6);
        }
    }

    public static void write(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        m.P.write(jsonWriter, jsonElement);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    public static final class a extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Appendable f38627a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0110a f38628b;

        /* JADX INFO: renamed from: com.networkbench.com.google.gson.internal.Streams$a$a, reason: collision with other inner class name */
        public static class C0110a implements CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            char[] f38629a;

            @Override // java.lang.CharSequence
            public char charAt(int i2) {
                return this.f38629a[i2];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f38629a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i2, int i3) {
                return new String(this.f38629a, i2, i3 - i2);
            }
        }

        private a(Appendable appendable) {
            this.f38628b = new C0110a();
            this.f38627a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) throws IOException {
            C0110a c0110a = this.f38628b;
            c0110a.f38629a = cArr;
            this.f38627a.append(c0110a, i2, i3 + i2);
        }

        @Override // java.io.Writer
        public void write(int i2) throws IOException {
            this.f38627a.append((char) i2);
        }
    }
}
