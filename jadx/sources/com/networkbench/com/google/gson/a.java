package com.networkbench.com.google.gson;

import defpackage.a61;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
final class a implements JsonDeserializer<Date>, JsonSerializer<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f38540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f38541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateFormat f38542c;

    public a(DateFormat dateFormat, DateFormat dateFormat2) {
        this.f38540a = dateFormat;
        this.f38541b = dateFormat2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.f38542c = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // com.networkbench.com.google.gson.JsonDeserializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!(jsonElement instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }
        Date dateA = a(jsonElement);
        if (type == Date.class) {
            return dateA;
        }
        if (type == Timestamp.class) {
            return new Timestamp(dateA.getTime());
        }
        if (type == java.sql.Date.class) {
            return new java.sql.Date(dateA.getTime());
        }
        a61.m(a.class, " cannot deserialize to ", type);
        return null;
    }

    public String toString() {
        return "a(" + this.f38541b.getClass().getSimpleName() + ')';
    }

    public a(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    public a(int i2) {
        this(DateFormat.getDateInstance(i2, Locale.US), DateFormat.getDateInstance(i2));
    }

    public a(int i2, int i3) {
        this(DateFormat.getDateTimeInstance(i2, i3, Locale.US), DateFormat.getDateTimeInstance(i2, i3));
    }

    public a() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    @Override // com.networkbench.com.google.gson.JsonSerializer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.f38541b) {
            jsonPrimitive = new JsonPrimitive(this.f38540a.format(date));
        }
        return jsonPrimitive;
    }

    private Date a(JsonElement jsonElement) {
        Date date;
        synchronized (this.f38541b) {
            try {
                try {
                    try {
                        date = this.f38541b.parse(jsonElement.getAsString());
                    } catch (ParseException unused) {
                        return this.f38540a.parse(jsonElement.getAsString());
                    }
                } catch (ParseException e2) {
                    throw new JsonSyntaxException(jsonElement.getAsString(), e2);
                }
            } catch (ParseException unused2) {
                return this.f38542c.parse(jsonElement.getAsString());
            }
        }
        return date;
    }
}
